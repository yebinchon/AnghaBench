
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HWND ;


 scalar_t__ NtUserCallHwndLock (int ,int) ;
 int TEST (int) ;

void
Test_HwndLockRoutine_CheckImeShowStatusInThread(HWND hWnd)
{
    TEST(NtUserCallHwndLock(hWnd, 0x56) != 0);

}
