
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ HWND ;


 scalar_t__ g_ChildWindow ;
 scalar_t__ g_TestWindow ;

__attribute__((used)) static int get_iwnd(HWND hWnd)
{
    if (!g_TestWindow)
        g_TestWindow = hWnd;
    if (!g_ChildWindow && hWnd != g_TestWindow)
        g_ChildWindow = hWnd;

    if (hWnd == g_TestWindow)
        return 1;
    else if (hWnd == g_ChildWindow)
        return 2;
    return 0;
}
