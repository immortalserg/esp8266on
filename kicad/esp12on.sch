EESchema Schematic File Version 4
LIBS:esp12on-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
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
$Comp
L esp12on-rescue:ESP-12-ESP8266 U2
U 1 1 5C1C2D02
P 5600 3650
F 0 "U2" H 5600 4731 50  0000 C CNN
F 1 "ESP-12" H 5600 4640 50  0000 C CNN
F 2 "imm:ESP-12" H 5600 3650 50  0001 C CNN
F 3 "http://l0l.org.uk/2014/12/esp8266-modules-hardware-guide-gotta-catch-em-all/" H 5600 3650 50  0001 C CNN
	1    5600 3650
	1    0    0    -1  
$EndComp
$Comp
L ATSAM3X8EA-rescue:R R1
U 1 1 5C1C3A77
P 4250 3400
F 0 "R1" H 4320 3446 50  0000 L CNN
F 1 "10 k" H 4320 3355 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 4150 3450 50  0001 C CNN
F 3 "" H 4250 3500 50  0001 C CNN
	1    4250 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 3550 4250 3550
Wire Wire Line
	4250 3250 4250 2750
Wire Wire Line
	4250 2750 5600 2750
$Comp
L ATSAM3X8EA-rescue:R R2
U 1 1 5C1C490F
P 6600 4100
F 0 "R2" H 6670 4146 50  0000 L CNN
F 1 "10 k" H 6670 4055 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 6500 4150 50  0001 C CNN
F 3 "" H 6600 4200 50  0001 C CNN
	1    6600 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 3950 6600 3950
Wire Wire Line
	6600 4250 6600 4550
Wire Wire Line
	6600 4550 5600 4550
$Comp
L power:GND #PWR01
U 1 1 5C1C526D
P 5600 4550
F 0 "#PWR01" H 5600 4300 50  0001 C CNN
F 1 "GND" H 5605 4377 50  0000 C CNN
F 2 "" H 5600 4550 50  0001 C CNN
F 3 "" H 5600 4550 50  0001 C CNN
	1    5600 4550
	1    0    0    -1  
$EndComp
Connection ~ 5600 4550
Wire Wire Line
	4700 3350 4700 2850
$Comp
L connectors:HEADER-1x07 J1
U 1 1 5C1C7156
P 7950 3650
F 0 "J1" H 8078 3686 60  0000 L CNB
F 1 "HEADER-1x07" H 8078 3595 40  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x07_P2.54mm_Vertical" H 7950 3650 60  0001 C CNN
F 3 "" H 7950 3650 60  0001 C CNN
F 4 "-" H 7900 4150 40  0001 L BNN "Part"
F 5 "Connector" H 7900 4250 40  0001 L BNN "Family"
	1    7950 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	6600 4550 7450 4550
Wire Wire Line
	7450 4550 7450 3350
Wire Wire Line
	7450 3350 7800 3350
Connection ~ 6600 4550
Wire Wire Line
	6500 3350 6650 3350
Wire Wire Line
	7350 3350 7350 3550
Wire Wire Line
	7350 3550 7800 3550
Wire Wire Line
	5600 2750 7550 2750
Wire Wire Line
	7550 2750 7550 3650
Wire Wire Line
	7550 3650 7800 3650
Connection ~ 5600 2750
Wire Wire Line
	4700 2850 7650 2850
Wire Wire Line
	7650 2850 7650 3750
Wire Wire Line
	7650 3750 7800 3750
Wire Wire Line
	6500 3450 6750 3450
Wire Wire Line
	7250 3450 7250 3950
Wire Wire Line
	7250 3950 7800 3950
Wire Wire Line
	6500 3750 7100 3750
Wire Wire Line
	7350 3750 7350 3850
Wire Wire Line
	7350 3850 7800 3850
$Comp
L Regulator_Linear:LM1117-3.3 U1
U 1 1 5C1CA8F6
P 3550 2750
F 0 "U1" H 3550 2992 50  0000 C CNN
F 1 "LM1117-3.3" H 3550 2901 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 3550 2750 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm1117.pdf" H 3550 2750 50  0001 C CNN
	1    3550 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 3050 3550 4100
Wire Wire Line
	3550 4550 5600 4550
Wire Wire Line
	3850 2750 3900 2750
Connection ~ 4250 2750
$Comp
L Device:CP C1
U 1 1 5C1CCDFD
P 3900 2900
F 0 "C1" H 4018 2946 50  0000 L CNN
F 1 "CP" H 4018 2855 50  0000 L CNN
F 2 "Capacitor_SMD:C_2816_7142Metric" H 3938 2750 50  0001 C CNN
F 3 "~" H 3900 2900 50  0001 C CNN
	1    3900 2900
	1    0    0    -1  
