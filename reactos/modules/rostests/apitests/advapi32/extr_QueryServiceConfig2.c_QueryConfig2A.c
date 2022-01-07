
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int keyName ;
struct TYPE_14__ {int Delay; int Type; } ;
struct TYPE_13__ {int lpDescription; } ;
struct TYPE_12__ {scalar_t__ cActions; int lpCommand; int lpRebootMsg; TYPE_4__* lpsaActions; int dwResetPeriod; } ;
typedef int SC_HANDLE ;
typedef TYPE_1__* LPSTR ;
typedef TYPE_1__* LPSERVICE_FAILURE_ACTIONSA ;
typedef TYPE_3__* LPSERVICE_DESCRIPTIONA ;
typedef TYPE_4__* LPSC_ACTION ;
typedef int LPCSTR ;
typedef TYPE_1__* LPBYTE ;
typedef scalar_t__ LONG ;
typedef int * HKEY ;
typedef scalar_t__ DWORD ;
typedef int CHAR ;
typedef int BOOL ;


 scalar_t__ ERROR_INSUFFICIENT_BUFFER ;
 scalar_t__ ERROR_SUCCESS ;
 int FALSE ;
 scalar_t__ GetLastError () ;
 int GetProcessHeap () ;
 int HEAP_ZERO_MEMORY ;
 int HKEY_LOCAL_MACHINE ;
 TYPE_1__* HeapAlloc (int ,int ,scalar_t__) ;
 int HeapFree (int ,int ,TYPE_1__*) ;
 int KEY_QUERY_VALUE ;
 int QueryServiceConfig2A (int ,scalar_t__,TYPE_1__*,scalar_t__,scalar_t__*) ;
 scalar_t__ REG_BINARY ;
 int RegCloseKey (int *) ;
 scalar_t__ RegOpenKeyExA (int ,int *,int ,int ,int **) ;
 scalar_t__ RegQueryValueExA (int *,char*,int *,scalar_t__*,TYPE_1__*,scalar_t__*) ;
 scalar_t__ RegReadStringA (int *,char*,TYPE_1__**) ;


 int SetLastError (int) ;
 int StringCbPrintfA (int *,int,char*,int ) ;
 int ok (int,char*,...) ;
 int skip (char*,scalar_t__,...) ;
 int strcmp (int ,TYPE_1__*) ;

