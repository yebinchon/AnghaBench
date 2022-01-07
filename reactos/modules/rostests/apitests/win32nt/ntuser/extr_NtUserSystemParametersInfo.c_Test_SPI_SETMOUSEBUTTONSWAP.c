
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int szReg ;
typedef int WCHAR ;
typedef int DWORD ;
typedef int BOOL ;


 scalar_t__ ERROR_SUCCESS ;
 int GetSystemMetrics (int ) ;
 int KEY_MOUSE ;
 int NtUserSystemParametersInfo (int ,int,int *,int ) ;
 scalar_t__ QueryUserRegValueW (int ,int ,int **,int*,int *) ;
 int SM_SWAPBUTTON ;
 int SPIF_UPDATEINIFILE ;
 int SPI_SETMOUSEBUTTONSWAP ;
 int TEST (int) ;
 int VAL_SWAP ;
 scalar_t__ _wcsicmp (int *,char*) ;

void
Test_SPI_SETMOUSEBUTTONSWAP(void)
{
    BOOL bOrig, bTemp = 0;
    WCHAR szReg[10];
    DWORD cbSize;


    bOrig = GetSystemMetrics(SM_SWAPBUTTON);


    NtUserSystemParametersInfo(SPI_SETMOUSEBUTTONSWAP, 0, ((void*)0), SPIF_UPDATEINIFILE);
    bTemp = GetSystemMetrics(SM_SWAPBUTTON);
    TEST(bTemp == 0);
    cbSize = sizeof(szReg);
    TEST(QueryUserRegValueW(KEY_MOUSE, VAL_SWAP, &szReg, &cbSize, ((void*)0)) == ERROR_SUCCESS);
    TEST(_wcsicmp(szReg, L"0") == 0);


    NtUserSystemParametersInfo(SPI_SETMOUSEBUTTONSWAP, 1, ((void*)0), SPIF_UPDATEINIFILE);
    bTemp = GetSystemMetrics(SM_SWAPBUTTON);
    TEST(bTemp == 1);
    cbSize = sizeof(szReg);
    TEST(QueryUserRegValueW(KEY_MOUSE, VAL_SWAP, &szReg, &cbSize, ((void*)0)) == ERROR_SUCCESS);
    TEST(_wcsicmp(szReg, L"1") == 0);


    NtUserSystemParametersInfo(SPI_SETMOUSEBUTTONSWAP, 2, ((void*)0), SPIF_UPDATEINIFILE);
    bTemp = GetSystemMetrics(SM_SWAPBUTTON);
    TEST(bTemp == 1);
    cbSize = sizeof(szReg);
    TEST(QueryUserRegValueW(KEY_MOUSE, VAL_SWAP, &szReg, &cbSize, ((void*)0)) == ERROR_SUCCESS);
    TEST(_wcsicmp(szReg, L"2") == 0);


    NtUserSystemParametersInfo(SPI_SETMOUSEBUTTONSWAP, -1, ((void*)0), SPIF_UPDATEINIFILE);
    bTemp = GetSystemMetrics(SM_SWAPBUTTON);
    TEST(bTemp == 1);
    cbSize = sizeof(szReg);
    TEST(QueryUserRegValueW(KEY_MOUSE, VAL_SWAP, &szReg, &cbSize, ((void*)0)) == ERROR_SUCCESS);
    TEST(_wcsicmp(szReg, L"-1") == 0);


    NtUserSystemParametersInfo(SPI_SETMOUSEBUTTONSWAP, bOrig, 0, SPIF_UPDATEINIFILE);


}
