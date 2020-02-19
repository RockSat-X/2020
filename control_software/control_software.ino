// RockSat-X 2020
// file: control_software.ino
// maintainer: Spencer Buebel (stbuebel@vt.edu)

// library for serial TTL camera
#include <SoftwareSerial.h> // for some reason, doesn't compile without...
#include <Adafruit_VC0706.h>

// Arduino Mega code to read from sensors, send data to Pi,
// and extrend/retract panels when necessary based on interrupts.

// struct holding accel data (after conversion)
struct Accel_Data {
  uint8_t x;
  uint8_t y;
  uint8_t z;
};

// straight forward - struct holding power data
struct Panel_Power_Data {
  double voltage;
  double current;
};

// Function stubs
void initSensors();
uint16_t readTempSensor();
Accel_Data readAccelData();
uint8_t readRangeFinder();
bool takeTTLPicture();
Panel_Power_Data readPanelData();
void turnStepper(bool dir);
void sensorDataToPi(uint16_t temp, Accel_Data accel, uint8_t range, Panel_Power_Data panel_power);
void TTLImageToPi();

// interrupt service routine
void timer_event_IRQ(void);

#define NORMAL      0
#define EXTEND      1
#define RETRACT     2
#define SHUTDOWN    3

// this will be our one global variable to hold our state (so we can update in ISR)
volatile uint8_t mission_state = NORMAL;

// camera handle will also be global so we can call in loop
Adafruit_VC0706 cam = Adafruit_VC0706(&Serial1);

void setup() {
  // Initialize communication with all sensors
  initSensors();

  // TODO: turn on interrupt handler for flight event pins
  // be connected to flight event lines

  // start serial link with RPi - this is crucial for data transfer
  Serial.begin(115200);
}



void loop() {
  
  // read all the sensor data
  uint16_t temp = readTempSensor();
  Accel_Data accel = readAccelData();
  uint8_t range = readRangeFinder();
  Panel_Power_Data panel_power = readPanelData();

  // Now, we need to put all this data into a serial frame which we will send to the Pi
  sensorDataToPi(temp, accel, range, panel_power);
  
  if (!takeTTLPicture())
  {
    // ERROR, have to figure out how to handle...
  }
  
  TTLImageToPi();

  // command the stepper to move if necessary
  if (mission_state != NORMAL)
  {
    if (mission_state == EXTEND)
      turnStepper(0);
    else
      turnStepper(1); // command RETRACT
  }
}  

void sensorDataToPi(uint16_t temp, Accel_Data accel, uint8_t range, Panel_Power_Data panel_power)
{
  // tentative packet format: temp, a_x, a_y, a_z, range, volt, curr, \n
  char buffer[100];
  int volt_dec = 1000*(panel_power.voltage - (int)panel_power.voltage);
  int curr_dec = 1000*(panel_power.current - (int)panel_power.current);
  sprintf(buffer, "%d, %d, %d, %d, %d, %0d.%d, %0d.%d\n", temp, accel.x, accel.y, accel.z,
            range, (int)panel_power.voltage, volt_dec, (int)panel_power.current, curr_dec);
  
  Serial.write(buffer);
}


void TTLImageToPi()
{
  Serial.println("SNAP");
  uint16_t jpglen = cam.frameLength();

  // Read all the data up to # bytes!
  while (jpglen > 0) {
    // read 32 bytes at a time;
    uint8_t *buffer;
    uint8_t bytesToRead = min(64, jpglen); // don't overshoot if we're done
    buffer = cam.readPicture(bytesToRead); // lib function to keep reading
    
    for (int i = 0; i < bytesToRead; i ++)
    {
      // this was the hack necessary to align the data properly, anything
      // less than 16 should be represented as 0D (not just D) full byte.
      if (buffer[i] < 16)
      {
        Serial.print("0");
      }
      Serial.print(buffer[i], HEX);
    }
    Serial.println("");
    
    // update how much we have left
    jpglen -= bytesToRead;
  }
  Serial.println("DONE");
}


// only thing we have to do here, we will read image in the sending part
bool takeTTLPicture()
{
  cam.begin();
  delay(500); // to be safe, we can afford it
  return cam.takePicture();
}


uint16_t readTempSensor()
{
  // analog read - use formula to convert
  return 0;
}

Accel_Data readAccelData()
{
  // analog read?
  struct Accel_Data accel;
  accel.x = 0;
  accel.y = 0;
  accel.z = 0;
  return accel;
}

uint8_t readRangeFinder()
{
  // i2c maybe?
  uint8_t range = 0;
  return range;
}

Panel_Power_Data readPanelData()
{
  // analog reads
  Panel_Power_Data power;
  power.voltage = 0.0;
  power.current = 0.0;

  return power;
}

void initSensors()
{
  // do all the necessary initialization here...
  // probably won't be anything for the analog stuff, but I2C might have some
  
  // init the TTL serial camera
  if (cam.begin())
    Serial.println("TTL Serial Camera Found");
  else
    Serial.println("No TTL Serial Camera");
  cam.setImageSize(VC0706_160x120); // other options: VC0706_320x240, VC0706_640x480
}

void turnStepper(bool dir)
{
  
}

void timer_event_IRQ(void)
{
  // will have to enable another interrupt that determine when to stop
  
}
