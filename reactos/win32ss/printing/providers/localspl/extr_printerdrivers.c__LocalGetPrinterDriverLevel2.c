
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_8__ {int cVersion; } ;
struct TYPE_7__ {TYPE_1__* pPrinter; } ;
struct TYPE_6__ {char* pwszPrinterDriver; } ;
typedef TYPE_2__* PLOCAL_PRINTER_HANDLE ;
typedef int* PDWORD ;
typedef TYPE_3__* PDRIVER_INFO_2W ;
typedef char* PCWSTR ;
typedef int PBYTE ;
typedef size_t DWORD ;
typedef int DRIVER_INFO_2W ;


 int PackStrings (char**,int ,int ,int ) ;
 size_t _countof (char**) ;
 int dwDriverInfo2Offsets ;
 int wcslen (char*) ;
 char* wszCurrentEnvironment ;

__attribute__((used)) static void
_LocalGetPrinterDriverLevel2(PLOCAL_PRINTER_HANDLE pHandle, PDRIVER_INFO_2W* ppDriverInfo, PBYTE* ppDriverInfoEnd, PDWORD pcbNeeded)
{
    DWORD n;
    PCWSTR pwszStrings[5];


    pwszStrings[0] = pHandle->pPrinter->pwszPrinterDriver;
    pwszStrings[1] = wszCurrentEnvironment;
    pwszStrings[2] = L"c:\\reactos\\system32\\localspl.dll";
    pwszStrings[3] = L"c:\\reactos\\system32\\localspl.dll";
    pwszStrings[4] = L"c:\\reactos\\system32\\localspl.dll";


    if (!ppDriverInfo)
    {
        for (n = 0; n < _countof(pwszStrings); ++n)
        {
            *pcbNeeded += (wcslen(pwszStrings[n]) + 1) * sizeof(WCHAR);
        }

        *pcbNeeded += sizeof(DRIVER_INFO_2W);
        return;
    }

    (*ppDriverInfo)->cVersion = 3;


    *ppDriverInfoEnd = PackStrings(pwszStrings, (PBYTE)(*ppDriverInfo), dwDriverInfo2Offsets, *ppDriverInfoEnd);
    (*ppDriverInfo)++;
}
