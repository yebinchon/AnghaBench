
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ato ;
typedef int WCHAR ;
struct TYPE_3__ {int cbSize; int iTimeOutMSec; } ;
typedef int DWORD ;
typedef TYPE_1__ ACCESSTIMEOUT ;


 int NtUserSystemParametersInfo (int ,int ,TYPE_1__*,int ) ;
 int QueryUserRegValueW (char*,char*,int **,int*,int *) ;
 int SPI_GETACCESSTIMEOUT ;
 int SPI_SETACCESSTIMEOUT ;

void
Test_NtUserSystemParametersInfo_fWinIni(void)
{
    ACCESSTIMEOUT ato;

    WCHAR Buffer[6];
    DWORD cbSize;

    ato.cbSize = sizeof(ato);
    NtUserSystemParametersInfo(SPI_GETACCESSTIMEOUT, 0, &ato, 0);
    ato.iTimeOutMSec++;
    NtUserSystemParametersInfo(SPI_SETACCESSTIMEOUT, 0, &ato, 0);
    ato.iTimeOutMSec--;




    NtUserSystemParametersInfo(SPI_SETACCESSTIMEOUT, 0, &ato, 0);

    cbSize = 6;
    QueryUserRegValueW(L"Control Panel\\Accessibility\\TimeOut", L"TimeToWait", &Buffer, &cbSize, ((void*)0));

}
