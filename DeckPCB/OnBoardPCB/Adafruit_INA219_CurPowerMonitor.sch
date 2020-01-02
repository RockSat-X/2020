EESchema Schematic File Version 4
LIBS:Adafruit_INA219_CurPowerMonitor-cache
EELAYER 30 0
EELAYER END
$Descr User 12296 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Wire Line
	3800 2200 3800 1900
Text Label 3800 2200 0    10   ~ 0
VCC
Wire Wire Line
	4100 2200 4100 1900
Text Label 4100 2200 0    10   ~ 0
VCC
Wire Wire Line
	4600 1900 4600 2000
Wire Wire Line
	4600 2000 4600 2100
Wire Wire Line
	5600 2400 5400 2400
Wire Wire Line
	5400 2400 5400 2000
Wire Wire Line
	5400 2000 4600 2000
Connection ~ 4600 2000
Text Label 4600 1900 0    10   ~ 0
VCC
Wire Wire Line
	9000 2500 8700 2500
Wire Wire Line
	8700 2500 8700 2300
Text Label 9000 2500 0    10   ~ 0
VCC
Wire Wire Line
	8100 1900 8100 2000
Text Label 8100 1900 0    10   ~ 0
VCC
Wire Wire Line
	8400 1900 8400 2000
Text Label 8400 1900 0    10   ~ 0
VCC
Wire Wire Line
	5600 3100 5500 3100
Wire Wire Line
	5500 3100 5500 3500
Text Label 5600 3100 0    10   ~ 0
GND
Wire Wire Line
	4700 3400 4700 3500
Text Label 4700 3400 0    10   ~ 0
GND
Wire Wire Line
	4400 3400 4400 3500
Text Label 4400 3400 0    10   ~ 0
GND
Wire Wire Line
	4600 2400 4600 2500
Text Label 4600 2400 0    10   ~ 0
GND
Wire Wire Line
	9000 2600 7900 2600
Wire Wire Line
	7900 2600 7900 2700
Text Label 9000 2600 0    10   ~ 0
GND
Wire Wire Line
	5600 2900 4700 2900
Wire Wire Line
	4700 2900 4700 3000
Wire Wire Line
	4700 2900 3800 2900
Wire Wire Line
	3800 2900 3800 2600
Connection ~ 4700 2900
Wire Wire Line
	5600 2800 4400 2800
Wire Wire Line
	4400 2800 4400 3000
Wire Wire Line
	4400 2800 4100 2800
Wire Wire Line
	4100 2800 4100 2600
Connection ~ 4400 2800
Wire Wire Line
	5600 2700 5300 2700
Text Label 5300 2700 0    70   ~ 0
SDA
Wire Wire Line
	9000 2800 8400 2800
Wire Wire Line
	8400 2800 8000 2800
Wire Wire Line
	8400 2400 8400 2800
Connection ~ 8400 2800
Text Label 8000 2800 0    70   ~ 0
SDA
Wire Wire Line
	5600 2600 5300 2600
Text Label 5300 2600 0    70   ~ 0
SCL
Wire Wire Line
	9000 2700 8100 2700
Wire Wire Line
	8100 2700 8000 2700
Wire Wire Line
	8100 2400 8100 2700
Connection ~ 8100 2700
Text Label 8000 2700 0    70   ~ 0
SCL
Wire Wire Line
	6600 2600 7000 2600
Wire Wire Line
	7000 2600 7000 2400
Wire Wire Line
	7000 2400 7200 2400
Wire Wire Line
	7200 2400 7200 2500
Wire Wire Line
	7400 2400 7200 2400
Wire Wire Line
	7400 2600 7400 2400
Text Label 6700 2600 0    70   ~ 0
VIN+
Connection ~ 7200 2400
Wire Wire Line
	9000 3000 8000 3000
Text Label 8000 3000 0    70   ~ 0
VIN+
Wire Wire Line
	6600 2900 7000 2900
Wire Wire Line
	7000 2900 7000 3100
Wire Wire Line
	7000 3100 7200 3100
Wire Wire Line
	7200 3100 7200 2900
