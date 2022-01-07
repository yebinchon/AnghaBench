
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ WCHAR ;
typedef scalar_t__ UNICODE_STRING ;


 scalar_t__ ERROR_FILE_NOT_FOUND ;
 scalar_t__ GetLastError () ;
 int MAX_PATH ;
 int NtUserSystemParametersInfo (int ,int,...) ;
 int RtlInitUnicodeString (scalar_t__*,...) ;
 int SPIF_UPDATEINIFILE ;
 int SPI_GETDESKWALLPAPER ;
 int SPI_SETDESKWALLPAPER ;
 int SetLastError (int) ;
 int TEST (int) ;
 scalar_t__ wcscmp (scalar_t__*,...) ;

void
Test_SPI_SETDESKWALLPAPER(void)
{
    UNICODE_STRING ustrOld, ustrNew;
    WCHAR szOld[MAX_PATH];
    WCHAR szNew[MAX_PATH];


    TEST(NtUserSystemParametersInfo(SPI_GETDESKWALLPAPER, MAX_PATH, szOld, 0) == 1);
    RtlInitUnicodeString(&ustrOld, szOld);


    TEST(NtUserSystemParametersInfo(SPI_SETDESKWALLPAPER, 0, L"", 0) == 1);
    TEST(NtUserSystemParametersInfo(SPI_GETDESKWALLPAPER, MAX_PATH, szNew, 0) == 1);
    TEST(szNew[0] == 0);


    RtlInitUnicodeString(&ustrNew, L"");
    TEST(NtUserSystemParametersInfo(SPI_SETDESKWALLPAPER, 0, &ustrNew, 0) == 1);
    TEST(NtUserSystemParametersInfo(SPI_GETDESKWALLPAPER, MAX_PATH, szNew, 0) == 1);
    TEST(szNew[0] == 0);


    TEST(NtUserSystemParametersInfo(SPI_SETDESKWALLPAPER, 0, ((void*)0), 0) == 1);
    TEST(NtUserSystemParametersInfo(SPI_GETDESKWALLPAPER, MAX_PATH, szNew, 0) == 1);
    TEST(wcscmp(szNew, szOld) == 0);


    RtlInitUnicodeString(&ustrNew, L"test.bmp");
    TEST(NtUserSystemParametersInfo(SPI_SETDESKWALLPAPER, 0, &ustrNew, 0) == 1);
    TEST(NtUserSystemParametersInfo(SPI_GETDESKWALLPAPER, MAX_PATH, szNew, 0) == 1);
    TEST(wcscmp(szNew, L"test.bmp") == 0);


    szNew[0] = 0; szNew[1] = 0; szNew[2] = 0;
    TEST(NtUserSystemParametersInfo(SPI_GETDESKWALLPAPER, 3, szNew, 0) == 1);
    TEST(szNew[0] != 0);
    TEST(szNew[1] != 0);
    TEST(szNew[2] != 0);


    SetLastError(0xdeadbeef);
    RtlInitUnicodeString(&ustrNew, L"*#!!-&");
    TEST(NtUserSystemParametersInfo(SPI_SETDESKWALLPAPER, 0, &ustrNew, 0) == 0);
    TEST(GetLastError() == ERROR_FILE_NOT_FOUND);
    TEST(NtUserSystemParametersInfo(SPI_GETDESKWALLPAPER, MAX_PATH, szNew, 0) == 1);
    TEST(wcscmp(szNew, L"*#!!-&") == 0);


    TEST(NtUserSystemParametersInfo(SPI_SETDESKWALLPAPER, MAX_PATH, &ustrOld, SPIF_UPDATEINIFILE) == 1);

}