__attribute__((used)) static int QueryConfig2A(SC_HANDLE hService, LPCSTR serviceName, DWORD dwInfoLevel)
{
    int iRet = 0;
    LONG lRet = 0;
    DWORD dwRet = 0;
    BOOL bError = FALSE;
    DWORD dwRequiredSize = 0;
    LPBYTE lpBuffer = ((void*)0);

    CHAR keyName[256];
    HKEY hKey = ((void*)0);
    DWORD dwType = 0;


    SetLastError(0xdeadbeef);
    bError = QueryServiceConfig2A(hService,
                                  dwInfoLevel,
                                  ((void*)0),
                                  0,
                                  &dwRequiredSize);
    ok(bError == FALSE && GetLastError() == ERROR_INSUFFICIENT_BUFFER, "(bError, GetLastError()) = (%u, 0x%08lx), expected (FALSE, 0x%08lx)\n", bError, GetLastError(), (DWORD)ERROR_INSUFFICIENT_BUFFER);
    ok(dwRequiredSize != 0, "dwRequiredSize is zero, expected non-zero\n");
    if (dwRequiredSize == 0)
    {
        skip("Required size is null; cannot proceed with QueryConfig2A --> %lu test\n", dwInfoLevel);
        return 1;
    }


    lpBuffer = HeapAlloc(GetProcessHeap(), HEAP_ZERO_MEMORY, dwRequiredSize);
    if (lpBuffer == ((void*)0))
    {
        skip("Cannot allocate %lu bytes of memory\n", dwRequiredSize);
        return 2;
    }


    SetLastError(0xdeadbeef);
    bError = QueryServiceConfig2A(hService,
                                  dwInfoLevel,
                                  lpBuffer,
                                  dwRequiredSize,
                                  &dwRequiredSize);
    ok(bError, "bError = %u, expected TRUE\n", bError);
    if (bError == FALSE)
    {
        skip("QueryServiceConfig2A returned an error; cannot proceed with QueryConfig2A --> %lu test\n", dwInfoLevel);
        HeapFree(GetProcessHeap(), 0, lpBuffer);
        return 3;
    }


    StringCbPrintfA(keyName, sizeof(keyName), "System\\CurrentControlSet\\Services\\%s", serviceName);
    SetLastError(0xdeadbeef);
    lRet = RegOpenKeyExA(HKEY_LOCAL_MACHINE, keyName, 0, KEY_QUERY_VALUE, &hKey);
    ok(lRet == ERROR_SUCCESS, "RegOpenKeyExA failed with 0x%08lx\n", lRet);
    if (lRet != ERROR_SUCCESS)
    {
        skip("No regkey; cannot proceed with QueryConfig2A --> %lu test\n", dwInfoLevel);
        HeapFree(GetProcessHeap(), 0, lpBuffer);
        return 4;
    }

    switch (dwInfoLevel)
    {
        case 129:
        {
            LPSERVICE_DESCRIPTIONA lpDescription = (LPSERVICE_DESCRIPTIONA)lpBuffer;
            LPSTR lpszDescription = ((void*)0);


            dwRet = RegReadStringA(hKey, "Description", &lpszDescription);
            ok(dwRet == ERROR_SUCCESS, "RegReadStringA returned 0x%08lx\n", dwRet);
            ok(lpszDescription != ((void*)0), "lpszDescription is null, expected non-null\n");


            if (lpszDescription)
                iRet = strcmp(lpDescription->lpDescription, lpszDescription);
            else
                iRet = 0;

            ok(iRet == 0, "Retrieved descriptions are different !\n");



            HeapFree(GetProcessHeap(), 0, lpszDescription);

            break;
        }

        case 128:
        {
            LPSERVICE_FAILURE_ACTIONSA lpFailureActions1 = (LPSERVICE_FAILURE_ACTIONSA)lpBuffer;
            LPSERVICE_FAILURE_ACTIONSA lpFailureActions2 = ((void*)0);
            LPSTR lpRebootMessage = ((void*)0);
            LPSTR lpFailureCommand = ((void*)0);
            DWORD i = 0;


            lRet = RegQueryValueExA(hKey,
                                    "FailureActions",
                                    ((void*)0),
                                    &dwType,
                                    ((void*)0),
                                    &dwRequiredSize);
            ok(lRet == ERROR_SUCCESS, "RegQueryValueExA returned 0x%08lx\n", lRet);
            ok(dwType == REG_BINARY, "dwType = %lu, expected REG_BINARY\n", dwType);
            ok(dwRequiredSize != 0, "dwRequiredSize is zero, expected non-zero\n");

            lpFailureActions2 = HeapAlloc(GetProcessHeap(), HEAP_ZERO_MEMORY, dwRequiredSize);
            if (lpFailureActions2 == ((void*)0))
            {
                skip("Cannot allocate %lu bytes of memory\n", dwRequiredSize);
                break;
            }

            lRet = RegQueryValueExA(hKey,
                                    "FailureActions",
                                    ((void*)0),
                                    ((void*)0),
                                    (LPBYTE)lpFailureActions2,
                                    &dwRequiredSize);
            ok(lRet == ERROR_SUCCESS, "RegQueryValueExA returned 0x%08lx\n", lRet);
            ok(dwRequiredSize != 0, "dwRequiredSize is zero, expected non-zero\n");


            RegReadStringA(hKey, "FailureCommand", &lpFailureCommand);
            RegReadStringA(hKey, "RebootMessage" , &lpRebootMessage );


            ok(lpFailureActions1->dwResetPeriod == lpFailureActions2->dwResetPeriod, "lpFailureActions1->dwResetPeriod != lpFailureActions2->dwResetPeriod\n");
            ok(lpFailureActions1->cActions == lpFailureActions2->cActions, "lpFailureActions1->cActions != lpFailureActions2->cActions\n");


            if (lpFailureActions1->cActions == lpFailureActions2->cActions)
            {
                lpFailureActions2->lpsaActions = (lpFailureActions2->cActions > 0 ? (LPSC_ACTION)(lpFailureActions2 + 1) : ((void*)0));

                if (lpFailureActions1->cActions > 0 &&
                    lpFailureActions1->lpsaActions != ((void*)0))
                {
                    for (i = 0; i < lpFailureActions1->cActions; ++i)
                    {
                        ok(lpFailureActions1->lpsaActions[i].Type == lpFailureActions2->lpsaActions[i].Type , "lpFailureActions1->lpsaActions[%lu].Type  != lpFailureActions2->lpsaActions[%lu].Type\n" , i, i);
                        ok(lpFailureActions1->lpsaActions[i].Delay == lpFailureActions2->lpsaActions[i].Delay, "lpFailureActions1->lpsaActions[%lu].Delay != lpFailureActions2->lpsaActions[%lu].Delay\n", i, i);
                    }
                }
            }




            if (lpFailureActions1->lpRebootMsg && lpRebootMessage)
                iRet = strcmp(lpFailureActions1->lpRebootMsg, lpRebootMessage);
            else
                iRet = 0;

            ok(iRet == 0, "Retrieved reboot messages are different !\n");


            if (lpFailureActions1->lpCommand && lpFailureCommand)
                iRet = strcmp(lpFailureActions1->lpCommand, lpFailureCommand);
            else
                iRet = 0;

            ok(iRet == 0, "Retrieved commands are different !\n");



            if (lpRebootMessage)
                HeapFree(GetProcessHeap(), 0, lpRebootMessage);

            if (lpFailureCommand)
                HeapFree(GetProcessHeap(), 0, lpFailureCommand);

            HeapFree(GetProcessHeap(), 0, lpFailureActions2);

            break;
        }

        default:
            skip("Unknown dwInfoLevel %lu, cannot proceed with QueryConfig2A --> %lu test\n", dwInfoLevel, dwInfoLevel);
            break;
    }

    RegCloseKey(hKey);

    HeapFree(GetProcessHeap(), 0, lpBuffer);

    return 0;
}
