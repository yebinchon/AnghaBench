
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ cy; scalar_t__ y; } ;


 int COLOR_CAPTION ;
 int COLOR_TEXT ;
 int ClrLine (scalar_t__) ;
 int ENTER_FUNC () ;
 int LEAVE_FUNC () ;
 size_t OUTPUT_WINDOW ;
 int PutChar (char*,int,scalar_t__) ;
 int ResetColor () ;
 int SetBackgroundColor (int ) ;
 int SetForegroundColor (int ) ;
 TYPE_1__* wWindow ;

void ShowStoppedMsg(void)
{
    ENTER_FUNC();

    SetForegroundColor(COLOR_TEXT);
 SetBackgroundColor(COLOR_CAPTION);
 ClrLine(wWindow[OUTPUT_WINDOW].y+wWindow[OUTPUT_WINDOW].cy);
 PutChar(" Stopped... (Type 'x' to continue) ",1,wWindow[OUTPUT_WINDOW].y+wWindow[OUTPUT_WINDOW].cy);
    ResetColor();

    LEAVE_FUNC();
}
