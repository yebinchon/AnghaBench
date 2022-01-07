
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_3__ {int pwszName; } ;
typedef scalar_t__ PMONITOR_INFO_1W ;
typedef TYPE_1__* PLOCAL_PRINT_MONITOR ;
typedef int* PDWORD ;
typedef int PCWSTR ;
typedef int PBYTE ;
typedef int MONITOR_INFO_1W ;
typedef int DWORD ;


 int PackStrings (int *,int ,int ,int ) ;
 int dwMonitorInfo1Offsets ;
 int wcslen (int ) ;

__attribute__((used)) static void
_LocalGetMonitorLevel1(PLOCAL_PRINT_MONITOR pPrintMonitor, PMONITOR_INFO_1W* ppMonitorInfo, PBYTE* ppMonitorInfoEnd, PDWORD pcbNeeded)
{
    DWORD cbMonitorName;
    PCWSTR pwszStrings[1];


    if (!ppMonitorInfo)
    {
        cbMonitorName = (wcslen(pPrintMonitor->pwszName) + 1) * sizeof(WCHAR);

        *pcbNeeded += sizeof(MONITOR_INFO_1W) + cbMonitorName;
        return;
    }


    pwszStrings[0] = pPrintMonitor->pwszName;


    *ppMonitorInfoEnd = PackStrings(pwszStrings, (PBYTE)(*ppMonitorInfo), dwMonitorInfo1Offsets, *ppMonitorInfoEnd);
    (*ppMonitorInfo)++;
}
