
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t USHORT ;
struct TYPE_2__ {size_t cy; size_t y; int bScrollDisabled; } ;


 int ClrLine (size_t) ;
 int CopyLineTo (size_t,size_t) ;
 TYPE_1__* wWindow ;

void ScrollUp(USHORT Window)
{
    USHORT i;

    return;

 if(!wWindow[Window].bScrollDisabled)
 {
  for(i=1;i<wWindow[Window].cy;i++)
  {
   CopyLineTo((USHORT)(wWindow[Window].y+i-1),(USHORT)(wWindow[Window].y+i));
  }
  ClrLine((USHORT)(wWindow[Window].y+wWindow[Window].cy-1));
 }
}
