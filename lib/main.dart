import 'package:flutter/material.dart';

void main() {
  /*Вам надходять дані від зовнішнього пристрою (наприклад, плати Arduino) у
   форматі рядка: <voltage=220,power=3200,speed=0,silent_mode=0>. Це дані про
   поточний стан деякого пристрою:напруга, потужність, швидкість і він працює в
   тихому режимі чи ні. Потрібно написати програму, яка знаходила б у цьому рядку
   значення всіх 4 параметрів і записувала у відповідні змінні. Увага! Якийсь
   параметр може і не прийти, або його значення може бути іншим, наприклад
   <voltage=120,power=800>. Підказка: щоб порівняти рядки, використовуйте
   ‘your_string’ == ‘another_string’*/

  // Рядок з даними
  // String data = '<voltage=220,power=3200,speed=0,silent_mode=0>';
  String data = '<voltage=120,power=2200>';

  // Ініціалізуємо змінні для зберігання даних заздалегідь
  int voltage = 0;
  int power = 0;
  int speed = 0;
  int silentMode = 0;

  // Розбиваємо рядок на підстроки (буде так: 'voltage=220', 'power=3200', 'speed=0', 'silent_mode=0')
  List<String> parts = data.replaceAll('<', '').replaceAll('>', '').split(',');

  // Проходимось по кожній підстроці (кожен раз беремо 1 елемент і String part = 'voltage=220')
  for (String part in parts) {
    // Розбиваємо підстроку по знаку = на дві окремі строки і записуємо в список parameters
    List<String> parameters = part.split('=');
    // присвоюємо parameter першу string із списку, value присвоюємо другу string переробивши її на int
    String parameter = parameters[0];
    int value = int.parse(parameters[1]);

    // Зберігаємо значення відповідно до параметру
    if (parameter == 'voltage') {
      voltage = value;
    } else if (parameter == 'power') {
      power = value;
    } else if (parameter == 'speed') {
      speed = value;
    } else if (parameter == 'silent_mode') {
      silentMode = value;
    }
  }

  // Виводимо отримані дані
  print('Voltage: $voltage');
  print('Power: $power');
  print('Speed: $speed');
  print('Silent Mode: $silentMode');
}

/* Results:
#1 (String data = '<voltage=220,power=3200,speed=0,silent_mode=0>';)
Voltage: 220
Power: 3200
Speed: 0
Silent Mode: 0
#2 (String data = '<voltage=220,power=3200>';)
Voltage: 220
Power: 3200
Speed: 0
Silent Mode: 0
#3 (String data = '<voltage=120,power=2200>';)
Voltage: 120
Power: 2200
Speed: 0
Silent Mode: 0
*/