Wire Wire Line
	7200 3100 7400 3100
Wire Wire Line
	7400 3100 7400 2700
Text Label 6700 2900 0    70   ~ 0
VIN-
Connection ~ 7200 3100
Wire Wire Line
	9000 2900 8000 2900
Text Label 8000 2900 0    70   ~ 0
VIN-
$Comp
L Adafruit_INA219_CurPowerMonitor-eagle-import:FRAME_A4_ADAFRUIT #U$1
U 1 1 89E33A62
P 1100 6500
F 0 "#U$1" H 1100 6500 50  0001 C CNN
F 1 "FRAME_A4_ADAFRUIT" H 1100 6500 50  0001 C CNN
F 2 "" H 1100 6500 50  0001 C CNN
F 3 "" H 1100 6500 50  0001 C CNN
	1    1100 6500
	1    0    0    -1  
$EndComp
$Comp
L Adafruit_INA219_CurPowerMonitor-eagle-import:INA219 U1
U 1 1 9CF17748
P 6100 2700
F 0 "U1" H 5700 3500 42  0000 L BNN
F 1 "INA219BIDCNT" H 5700 1900 42  0000 L BNN
F 2 "Adafruit_INA219_CurPowerMonitor:SOT23-8" H 6100 2700 50  0001 C CNN
F 3 "" H 6100 2700 50  0001 C CNN
	1    6100 2700
	1    0    0    -1  
$EndComp
$Comp
L Adafruit_INA219_CurPowerMonitor-eagle-import:CAP_CERAMIC0805 C1
U 1 1 F54B275B
P 4600 2300
F 0 "C1" H 4700 2400 50  0000 L BNN
F 1 "0.1µF" H 4700 2300 50  0000 L BNN
F 2 "Adafruit_INA219_CurPowerMonitor:0805" H 4600 2300 50  0001 C CNN
F 3 "" H 4600 2300 50  0001 C CNN
	1    4600 2300
	1    0    0    -1  
$EndComp
$Comp
L Adafruit_INA219_CurPowerMonitor-eagle-import:SOLDERJUMPERREFLOW_NOPASTE SJ1
U 1 1 666E743F
P 4100 2400
F 0 "SJ1" H 4000 2500 59  0000 L BNN
F 1 "SOLDERJUMPERREFLOW_NOPASTE" H 4000 2250 59  0000 L BNN
F 2 "Adafruit_INA219_CurPowerMonitor:SOLDERJUMPER_REFLOW_NOPASTE" H 4100 2400 50  0001 C CNN
F 3 "" H 4100 2400 50  0001 C CNN
	1    4100 2400
	0    1    1    0   
$EndComp
$Comp
L Adafruit_INA219_CurPowerMonitor-eagle-import:SOLDERJUMPERREFLOW_NOPASTE SJ2
U 1 1 2B525D20
P 3800 2400
F 0 "SJ2" H 3700 2500 59  0000 L BNN
F 1 "SOLDERJUMPERREFLOW_NOPASTE" H 3700 2250 59  0000 L BNN
F 2 "Adafruit_INA219_CurPowerMonitor:SOLDERJUMPER_REFLOW_NOPASTE" H 3800 2400 50  0001 C CNN
F 3 "" H 3800 2400 50  0001 C CNN
	1    3800 2400
	0    1    1    0   
$EndComp
$Comp
L Adafruit_INA219_CurPowerMonitor-eagle-import:VCC #P+01
U 1 1 6A081B6E
P 3800 1900
F 0 "#P+01" H 3800 1900 50  0001 C CNN
F 1 "VCC" H 3740 2040 42  0000 L BNN
F 2 "" H 3800 1900 50  0001 C CNN
F 3 "" H 3800 1900 50  0001 C CNN
	1    3800 1900
	1    0    0    -1  
$EndComp
$Comp
L Adafruit_INA219_CurPowerMonitor-eagle-import:VCC #P+02
U 1 1 637B3A6A
P 4100 1900
F 0 "#P+02" H 4100 1900 50  0001 C CNN
F 1 "VCC" H 4040 2040 42  0000 L BNN
F 2 "" H 4100 1900 50  0001 C CNN
F 3 "" H 4100 1900 50  0001 C CNN
	1    4100 1900
	1    0    0    -1  
