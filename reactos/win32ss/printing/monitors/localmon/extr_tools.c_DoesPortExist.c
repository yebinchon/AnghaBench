
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int pName; } ;
typedef TYPE_1__* PPORT_INFO_1W ;
typedef int PCWSTR ;
typedef int * PBYTE ;
typedef scalar_t__ DWORD ;
typedef int BOOL ;


 TYPE_1__* DllAllocSplMem (scalar_t__) ;
 int DllFreeSplMem (TYPE_1__*) ;
 int ERR (char*,scalar_t__) ;
 scalar_t__ ERROR_INSUFFICIENT_BUFFER ;
 scalar_t__ ERROR_NOT_ENOUGH_MEMORY ;
 scalar_t__ ERROR_SUCCESS ;
 int EnumPortsW (int *,int,int *,scalar_t__,scalar_t__*,scalar_t__*) ;
 int FALSE ;
 scalar_t__ GetLastError () ;
 int SetLastError (scalar_t__) ;
 int TRUE ;
 scalar_t__ wcsicmp (int ,int ) ;

BOOL
DoesPortExist(PCWSTR pwszPortName)
{
    BOOL bReturnValue = FALSE;
    DWORD cbNeeded;
    DWORD dwErrorCode;
    DWORD dwReturned;
    DWORD i;
    PPORT_INFO_1W p;
    PPORT_INFO_1W pPortInfo1 = ((void*)0);


    EnumPortsW(((void*)0), 1, ((void*)0), 0, &cbNeeded, &dwReturned);
    if (GetLastError() != ERROR_INSUFFICIENT_BUFFER)
    {
        dwErrorCode = GetLastError();
        ERR("EnumPortsW failed with error %lu!\n", dwErrorCode);
        goto Cleanup;
    }


    pPortInfo1 = DllAllocSplMem(cbNeeded);
    if (!pPortInfo1)
    {
        dwErrorCode = ERROR_NOT_ENOUGH_MEMORY;
        ERR("DllAllocSplMem failed with error %lu!\n", GetLastError());
        goto Cleanup;
    }


    if (!EnumPortsW(((void*)0), 1, (PBYTE)pPortInfo1, cbNeeded, &cbNeeded, &dwReturned))
    {
        dwErrorCode = GetLastError();
        ERR("EnumPortsW failed with error %lu!\n", dwErrorCode);
        goto Cleanup;
    }


    dwErrorCode = ERROR_SUCCESS;
    p = pPortInfo1;

    for (i = 0; i < dwReturned; i++)
    {

        if (wcsicmp(p->pName, pwszPortName) == 0)
        {
            bReturnValue = TRUE;
            goto Cleanup;
        }

        p++;
    }

Cleanup:
    if (pPortInfo1)
        DllFreeSplMem(pPortInfo1);

    SetLastError(dwErrorCode);
    return bReturnValue;
}
