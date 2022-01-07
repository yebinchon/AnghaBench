
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HWND ;


 int HWND_ROUTINE_GETWNDCONTEXTHLPID ;
 int NtUserCallHwnd (int ,int ) ;
 scalar_t__ NtUserCallHwndParam (int ,int,int ) ;
 int TEST (int) ;
 scalar_t__ TRUE ;
 int _HWNDPARAM_ROUTINE_SETWNDCONTEXTHLPID ;

void
Test_HwndParamRoutine_SetWindowContextHelpId(HWND hWnd)
{
    TEST(NtUserCallHwndParam(hWnd, 12345, _HWNDPARAM_ROUTINE_SETWNDCONTEXTHLPID) == TRUE);
    TEST(NtUserCallHwnd(hWnd, HWND_ROUTINE_GETWNDCONTEXTHLPID) == 12345);
}
