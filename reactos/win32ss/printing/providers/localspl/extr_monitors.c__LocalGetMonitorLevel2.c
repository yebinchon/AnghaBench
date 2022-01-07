
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_3__ {scalar_t__ pwszFileName; scalar_t__ pwszName; } ;
typedef scalar_t__ PWSTR ;
typedef scalar_t__ PMONITOR_INFO_2W ;
typedef TYPE_1__* PLOCAL_PRINT_MONITOR ;
typedef int * PDWORD ;
typedef scalar_t__ PCWSTR ;
typedef int PBYTE ;
typedef int MONITOR_INFO_2W ;
typedef int DWORD ;


 int PackStrings (scalar_t__*,int ,int ,int ) ;
 scalar_t__ cbCurrentEnvironment ;
 int dwMonitorInfo2Offsets ;
 int wcslen (scalar_t__) ;
 scalar_t__ wszCurrentEnvironment ;

__attribute__((used)) static void
_LocalGetMonitorLevel2(PLOCAL_PRINT_MONITOR pPrintMonitor, PMONITOR_INFO_2W* ppMonitorInfo, PBYTE* ppMonitorInfoEnd, PDWORD pcbNeeded)
{
    DWORD cbFileName;
    DWORD cbMonitorName;
    PCWSTR pwszStrings[3];


    if (!ppMonitorInfo)
    {
        cbMonitorName = (wcslen(pPrintMonitor->pwszName) + 1) * sizeof(WCHAR);
        cbFileName = (wcslen(pPrintMonitor->pwszFileName) + 1) * sizeof(WCHAR);

        *pcbNeeded += sizeof(MONITOR_INFO_2W) + cbMonitorName + cbCurrentEnvironment + cbFileName;
        return;
    }


    pwszStrings[0] = pPrintMonitor->pwszName;


    pwszStrings[1] = (PWSTR)wszCurrentEnvironment;


    pwszStrings[2] = pPrintMonitor->pwszFileName;


    *ppMonitorInfoEnd = PackStrings(pwszStrings, (PBYTE)(*ppMonitorInfo), dwMonitorInfo2Offsets, *ppMonitorInfoEnd);
    (*ppMonitorInfo)++;
}
