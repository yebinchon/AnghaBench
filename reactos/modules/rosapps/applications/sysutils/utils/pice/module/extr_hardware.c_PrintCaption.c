
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int title ;
typedef int LPSTR ;


 int COLOR_CAPTION ;
 int COLOR_TEXT ;
 int ClrLine (int ) ;
 int GLOBAL_SCREEN_WIDTH ;
 int PutChar (int ,int,int ) ;
 int ResetColor () ;
 int SetBackgroundColor (int ) ;
 int SetForegroundColor (int ) ;

void PrintCaption(void)
{
    const char title[]=" PrivateICE system level debugger (REACTOS) ";

    SetForegroundColor(COLOR_TEXT);
 SetBackgroundColor(COLOR_CAPTION);

 ClrLine(0);
 PutChar((LPSTR)title,
     (GLOBAL_SCREEN_WIDTH-sizeof(title))/2,
           0);

    ResetColor();
}
