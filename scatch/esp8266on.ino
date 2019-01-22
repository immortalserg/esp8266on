#define BLYNK_PRINT Serial
#include <ESP8266WiFi.h>
#include <BlynkSimpleEsp8266.h>
#include <OneWire.h>
#include <DallasTemperature.h>
int val; // переменная для значения состояния компьютера
#define ONE_WIRE_BUS 5 // GPIO к которому подключен датчик ds18b20
OneWire oneWire(ONE_WIRE_BUS);
DallasTemperature DS18B20(&oneWire);
float oldTemp;
// токены, комментируем при записи на каждое устройство свой токен
char auth[] = "ТОКЕН1"; // 1
//char auth[] = "ТОКЕН2"; // 2
//char auth[] = "ТОКЕН3"; // 3
//char auth[] = "ТОКЕН4"; // 4
//char auth[] = "ТОКЕН5"; // 5
//char auth[] = "ТОКЕН6"; // 6
//char auth[] = "ТОКЕН7"; // 7
//char auth[] = "ТОКЕН8"; // 8
WidgetLED led1(V0); // задаем виртуальному пину V0 виджет LED
void setup()
{
Serial.begin(115200); // скорость порта для отладки
Blynk.begin(auth, "WIFI_ИМЯ", "WIFI_ПАРОЛЬ", IPAddress(XXX,XXX,XXX,XXX), 8080); // свой Blynk сервер
//Blynk.begin(auth, "WIFI_ИМЯ"); // публичный Blynk сервер
while (Blynk.connect() == false) {
}
Blynk.notify("Device started !");
attachInterrupt (14, LedStatus, CHANGE); // делаем прерывание на GPIO14 (PWR LED+)
Blynk.setProperty(V0, "color", "#00FF00"); // задаем цвет светодиода - зеленый
LedStatus; // функция определения состояния компьютера (включен или выключен)
}
void LedStatus() // функция определения включен ли компьютер
{
  val = digitalRead(14); // к GPIO14 подключен PWR LED+
  if (val==1) {
led1.on(); // если компьютер включен то включаем виджет LED
  } else {
led1.off(); // если компьютер выключен то выключаем виджет LED
  }
}
void loop() // основной цикл
{
float temp;
do
{
DS18B20.requestTemperatures();
temp = DS18B20.getTempCByIndex(0);
Serial.print("Temperature: ");
Serial.println(temp);
}
while (temp == 85.0 || temp == (-127.0));
Blynk.virtualWrite(1, temp); // запись значения температуры в виртуальный пин V1
Blynk.run();
}
