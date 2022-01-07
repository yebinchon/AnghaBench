
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_5__ {TYPE_1__* pPrinter; } ;
struct TYPE_4__ {int pwszPrinterDriver; } ;
typedef TYPE_2__* PLOCAL_PRINTER_HANDLE ;
typedef int* PDWORD ;
typedef scalar_t__ PDRIVER_INFO_1W ;
typedef int PCWSTR ;
typedef int PBYTE ;
typedef size_t DWORD ;
typedef int DRIVER_INFO_1W ;


 int PackStrings (int *,int ,int ,int ) ;
 size_t _countof (int *) ;
 int dwDriverInfo1Offsets ;
 int wcslen (int ) ;

__attribute__((used)) static void
_LocalGetPrinterDriverLevel1(PLOCAL_PRINTER_HANDLE pHandle, PDRIVER_INFO_1W* ppDriverInfo, PBYTE* ppDriverInfoEnd, PDWORD pcbNeeded)
{
    DWORD n;
    PCWSTR pwszStrings[1];


    pwszStrings[0] = pHandle->pPrinter->pwszPrinterDriver;


    if (!ppDriverInfo)
    {
        for (n = 0; n < _countof(pwszStrings); ++n)
        {
            *pcbNeeded += (wcslen(pwszStrings[n]) + 1) * sizeof(WCHAR);
        }

        *pcbNeeded += sizeof(DRIVER_INFO_1W);
        return;
    }



    *ppDriverInfoEnd = PackStrings(pwszStrings, (PBYTE)(*ppDriverInfo), dwDriverInfo1Offsets, *ppDriverInfoEnd);
    (*ppDriverInfo)++;
}
