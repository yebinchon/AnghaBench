
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_12__ {int (* pfnEnumPorts ) (int *,int,int *,scalar_t__,scalar_t__*,scalar_t__*) ;} ;
struct TYPE_18__ {TYPE_1__ Monitor; } ;
struct TYPE_17__ {struct TYPE_17__* Flink; } ;
struct TYPE_16__ {int Entry; scalar_t__ pwszName; TYPE_4__* pPrintMonitor; } ;
struct TYPE_15__ {int pwszName; scalar_t__ pMonitor; int hMonitor; scalar_t__ bIsLevel2; } ;
struct TYPE_14__ {int (* pfnEnumPorts ) (int ,int *,int,int *,scalar_t__,scalar_t__*,scalar_t__*) ;} ;
struct TYPE_13__ {int pName; } ;
typedef scalar_t__ PWSTR ;
typedef TYPE_2__* PPORT_INFO_1W ;
typedef TYPE_3__* PMONITOR2 ;
typedef TYPE_4__* PLOCAL_PRINT_MONITOR ;
typedef TYPE_5__* PLOCAL_PORT ;
typedef TYPE_6__* PLIST_ENTRY ;
typedef int * PBYTE ;
typedef TYPE_7__* LPMONITOREX ;
typedef int LOCAL_PORT ;
typedef scalar_t__ DWORD ;
typedef int BOOL ;


 TYPE_4__* CONTAINING_RECORD (TYPE_6__*,int ,int ) ;
 int CopyMemory (scalar_t__,int ,scalar_t__) ;
 void* DllAllocSplMem (int) ;
 int DllFreeSplMem (TYPE_2__*) ;
 int ERR (char*,...) ;
 scalar_t__ ERROR_INSUFFICIENT_BUFFER ;
 scalar_t__ ERROR_NOT_ENOUGH_MEMORY ;
 scalar_t__ ERROR_SUCCESS ;
 int Entry ;
 scalar_t__ GetLastError () ;
 int InitializeListHead (int *) ;
 int InsertTailList (int *,int *) ;
 int LOCAL_PRINT_MONITOR ;
 TYPE_6__ PrintMonitorList ;
 int SetLastError (scalar_t__) ;
 int TRACE (char*) ;
 int _PortList ;
 int stub1 (int ,int *,int,int *,scalar_t__,scalar_t__*,scalar_t__*) ;
 int stub2 (int *,int,int *,scalar_t__,scalar_t__*,scalar_t__*) ;
 int stub3 (int ,int *,int,int *,scalar_t__,scalar_t__*,scalar_t__*) ;
 int stub4 (int *,int,int *,scalar_t__,scalar_t__*,scalar_t__*) ;
 int wcslen (int ) ;

BOOL
InitializePortList(void)
{
    BOOL bReturnValue;
    DWORD cbNeeded;
    DWORD cbPortName;
    DWORD dwErrorCode;
    DWORD dwReturned;
    DWORD i;
    PLOCAL_PORT pPort;
    PLOCAL_PRINT_MONITOR pPrintMonitor;
    PLIST_ENTRY pEntry;
    PPORT_INFO_1W p;
    PPORT_INFO_1W pPortInfo1 = ((void*)0);

    TRACE("InitializePortList()\n");


    InitializeListHead(&_PortList);


    for (pEntry = PrintMonitorList.Flink; pEntry != &PrintMonitorList; pEntry = pEntry->Flink)
    {

        if (pPortInfo1)
        {
            DllFreeSplMem(pPortInfo1);
            pPortInfo1 = ((void*)0);
        }

        pPrintMonitor = CONTAINING_RECORD(pEntry, LOCAL_PRINT_MONITOR, Entry);


        if (pPrintMonitor->bIsLevel2)
            bReturnValue = ((PMONITOR2)pPrintMonitor->pMonitor)->pfnEnumPorts(pPrintMonitor->hMonitor, ((void*)0), 1, ((void*)0), 0, &cbNeeded, &dwReturned);
        else
            bReturnValue = ((LPMONITOREX)pPrintMonitor->pMonitor)->Monitor.pfnEnumPorts(((void*)0), 1, ((void*)0), 0, &cbNeeded, &dwReturned);


        if (GetLastError() != ERROR_INSUFFICIENT_BUFFER)
        {
            ERR("Print Monitor \"%S\" failed with error %lu on EnumPorts!\n", pPrintMonitor->pwszName, GetLastError());
            continue;
        }


        pPortInfo1 = DllAllocSplMem(cbNeeded);
        if (!pPortInfo1)
        {
            dwErrorCode = ERROR_NOT_ENOUGH_MEMORY;
            ERR("DllAllocSplMem failed!\n");
            goto Cleanup;
        }


        if (pPrintMonitor->bIsLevel2)
            bReturnValue = ((PMONITOR2)pPrintMonitor->pMonitor)->pfnEnumPorts(pPrintMonitor->hMonitor, ((void*)0), 1, (PBYTE)pPortInfo1, cbNeeded, &cbNeeded, &dwReturned);
        else
            bReturnValue = ((LPMONITOREX)pPrintMonitor->pMonitor)->Monitor.pfnEnumPorts(((void*)0), 1, (PBYTE)pPortInfo1, cbNeeded, &cbNeeded, &dwReturned);


        if (!bReturnValue)
        {
            ERR("Print Monitor \"%S\" failed with error %lu on EnumPorts!\n", pPrintMonitor->pwszName, GetLastError());
            continue;
        }


        p = pPortInfo1;

        for (i = 0; i < dwReturned; i++)
        {
            cbPortName = (wcslen(p->pName) + 1) * sizeof(WCHAR);


            pPort = DllAllocSplMem(sizeof(LOCAL_PORT) + cbPortName);
            if (!pPort)
            {
                dwErrorCode = ERROR_NOT_ENOUGH_MEMORY;
                ERR("DllAllocSplMem failed!\n");
                goto Cleanup;
            }

            pPort->pPrintMonitor = pPrintMonitor;
            pPort->pwszName = (PWSTR)((PBYTE)pPort + sizeof(LOCAL_PORT));
            CopyMemory(pPort->pwszName, p->pName, cbPortName);


            InsertTailList(&_PortList, &pPort->Entry);
            p++;
        }
    }

    dwErrorCode = ERROR_SUCCESS;

Cleanup:

    if (pPortInfo1)
        DllFreeSplMem(pPortInfo1);

    SetLastError(dwErrorCode);
    return (dwErrorCode == ERROR_SUCCESS);
}