$EndComp
Connection ~ 3900 2750
Wire Wire Line
	3900 2750 4250 2750
Wire Wire Line
	3900 3050 3550 3050
Connection ~ 3550 3050
$Comp
L connectors:HEADER-1x02 J2
U 1 1 5C10EE9D
P 2500 2800
F 0 "J2" H 2467 2538 60  0000 C CNB
F 1 "HEADER-1x02" H 2467 2629 40  0000 C CNN
F 2 "w_conn_pt-1,5:pt_1,5-2-3,5-h" H 2500 2800 60  0001 C CNN
F 3 "" H 2500 2800 60  0001 C CNN
F 4 "-" H 2450 3050 40  0001 L BNN "Part"
F 5 "Connector" H 2450 3150 40  0001 L BNN "Family"
	1    2500 2800
	-1   0    0    1   
$EndComp
Wire Wire Line
	2650 2850 2650 3050
Wire Wire Line
	2650 3050 2900 3050
Wire Wire Line
	2650 2750 2900 2750
$Comp
L Device:CP C2
U 1 1 5C111B4C
P 2900 2900
F 0 "C2" H 3018 2946 50  0000 L CNN
F 1 "CP" H 3018 2855 50  0000 L CNN
F 2 "Capacitor_SMD:C_2816_7142Metric" H 2938 2750 50  0001 C CNN
F 3 "~" H 2900 2900 50  0001 C CNN
	1    2900 2900
	1    0    0    -1  
$EndComp
Connection ~ 2900 2750
Wire Wire Line
	2900 2750 3250 2750
Connection ~ 2900 3050
Wire Wire Line
	2900 3050 3550 3050
$Comp
L connectors:HEADER-1x04 J4
U 1 1 5C1125F5
P 2950 3950
F 0 "J4" H 2917 3588 60  0000 C CNB
F 1 "HEADER-1x04" H 2917 3679 40  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 2950 3950 60  0001 C CNN
F 3 "" H 2950 3950 60  0001 C CNN
F 4 "-" H 2900 4300 40  0001 L BNN "Part"
F 5 "Connector" H 2900 4400 40  0001 L BNN "Family"
	1    2950 3950
	-1   0    0    1   
$EndComp
$Comp
L connectors:HEADER-1x04 J3
U 1 1 5C1134D5
P 2500 3950
F 0 "J3" H 2467 3588 60  0000 C CNB
F 1 "HEADER-1x04" H 2467 3679 40  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 2500 3950 60  0001 C CNN
F 3 "" H 2500 3950 60  0001 C CNN
F 4 "-" H 2450 4300 40  0001 L BNN "Part"
F 5 "Connector" H 2450 4400 40  0001 L BNN "Family"
	1    2500 3950
	-1   0    0    1   
$EndComp
Wire Wire Line
	2650 3800 3100 3800
Wire Wire Line
	2650 3900 3100 3900
Wire Wire Line
	2650 4000 3100 4000
Wire Wire Line
	2650 4100 3100 4100
Wire Wire Line
	3100 4100 3550 4100
Connection ~ 3100 4100
Connection ~ 3550 4100
Wire Wire Line
	3550 4100 3550 4550
$Comp
L connectors:HEADER-1x03 J5
U 1 1 5C111783
P 6900 3100
F 0 "J5" H 7028 3136 60  0000 L CNB
F 1 "HEADER-1x03" H 7028 3045 40  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 6900 3100 60  0001 C CNN
F 3 "" H 6900 3100 60  0001 C CNN
F 4 "-" H 6850 3400 40  0001 L BNN "Part"
F 5 "Connector" H 6850 3500 40  0001 L BNN "Family"
	1    6900 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6750 3200 6750 3450
Connection ~ 6750 3450
Wire Wire Line
	6750 3450 7250 3450
Wire Wire Line
	6750 3100 6650 3100
Wire Wire Line
	6650 3100 6650 3350
Connection ~ 6650 3350
Wire Wire Line
	6650 3350 7350 3350
$Comp
L Isolator:EL814 U3
U 1 1 5C1152ED
P 3900 3800
F 0 "U3" H 3900 4125 50  0000 C CNN
F 1 "EL814" H 3900 4034 50  0000 C CNN
F 2 "Package_DIP:DIP-4_W7.62mm" H 3700 3600 50  0001 L CIN
F 3 "http://www.everlight.com/file/ProductFile/EL814.pdf" H 3925 3800 50  0001 L CNN
	1    3900 3800
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3600 3900 3100 3900
Connection ~ 3100 3900
Wire Wire Line
	3100 3800 3150 3800
