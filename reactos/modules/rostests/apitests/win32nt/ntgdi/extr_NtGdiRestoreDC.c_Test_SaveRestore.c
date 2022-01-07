
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HDC ;
typedef int BOOL ;


 scalar_t__ ERROR_INVALID_PARAMETER ;
 scalar_t__ GetLastError () ;
 int NtGdiRestoreDC (int ,int) ;
 int NtGdiSaveDC (int ) ;
 int SetLastError (int ) ;
 int SetSpecialDCState (int ) ;
 int SetSpecialDCState2 (int ) ;
 int TEST (int) ;
 int Test_IsSpecialState (int ,int ) ;

__attribute__((used)) static
void
Test_SaveRestore(HDC hdc, BOOL bMemDC)
{
    SetSpecialDCState(hdc);
    NtGdiSaveDC(hdc);
    SetSpecialDCState2(hdc);

    SetLastError(0);
    TEST(NtGdiRestoreDC(hdc, 2) == 0);
    TEST(GetLastError() == ERROR_INVALID_PARAMETER);

    SetLastError(0);
    TEST(NtGdiRestoreDC(hdc, 0) == 0);
    TEST(GetLastError() == ERROR_INVALID_PARAMETER);

    SetLastError(0);
    TEST(NtGdiRestoreDC(hdc, -2) == 0);
    TEST(GetLastError() == ERROR_INVALID_PARAMETER);

    SetLastError(0);
    TEST(NtGdiRestoreDC(hdc, 1) == 1);
    TEST(GetLastError() == 0);

    Test_IsSpecialState(hdc, bMemDC);
}
