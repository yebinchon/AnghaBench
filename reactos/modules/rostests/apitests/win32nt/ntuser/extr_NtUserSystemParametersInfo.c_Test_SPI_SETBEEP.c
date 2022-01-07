
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int szReg ;
typedef int WCHAR ;
typedef int DWORD ;
typedef int BOOL ;


 scalar_t__ ERROR_SUCCESS ;
 int KEY_SOUND ;
 int NtUserSystemParametersInfo (int ,int,int*,int ) ;
 scalar_t__ QueryUserRegValueW (int ,int ,int **,int*,int *) ;
 int SPIF_UPDATEINIFILE ;
 int SPI_GETBEEP ;
 int SPI_SETBEEP ;
 int TEST (int) ;
 int VAL_BEEP ;
 scalar_t__ _wcsicmp (int *,char*) ;

void
Test_SPI_SETBEEP(void)
{
    BOOL bOrig, bTemp = 0;
    WCHAR szReg[10];
    DWORD cbSize;


    NtUserSystemParametersInfo(SPI_GETBEEP, 0, &bOrig, 0);


    NtUserSystemParametersInfo(SPI_SETBEEP, 0, ((void*)0), SPIF_UPDATEINIFILE);
    NtUserSystemParametersInfo(SPI_GETBEEP, 0, &bTemp, 0);
    TEST(bTemp == 0);
    cbSize = sizeof(szReg);
    TEST(QueryUserRegValueW(KEY_SOUND, VAL_BEEP, &szReg, &cbSize, ((void*)0)) == ERROR_SUCCESS);
    TEST(_wcsicmp(szReg, L"No") == 0);


    NtUserSystemParametersInfo(SPI_SETBEEP, 1, ((void*)0), SPIF_UPDATEINIFILE);
    NtUserSystemParametersInfo(SPI_GETBEEP, 0, &bTemp, 0);
    TEST(bTemp == 1);
    cbSize = sizeof(szReg);
    TEST(QueryUserRegValueW(KEY_SOUND, VAL_BEEP, &szReg, &cbSize, ((void*)0)) == ERROR_SUCCESS);
    TEST(_wcsicmp(szReg, L"Yes") == 0);


    NtUserSystemParametersInfo(SPI_SETBEEP, 2, ((void*)0), SPIF_UPDATEINIFILE);
    NtUserSystemParametersInfo(SPI_GETBEEP, 0, &bTemp, 0);
    TEST(bTemp == 1);
    cbSize = sizeof(szReg);
    TEST(QueryUserRegValueW(KEY_SOUND, VAL_BEEP, &szReg, &cbSize, ((void*)0)) == ERROR_SUCCESS);
    TEST(_wcsicmp(szReg, L"Yes") == 0);


    NtUserSystemParametersInfo(SPI_SETBEEP, 0, &bOrig, SPIF_UPDATEINIFILE);
}
