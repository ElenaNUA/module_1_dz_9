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

  List<String> dataInputCurrent = [
    'voltage=220',
    'power=3200',
    'speed=0',
    'silent_mode=0'
  ];
  List<String> dataInputNew = ['voltage=220', 'power=800'];
  List<String> resultList = [];

  for (int i = 0; i < dataInputCurrent.length; i++) {
    if (dataInputNew.length > i && dataInputCurrent[i] != dataInputNew[i]) {
      resultList.add(dataInputNew[i]);
    } else if (dataInputNew.length > i &&
        dataInputCurrent[i] == dataInputNew[i]) {
      resultList.add(dataInputCurrent[i]);
    }
  }
  print('New List: $resultList');
}
