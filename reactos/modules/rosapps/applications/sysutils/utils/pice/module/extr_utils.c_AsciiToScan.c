
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t ULONG ;
typedef scalar_t__ UCHAR ;
struct TYPE_4__ {TYPE_1__* normal; TYPE_1__* alted; TYPE_1__* shifted; } ;
struct TYPE_3__ {scalar_t__ s; scalar_t__ a; } ;
typedef TYPE_1__* PSCANTOASCII ;


 int DPRINT (int ) ;
 int ENTER_FUNC () ;
 TYPE_2__* GetKeyboardLayout () ;
 int LEAVE_FUNC () ;
 scalar_t__ bAlt ;
 scalar_t__ bShift ;

UCHAR AsciiToScan(UCHAR s)
{
  PSCANTOASCII table;
  ULONG i;

  ENTER_FUNC();

  if (bShift)
    {
      table = GetKeyboardLayout()->shifted;
    }
  else if(bAlt)
    {
      table = GetKeyboardLayout()->alted;
    }
  else
    {
      table = GetKeyboardLayout()->normal;
    }

  if (table)
    {
    for(i=0;table[i].s != 0;i++)
      {
        if(table[i].a==s)
          {
      LEAVE_FUNC();
      return table[i].s;
          }
      }
    }

  DPRINT((0,"AsciiToScan(): no translation for ASCII code\n"));
  LEAVE_FUNC();
 return 0;
}
