
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
uint32_t event_to_x11_button(uint32_t event) {
 switch (event) {
 case 135:
  return 1;
 case 134:
  return 2;
 case 133:
  return 3;
 case 128:
  return 4;
 case 131:
  return 5;
 case 130:
  return 6;
 case 129:
  return 7;
 case 132:
  return 8;
 case 136:
  return 9;
 default:
  return 0;
 }
}