Wire Wire Line
	3150 3800 3150 3700
Wire Wire Line
	3150 3700 3600 3700
Connection ~ 3100 3800
Wire Wire Line
	4200 3900 4200 4100
Wire Wire Line
	4200 4100 3550 4100
$Comp
L ATSAM3X8EA-rescue:R R3
U 1 1 5C11AF97
P 4400 3700
F 0 "R3" H 4470 3746 50  0000 L CNN
F 1 "240R" H 4470 3655 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 4300 3750 50  0001 C CNN
F 3 "" H 4400 3800 50  0001 C CNN
	1    4400 3700
	0    1    1    0   
$EndComp
Wire Wire Line
	4250 3700 4200 3700
Wire Wire Line
	4550 3700 4550 3950
Wire Wire Line
	4550 3950 4700 3950
Wire Wire Line
	3100 4000 4650 4000
Wire Wire Line
	4650 4000 4650 3750
Wire Wire Line
	4650 3750 4700 3750
Connection ~ 3100 4000
$Comp
L connectors:HEADER-1x10 J6
U 1 1 5C12178D
P 8400 4650
F 0 "J6" H 8528 4686 60  0000 L CNB
F 1 "HEADER-1x10" H 8528 4595 40  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x10_P2.54mm_Vertical" H 8400 4650 60  0001 C CNN
F 3 "" H 8400 4650 60  0001 C CNN
F 4 "-" H 8350 5300 40  0001 L BNN "Part"
F 5 "Connector" H 8350 5400 40  0001 L BNN "Family"
	1    8400 4650
	1    0    0    -1  
$EndComp
Text GLabel 2900 2750 1    50   Input ~ 0
+5V
Text GLabel 8250 4500 0    50   Input ~ 0
+5V
$Comp
L power:GND #PWR02
U 1 1 5C122645
P 8250 5100
F 0 "#PWR02" H 8250 4850 50  0001 C CNN
F 1 "GND" H 8255 4927 50  0000 C CNN
F 2 "" H 8250 5100 50  0001 C CNN
F 3 "" H 8250 5100 50  0001 C CNN
	1    8250 5100
	0    1    1    0   
$EndComp
Wire Wire Line
	6500 3550 7200 3550
Wire Wire Line
	7200 3550 7200 4300
Wire Wire Line
	6500 3650 7150 3650
Wire Wire Line
	7150 4600 8250 4600
Wire Wire Line
	7100 4700 8250 4700
Connection ~ 7100 3750
Wire Wire Line
	7100 3750 7350 3750
Wire Wire Line
	6500 3850 7050 3850
Wire Wire Line
	7050 4800 8250 4800
Wire Wire Line
	4700 3650 4600 3650
Wire Wire Line
	4600 5000 8250 5000
Wire Wire Line
	7150 3650 7150 4600
Wire Wire Line
	7100 3750 7100 4700
Wire Wire Line
	7050 3850 7050 4800
$Comp
L power:GND #PWR0101
U 1 1 5C137A88
P 8250 4200
F 0 "#PWR0101" H 8250 3950 50  0001 C CNN
F 1 "GND" H 8255 4027 50  0000 C CNN
F 2 "" H 8250 4200 50  0001 C CNN
F 3 "" H 8250 4200 50  0001 C CNN
	1    8250 4200
	0    1    1    0   
$EndComp
Text GLabel 7800 4400 0    50   Input ~ 0
+3.3V
Wire Wire Line
	4600 3650 4600 5000
Wire Wire Line
	4700 3850 4500 3850
Wire Wire Line
	4500 3850 4500 4900
Wire Wire Line
	4500 4900 8250 4900
$Comp
L ATSAM3X8EA-rescue:R R4
U 1 1 5C13E49C
P 7700 4150
F 0 "R4" H 7770 4196 50  0000 L CNN
F 1 "4.7 k" H 7770 4105 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 7600 4200 50  0001 C CNN
F 3 "" H 7700 4250 50  0001 C CNN
	1    7700 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	8250 4400 7800 4400
Wire Wire Line
	7800 4400 7800 4000
Wire Wire Line
	7800 4000 7700 4000
Text GLabel 4250 2750 1    50   Input ~ 0
+3.3V
Wire Wire Line
	7200 4300 8250 4300
$EndSCHEMATC