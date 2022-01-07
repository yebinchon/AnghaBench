
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;
typedef int BOOL ;


 int False ;
 int True ;

__attribute__((used)) static BOOL
is_modifier(uint8 scancode)
{
 switch (scancode)
 {
  case 134:
  case 129:
  case 135:
  case 130:
  case 136:
  case 131:
  case 133:
  case 128:
  case 132:
   return True;
  default:
   break;
 }
 return False;
}
