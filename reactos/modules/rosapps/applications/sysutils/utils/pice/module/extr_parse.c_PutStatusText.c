
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ y; } ;
typedef int LPSTR ;


 int ClrLine (scalar_t__) ;
 int ENTER_FUNC () ;
 int LEAVE_FUNC () ;
 size_t OUTPUT_WINDOW ;
 int PutChar (int ,int,scalar_t__) ;
 TYPE_1__* wWindow ;

void PutStatusText(LPSTR p)
{
    ENTER_FUNC();

 ClrLine(wWindow[OUTPUT_WINDOW].y-1);
 PutChar(p,1,wWindow[OUTPUT_WINDOW].y-1);

    LEAVE_FUNC();
}
