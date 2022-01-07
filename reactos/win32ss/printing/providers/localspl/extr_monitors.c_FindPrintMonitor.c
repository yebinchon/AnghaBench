
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {struct TYPE_8__* Flink; } ;
struct TYPE_7__ {int pwszName; } ;
typedef TYPE_1__* PLOCAL_PRINT_MONITOR ;
typedef TYPE_2__* PLIST_ENTRY ;
typedef int PCWSTR ;


 TYPE_1__* CONTAINING_RECORD (TYPE_2__*,int ,int ) ;
 int Entry ;
 int LOCAL_PRINT_MONITOR ;
 TYPE_2__ PrintMonitorList ;
 int TRACE (char*,int ) ;
 scalar_t__ _wcsicmp (int ,int ) ;

PLOCAL_PRINT_MONITOR
FindPrintMonitor(PCWSTR pwszName)
{
    PLIST_ENTRY pEntry;
    PLOCAL_PRINT_MONITOR pPrintMonitor;

    TRACE("FindPrintMonitor(%S)\n", pwszName);

    if (!pwszName)
        return ((void*)0);

    for (pEntry = PrintMonitorList.Flink; pEntry != &PrintMonitorList; pEntry = pEntry->Flink)
    {
        pPrintMonitor = CONTAINING_RECORD(pEntry, LOCAL_PRINT_MONITOR, Entry);

        if (_wcsicmp(pPrintMonitor->pwszName, pwszName) == 0)
            return pPrintMonitor;
    }

    return ((void*)0);
}
