
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int left; int top; } ;
typedef TYPE_1__ RECT ;


 int GetConsoleHwnd () ;
 int GetWindowRect (int ,TYPE_1__*) ;
 int OK ;
 int s_hwnd ;

int
mch_get_winpos(int *x, int *y)
{
    RECT rect;

    GetConsoleHwnd();
    GetWindowRect(s_hwnd, &rect);
    *x = rect.left;
    *y = rect.top;
    return OK;
}
