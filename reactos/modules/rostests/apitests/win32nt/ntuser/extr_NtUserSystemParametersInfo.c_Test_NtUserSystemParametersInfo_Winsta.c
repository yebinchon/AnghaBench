
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * PVOID ;
typedef int INT ;
typedef int HWINSTA ;
typedef int BOOL ;


 int CreateWindowStation (int *,int ,int ,int *) ;
 scalar_t__ ERROR_ACCESS_DENIED ;
 scalar_t__ ERROR_REQUIRES_INTERACTIVE_WINDOWSTATION ;
 scalar_t__ GetLastError () ;
 int GetProcessWindowStation () ;
 int READ_CONTROL ;
 int SPI_GETBEEP ;
 int SPI_GETBORDER ;
 int SPI_GETKEYBOARDCUES ;
 int SPI_GETKEYBOARDSPEED ;
 int SPI_GETMOUSE ;
 int SPI_GETSCREENSAVETIMEOUT ;
 int SPI_ICONHORIZONTALSPACING ;
 int SPI_SETBEEP ;
 int SPI_SETBORDER ;
 int SPI_SETKEYBOARDCUES ;
 int SPI_SETKEYBOARDSPEED ;
 int SPI_SETMOUSE ;
 int SPI_SETSCREENSAVETIMEOUT ;
 int SetProcessWindowStation (int ) ;
 scalar_t__ SystemParametersInfoA (int ,int,int *,int ) ;
 int TEST (int) ;
 int printf (char*,int ,int ) ;

void
Test_NtUserSystemParametersInfo_Winsta(void)
{
    HWINSTA hwinsta, hwinstaOld;
    INT ai[20];
    BOOL bRet;


    hwinstaOld = GetProcessWindowStation();
    hwinsta = CreateWindowStation(((void*)0), 0, READ_CONTROL, ((void*)0));
    SetProcessWindowStation(hwinsta);
    printf("hwinstaOld=%p, hwinsta=%p\n", hwinstaOld, hwinsta);


    TEST(SystemParametersInfoA(SPI_GETBEEP, 0, ai, 0) == 0);
    TEST(GetLastError() == ERROR_ACCESS_DENIED);
    TEST(SystemParametersInfoA(SPI_SETBEEP, 0, ai, 0) == 0);
    TEST(GetLastError() == ERROR_REQUIRES_INTERACTIVE_WINDOWSTATION);
    TEST(SystemParametersInfoA(SPI_GETMOUSE, 0, ai, 0) == 0);
    TEST(GetLastError() == ERROR_ACCESS_DENIED);
    TEST(SystemParametersInfoA(SPI_SETMOUSE, 0, ai, 0) == 0);
    TEST(GetLastError() == ERROR_REQUIRES_INTERACTIVE_WINDOWSTATION);
    TEST(SystemParametersInfoA(SPI_GETBORDER, 0, ai, 0) == 0);
    TEST(GetLastError() == ERROR_ACCESS_DENIED);
    TEST(SystemParametersInfoA(SPI_SETBORDER, 0, ai, 0) == 0);
    TEST(GetLastError() == ERROR_REQUIRES_INTERACTIVE_WINDOWSTATION);
    TEST(SystemParametersInfoA(SPI_GETKEYBOARDSPEED, 0, ai, 0) == 0);
    TEST(GetLastError() == ERROR_ACCESS_DENIED);
    TEST(SystemParametersInfoA(SPI_SETKEYBOARDSPEED, 0, ai, 0) == 0);
    TEST(GetLastError() == ERROR_REQUIRES_INTERACTIVE_WINDOWSTATION);
    TEST(SystemParametersInfoA(SPI_ICONHORIZONTALSPACING, 0, ai, 0) == 0);
    TEST(GetLastError() == ERROR_ACCESS_DENIED);
    TEST(SystemParametersInfoA(SPI_ICONHORIZONTALSPACING, 32, 0, 0) == 0);
    TEST(GetLastError() == ERROR_REQUIRES_INTERACTIVE_WINDOWSTATION);
    TEST(SystemParametersInfoA(SPI_GETSCREENSAVETIMEOUT, 0, ai, 0) == 0);
    TEST(GetLastError() == ERROR_ACCESS_DENIED);
    TEST(SystemParametersInfoA(SPI_SETSCREENSAVETIMEOUT, 0, ai, 0) == 0);
    TEST(GetLastError() == ERROR_REQUIRES_INTERACTIVE_WINDOWSTATION);
    TEST(SystemParametersInfoA(SPI_GETKEYBOARDCUES, 0, &bRet, 0) == 0);
    TEST(GetLastError() == ERROR_ACCESS_DENIED);
    TEST(SystemParametersInfoA(SPI_SETKEYBOARDCUES, 0, (PVOID)1, 0) == 0);
    TEST(GetLastError() == ERROR_REQUIRES_INTERACTIVE_WINDOWSTATION);


    SetProcessWindowStation(hwinstaOld);
}
