
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ HWND ;
typedef scalar_t__ HDC ;
typedef int DWORD ;


 scalar_t__ GetDC (int *) ;
 scalar_t__ GetDesktopWindow () ;
 int IsWindow (scalar_t__) ;
 scalar_t__ NtUserCallOneParam (int ,int) ;
 int TEST (int) ;

void
Test_OneParamRoutine_WindowFromDC(void)
{
    HDC hDC = GetDC(((void*)0));
    HWND hWnd;

    hWnd = (HWND)NtUserCallOneParam((DWORD)hDC, 0x1f);
    TEST(hWnd != 0);
    TEST(IsWindow(hWnd));
    TEST(hWnd == GetDesktopWindow());

}
