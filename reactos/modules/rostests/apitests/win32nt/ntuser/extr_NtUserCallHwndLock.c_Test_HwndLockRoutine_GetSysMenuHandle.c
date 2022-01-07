
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HWND ;


 int NtUserCallHwndLock (int ,int) ;

void
Test_HwndLockRoutine_GetSysMenuHandle(HWND hWnd)
{
    NtUserCallHwndLock(hWnd, 0x5c);



}
