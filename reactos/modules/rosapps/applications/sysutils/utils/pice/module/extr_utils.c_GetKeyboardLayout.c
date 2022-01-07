
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * PKEYBOARD_LAYOUT ;


 int * CurrentKeyboard ;
 size_t kbUS ;
 int * ucKeyboard ;

PKEYBOARD_LAYOUT GetKeyboardLayout()
{
  if (CurrentKeyboard == ((void*)0))
    {
      CurrentKeyboard = &ucKeyboard[kbUS];
    }

  return CurrentKeyboard;
}
