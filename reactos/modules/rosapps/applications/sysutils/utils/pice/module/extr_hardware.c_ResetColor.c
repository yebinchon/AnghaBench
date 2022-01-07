
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int COLOR_BACKGROUND ;
 int COLOR_FOREGROUND ;
 int SetBackgroundColor (int ) ;
 int SetForegroundColor (int ) ;

void ResetColor(void)
{
    SetForegroundColor(COLOR_FOREGROUND);
 SetBackgroundColor(COLOR_BACKGROUND);
}