$EndComp
$Comp
L Adafruit_INA219_CurPowerMonitor-eagle-import:RESISTOR0805 R1
U 1 1 DE04AF3C
P 4400 3200
F 0 "R1" H 4300 3280 50  0000 L BNN
F 1 "10K" H 4300 3075 50  0000 L BNN
F 2 "Adafruit_INA219_CurPowerMonitor:0805" H 4400 3200 50  0001 C CNN
F 3 "" H 4400 3200 50  0001 C CNN
	1    4400 3200
	0    -1   -1   0   
$EndComp
$Comp
L Adafruit_INA219_CurPowerMonitor-eagle-import:RESISTOR0805 R2
U 1 1 0F3C4881
P 4700 3200
F 0 "R2" H 4600 3280 50  0000 L BNN
F 1 "10K" H 4600 3075 50  0000 L BNN
F 2 "Adafruit_INA219_CurPowerMonitor:0805" H 4700 3200 50  0001 C CNN
F 3 "" H 4700 3200 50  0001 C CNN
	1    4700 3200
	0    -1   -1   0   
$EndComp
$Comp
L Adafruit_INA219_CurPowerMonitor-eagle-import:GND #U$02
U 1 1 87B7DF34
P 4400 3600
F 0 "#U$02" H 4400 3600 50  0001 C CNN
F 1 "GND" H 4340 3500 42  0000 L BNN
F 2 "" H 4400 3600 50  0001 C CNN
F 3 "" H 4400 3600 50  0001 C CNN
	1    4400 3600
	1    0    0    -1  
$EndComp
$Comp
L Adafruit_INA219_CurPowerMonitor-eagle-import:GND #U$03
U 1 1 6E1B97F5
P 4700 3600
F 0 "#U$03" H 4700 3600 50  0001 C CNN
F 1 "GND" H 4640 3500 42  0000 L BNN
F 2 "" H 4700 3600 50  0001 C CNN
F 3 "" H 4700 3600 50  0001 C CNN
	1    4700 3600
	1    0    0    -1  
$EndComp
$Comp
L Adafruit_INA219_CurPowerMonitor-eagle-import:GND #U$04
U 1 1 649D799B
P 5500 3600
F 0 "#U$04" H 5500 3600 50  0001 C CNN
F 1 "GND" H 5440 3500 42  0000 L BNN
F 2 "" H 5500 3600 50  0001 C CNN
F 3 "" H 5500 3600 50  0001 C CNN
	1    5500 3600
	1    0    0    -1  
$EndComp
$Comp
L Adafruit_INA219_CurPowerMonitor-eagle-import:VCC #P+03
U 1 1 48C2C5DB
P 4600 1900
F 0 "#P+03" H 4600 1900 50  0001 C CNN
F 1 "VCC" H 4540 2040 42  0000 L BNN
F 2 "" H 4600 1900 50  0001 C CNN
F 3 "" H 4600 1900 50  0001 C CNN
	1    4600 1900
	1    0    0    -1  
$EndComp
$Comp
L Adafruit_INA219_CurPowerMonitor-eagle-import:GND #U$05
U 1 1 BCE09641
P 4600 2600
F 0 "#U$05" H 4600 2600 50  0001 C CNN
F 1 "GND" H 4540 2500 42  0000 L BNN
F 2 "" H 4600 2600 50  0001 C CNN
F 3 "" H 4600 2600 50  0001 C CNN
	1    4600 2600
	1    0    0    -1  
$EndComp
$Comp
L Adafruit_INA219_CurPowerMonitor-eagle-import:VCC #P+04
U 1 1 459FCD94
P 8700 2300
F 0 "#P+04" H 8700 2300 50  0001 C CNN
F 1 "VCC" H 8640 2440 42  0000 L BNN
F 2 "" H 8700 2300 50  0001 C CNN
F 3 "" H 8700 2300 50  0001 C CNN
	1    8700 2300
	1    0    0    -1  
