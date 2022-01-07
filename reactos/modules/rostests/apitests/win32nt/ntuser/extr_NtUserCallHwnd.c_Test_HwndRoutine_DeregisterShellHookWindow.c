
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HWND ;


 scalar_t__ NtUserCallHwnd (int ,int ) ;
 int TEST (int) ;
 scalar_t__ TRUE ;
 int _HWND_ROUTINE_DEREGISTERSHELLHOOKWINDOW ;

void
Test_HwndRoutine_DeregisterShellHookWindow(HWND hWnd)
{
    TEST(NtUserCallHwnd(hWnd, _HWND_ROUTINE_DEREGISTERSHELLHOOKWINDOW) == TRUE);

}
