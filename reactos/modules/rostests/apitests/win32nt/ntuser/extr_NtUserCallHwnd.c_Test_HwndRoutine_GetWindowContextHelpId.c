
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HWND ;


 int NtUserCallHwnd (int ,int ) ;
 scalar_t__ NtUserCallHwndParam (int ,int,int ) ;
 int TEST (int) ;
 scalar_t__ TRUE ;
 int _HWNDPARAM_ROUTINE_SETWNDCONTEXTHLPID ;
 int _HWND_ROUTINE_GETWNDCONTEXTHLPID ;

void
Test_HwndRoutine_GetWindowContextHelpId (HWND hWnd)
{
    TEST(NtUserCallHwndParam(hWnd, 0xbadb00b, _HWNDPARAM_ROUTINE_SETWNDCONTEXTHLPID) == TRUE);
    TEST(NtUserCallHwnd(hWnd, _HWND_ROUTINE_GETWNDCONTEXTHLPID) == 0xbadb00b);

}
