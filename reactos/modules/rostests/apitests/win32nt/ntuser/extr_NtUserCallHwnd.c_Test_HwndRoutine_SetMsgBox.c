
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HWND ;


 scalar_t__ FALSE ;
 scalar_t__ NtUserCallHwnd (int ,int) ;
 int TEST (int) ;

void
Test_HwndRoutine_SetMsgBox(HWND hWnd)
{
    TEST(NtUserCallHwnd(hWnd, 0x49) != FALSE);

}
