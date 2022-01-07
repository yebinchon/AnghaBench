
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int pc_keymap(int c)
{
    switch (c) {
 case 128:
 case 130:
  c = 16;
        break;
 case 136:
 case 131:
  c = 14;
        break;
    case 132:
  c = 2;
        break;
    case 129:
  c = 6;
        break;
 case 135:
  c = 5;
  break;
 case 134:
  c = 1;
  break;
 case 133:
  c = 15;
  break;
 case 137:
  c = 4;
  break;
    default:
  c = 0;
    }
    return c;
}
