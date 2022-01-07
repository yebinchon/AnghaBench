
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t ULONG ;
struct TYPE_6__ {int * name; } ;
typedef TYPE_1__* PKEYBOARD_LAYOUT ;
typedef int LPSTR ;
typedef int CHAR ;


 TYPE_1__* CurrentKeyboard ;
 TYPE_1__* GetKeyboardLayout () ;
 scalar_t__ PICE_strcmpi (int *,int ) ;
 TYPE_1__* ucKeyboard ;

PKEYBOARD_LAYOUT SetKeyboardLayoutByName(LPSTR Name)
{
  CHAR tempCmd[256];
  ULONG i;

 for(i=0;ucKeyboard[i].name != ((void*)0);i++)
   {
     if(PICE_strcmpi(ucKeyboard[i].name, Name) == 0)
       {
      CurrentKeyboard = &ucKeyboard[i];
    return CurrentKeyboard;
       }
   }
  return GetKeyboardLayout();
}