$EndComp
$Comp
L Adafruit_INA219_CurPowerMonitor-eagle-import:GND #U$06
U 1 1 CE08125E
P 7900 2800
F 0 "#U$06" H 7900 2800 50  0001 C CNN
F 1 "GND" H 7840 2700 42  0000 L BNN
F 2 "" H 7900 2800 50  0001 C CNN
F 3 "" H 7900 2800 50  0001 C CNN
	1    7900 2800
	1    0    0    -1  
$EndComp
$Comp
L Adafruit_INA219_CurPowerMonitor-eagle-import:RESISTOR0805 R3
U 1 1 2A684572
P 8100 2200
F 0 "R3" H 8000 2280 50  0000 L BNN
F 1 "10K" H 8000 2075 50  0000 L BNN
F 2 "Adafruit_INA219_CurPowerMonitor:0805" H 8100 2200 50  0001 C CNN
F 3 "" H 8100 2200 50  0001 C CNN
	1    8100 2200
	0    -1   -1   0   
$EndComp
$Comp
L Adafruit_INA219_CurPowerMonitor-eagle-import:RESISTOR0805 R4
U 1 1 30FCCEAE
P 8400 2200
F 0 "R4" H 8300 2280 50  0000 L BNN
F 1 "10K" H 8300 2075 50  0000 L BNN
F 2 "Adafruit_INA219_CurPowerMonitor:0805" H 8400 2200 50  0001 C CNN
F 3 "" H 8400 2200 50  0001 C CNN
	1    8400 2200
	0    -1   -1   0   
$EndComp
$Comp
L Adafruit_INA219_CurPowerMonitor-eagle-import:VCC #P+05
U 1 1 57F4DC09
P 8100 1900
F 0 "#P+05" H 8100 1900 50  0001 C CNN
F 1 "VCC" H 8040 2040 42  0000 L BNN
F 2 "" H 8100 1900 50  0001 C CNN
F 3 "" H 8100 1900 50  0001 C CNN
	1    8100 1900
	1    0    0    -1  
$EndComp
$Comp
L Adafruit_INA219_CurPowerMonitor-eagle-import:VCC #P+06
U 1 1 4B6CF0C8
P 8400 1900
F 0 "#P+06" H 8400 1900 50  0001 C CNN
F 1 "VCC" H 8340 2040 42  0000 L BNN
F 2 "" H 8400 1900 50  0001 C CNN
F 3 "" H 8400 1900 50  0001 C CNN
	1    8400 1900
	1    0    0    -1  
$EndComp
$Comp
L Adafruit_INA219_CurPowerMonitor-eagle-import:FIDUCIAL"" FID1
U 1 1 57AF2ED6
P 11000 5200
F 0 "FID1" H 11000 5200 50  0001 C CNN
F 1 "FIDUCIAL\"\"" H 11000 5200 50  0001 C CNN
F 2 "Adafruit_INA219_CurPowerMonitor:FIDUCIAL_1MM" H 11000 5200 50  0001 C CNN
F 3 "" H 11000 5200 50  0001 C CNN
	1    11000 5200
	1    0    0    -1  
$EndComp
$Comp
L Adafruit_INA219_CurPowerMonitor-eagle-import:FIDUCIAL"" FID2
U 1 1 AD69ACBC
P 10700 5200
F 0 "FID2" H 10700 5200 50  0001 C CNN
F 1 "FIDUCIAL\"\"" H 10700 5200 50  0001 C CNN
F 2 "Adafruit_INA219_CurPowerMonitor:FIDUCIAL_1MM" H 10700 5200 50  0001 C CNN
F 3 "" H 10700 5200 50  0001 C CNN
	1    10700 5200
	1    0    0    -1  
