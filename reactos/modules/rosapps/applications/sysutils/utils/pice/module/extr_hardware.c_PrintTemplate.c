
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int USHORT ;
struct TYPE_2__ {int y; int cy; } ;


 int COLOR_CAPTION ;
 int COLOR_TEXT ;
 int ClrLine (int) ;
 size_t DATA_WINDOW ;
 int ENTER_FUNC () ;
 int LEAVE_FUNC () ;
 size_t OUTPUT_WINDOW ;
 int PrintCaption () ;
 int PrintLogo (int ) ;
 int ResetColor () ;
 size_t SOURCE_WINDOW ;
 int SetBackgroundColor (int ) ;
 int SetForegroundColor (int ) ;
 int ShowRunningMsg () ;
 int TRUE ;
 TYPE_1__* wWindow ;

void PrintTemplate(void)
{
    USHORT i,j;

 ENTER_FUNC();

    ResetColor();

    for(j=0;j<4;j++)
    {
     for(i=wWindow[j].y;i<(wWindow[j].y+wWindow[j].cy);i++)
        {
      ClrLine(i);
        }
    }

    PrintCaption();

 SetForegroundColor(COLOR_TEXT);
 SetBackgroundColor(COLOR_CAPTION);

 ClrLine(wWindow[DATA_WINDOW].y-1);
 ClrLine(wWindow[SOURCE_WINDOW].y-1);
 ClrLine(wWindow[OUTPUT_WINDOW].y-1);

    ResetColor();

 ShowRunningMsg();
    PrintLogo(TRUE);

 LEAVE_FUNC();
}
