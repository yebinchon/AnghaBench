
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t USHORT ;
typedef scalar_t__ ULONG ;
struct TYPE_2__ {scalar_t__ cy; scalar_t__ y; } ;


 int ClrLine (scalar_t__) ;
 int Home (size_t) ;
 TYPE_1__* wWindow ;

void Clear(USHORT Window)
{
    ULONG j;

    for(j=0;j<wWindow[Window].cy;j++)
    {
  ClrLine(wWindow[Window].y+j);
    }

    Home(Window);
}