$EndComp
$Comp
L Adafruit_INA219_CurPowerMonitor-eagle-import:MOUNTINGHOLE2.5 U$7
U 1 1 63C62AE7
P 11000 5500
F 0 "U$7" H 11000 5500 50  0001 C CNN
F 1 "MOUNTINGHOLE2.5" H 11000 5500 50  0001 C CNN
F 2 "Adafruit_INA219_CurPowerMonitor:MOUNTINGHOLE_2.5_PLATED" H 11000 5500 50  0001 C CNN
F 3 "" H 11000 5500 50  0001 C CNN
	1    11000 5500
	1    0    0    -1  
$EndComp
$Comp
L Adafruit_INA219_CurPowerMonitor-eagle-import:MOUNTINGHOLE2.5 U$8
U 1 1 59F585D1
P 10700 5500
F 0 "U$8" H 10700 5500 50  0001 C CNN
F 1 "MOUNTINGHOLE2.5" H 10700 5500 50  0001 C CNN
F 2 "Adafruit_INA219_CurPowerMonitor:MOUNTINGHOLE_2.5_PLATED" H 10700 5500 50  0001 C CNN
F 3 "" H 10700 5500 50  0001 C CNN
	1    10700 5500
	1    0    0    -1  
$EndComp
$Comp
L Adafruit_INA219_CurPowerMonitor-eagle-import:MOUNTINGHOLE2.5 U$9
U 1 1 9E0009A5
P 10400 5500
F 0 "U$9" H 10400 5500 50  0001 C CNN
F 1 "MOUNTINGHOLE2.5" H 10400 5500 50  0001 C CNN
F 2 "Adafruit_INA219_CurPowerMonitor:MOUNTINGHOLE_2.5_PLATED" H 10400 5500 50  0001 C CNN
F 3 "" H 10400 5500 50  0001 C CNN
	1    10400 5500
	1    0    0    -1  
$EndComp
$Comp
L Adafruit_INA219_CurPowerMonitor-eagle-import:MOUNTINGHOLE2.5 U$10
U 1 1 2B263A79
P 10400 5200
F 0 "U$10" H 10400 5200 50  0001 C CNN
F 1 "MOUNTINGHOLE2.5" H 10400 5200 50  0001 C CNN
F 2 "Adafruit_INA219_CurPowerMonitor:MOUNTINGHOLE_2.5_PLATED" H 10400 5200 50  0001 C CNN
F 3 "" H 10400 5200 50  0001 C CNN
	1    10400 5200
	1    0    0    -1  
$EndComp
$Comp
L Adafruit_INA219_CurPowerMonitor-eagle-import:HEADER-1X670MIL JP1
U 1 1 0B60073D
P 9100 2800
F 0 "JP1" H 8850 3225 59  0000 L BNN
F 1 "HEADER-1X670MIL" H 8850 2400 59  0000 L BNN
F 2 "Adafruit_INA219_CurPowerMonitor:1X06_ROUND_70" H 9100 2800 50  0001 C CNN
F 3 "" H 9100 2800 50  0001 C CNN
	1    9100 2800
	1    0    0    -1  
$EndComp
$Comp
L Adafruit_INA219_CurPowerMonitor-eagle-import:RESISTOR2512 R5
U 1 1 385167B5
P 7200 2700
F 0 "R5" H 7100 2780 50  0000 L BNN
F 1 "0.1/1% (PT2512FK-070R1L)" H 7100 2575 50  0000 L BNN
F 2 "Adafruit_INA219_CurPowerMonitor:2512" H 7200 2700 50  0001 C CNN
F 3 "" H 7200 2700 50  0001 C CNN
	1    7200 2700
	0    -1   -1   0   
$EndComp
$Comp
L Adafruit_INA219_CurPowerMonitor-eagle-import:TERMBLOCK_1X2-3.5MM J1
U 1 1 449C7C68
P 7600 2600
F 0 "J1" H 7600 2600 50  0001 C CNN
F 1 "TERMBLOCK_1X2-3.5MM" H 7600 2600 50  0001 C CNN
F 2 "Adafruit_INA219_CurPowerMonitor:1X2-3.5MM" H 7600 2600 50  0001 C CNN
F 3 "" H 7600 2600 50  0001 C CNN
	1    7600 2600
	1    0    0    1   
$EndComp
$EndSCHEMATC
