
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16 ;







 int MOUSE_FLAG_BUTTON1 ;
 int MOUSE_FLAG_BUTTON2 ;
 int MOUSE_FLAG_BUTTON3 ;
 int MOUSE_FLAG_BUTTON4 ;
 int MOUSE_FLAG_BUTTON5 ;

uint16
xkeymap_translate_button(unsigned int button)
{
 switch (button)
 {
  case 132:
   return MOUSE_FLAG_BUTTON1;
  case 131:
   return MOUSE_FLAG_BUTTON3;
  case 130:
   return MOUSE_FLAG_BUTTON2;
  case 129:
   return MOUSE_FLAG_BUTTON4;
  case 128:
   return MOUSE_FLAG_BUTTON5;
 }

 return 0;
}
