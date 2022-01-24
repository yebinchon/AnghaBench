#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  keyName ;
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_14__ {int /*<<< orphan*/  Delay; int /*<<< orphan*/  Type; } ;
struct TYPE_13__ {int /*<<< orphan*/  lpDescription; } ;
struct TYPE_12__ {scalar_t__ cActions; int /*<<< orphan*/  lpCommand; int /*<<< orphan*/  lpRebootMsg; TYPE_4__* lpsaActions; int /*<<< orphan*/  dwResetPeriod; } ;
typedef  int /*<<< orphan*/  SC_HANDLE ;
typedef  TYPE_1__* LPWSTR ;
typedef  TYPE_1__* LPSERVICE_FAILURE_ACTIONSW ;
typedef  TYPE_3__* LPSERVICE_DESCRIPTIONW ;
typedef  TYPE_4__* LPSC_ACTION ;
typedef  int /*<<< orphan*/  LPCWSTR ;
typedef  TYPE_1__* LPBYTE ;
typedef  scalar_t__ LONG ;
typedef  int /*<<< orphan*/ * HKEY ;
typedef  scalar_t__ DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 scalar_t__ ERROR_INSUFFICIENT_BUFFER ; 
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  HEAP_ZERO_MEMORY ; 
 int /*<<< orphan*/  HKEY_LOCAL_MACHINE ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  KEY_QUERY_VALUE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__,TYPE_1__*,scalar_t__,scalar_t__*) ; 
 scalar_t__ REG_BINARY ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,scalar_t__*,TYPE_1__*,scalar_t__*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,char*,TYPE_1__**) ; 
#define  SERVICE_CONFIG_DESCRIPTION 129 
#define  SERVICE_CONFIG_FAILURE_ACTIONS 128 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC12 (char*,scalar_t__,...) ; 
 int FUNC13 (int /*<<< orphan*/ ,TYPE_1__*) ; 

__attribute__((used)) static int FUNC14(SC_HANDLE hService, LPCWSTR serviceName, DWORD dwInfoLevel)
{
    int    iRet  = 0;
    LONG   lRet  = 0;
    DWORD  dwRet = 0;
    BOOL   bError = FALSE;
    DWORD  dwRequiredSize = 0;
    LPBYTE lpBuffer = NULL;

    WCHAR keyName[256];
    HKEY hKey = NULL;
    DWORD dwType = 0;

    /* Get the needed size */
    FUNC9(0xdeadbeef);
    bError = FUNC4(hService,
                                  dwInfoLevel,
                                  NULL,
                                  0,
                                  &dwRequiredSize);
    FUNC11(bError == FALSE && FUNC0() == ERROR_INSUFFICIENT_BUFFER, "(bError, GetLastError()) = (%u, 0x%08lx), expected (FALSE, 0x%08lx)\n", bError, FUNC0(), (DWORD)ERROR_INSUFFICIENT_BUFFER);
    FUNC11(dwRequiredSize != 0, "dwRequiredSize is zero, expected non-zero\n");
    if (dwRequiredSize == 0)
    {
        FUNC12("Required size is null; cannot proceed with QueryConfig2W --> %lu test\n", dwInfoLevel);
        return 1;
    }

    /* Allocate memory */
    lpBuffer = FUNC2(FUNC1(), HEAP_ZERO_MEMORY, dwRequiredSize);
    if (lpBuffer == NULL)
    {
        FUNC12("Cannot allocate %lu bytes of memory\n", dwRequiredSize);
        return 2;
    }

    /* Get the actual value */
    FUNC9(0xdeadbeef);
    bError = FUNC4(hService,
                                  dwInfoLevel,
                                  lpBuffer,
                                  dwRequiredSize,
                                  &dwRequiredSize);
    FUNC11(bError, "bError = %u, expected TRUE\n", bError);
    if (bError == FALSE)
    {
        FUNC12("QueryServiceConfig2W returned an error; cannot proceed with QueryConfig2W --> %lu test\n", dwInfoLevel);
        FUNC3(FUNC1(), 0, lpBuffer);
        return 3;
    }

    /* Now we can compare the retrieved value with what it's actually stored in the registry */
    FUNC10(keyName, sizeof(keyName), L"System\\CurrentControlSet\\Services\\%s", serviceName);
    FUNC9(0xdeadbeef);
    lRet = FUNC6(HKEY_LOCAL_MACHINE, keyName, 0, KEY_QUERY_VALUE, &hKey);
    FUNC11(lRet == ERROR_SUCCESS, "RegOpenKeyExW failed with 0x%08lx\n", lRet);
    if (lRet != ERROR_SUCCESS)
    {
        FUNC12("No regkey; cannot proceed with QueryConfig2W --> %lu test\n", dwInfoLevel);
        FUNC3(FUNC1(), 0, lpBuffer);
        return 4;
    }

    switch (dwInfoLevel)
    {
        case SERVICE_CONFIG_DESCRIPTION:
        {
            LPSERVICE_DESCRIPTIONW lpDescription = (LPSERVICE_DESCRIPTIONW)lpBuffer;
            LPWSTR lpszDescription = NULL;

            /* Retrieve the description via the registry */
            dwRet = FUNC8(hKey, L"Description", &lpszDescription);
            FUNC11(dwRet == ERROR_SUCCESS, "RegReadStringW returned 0x%08lx\n", dwRet);
            FUNC11(lpszDescription != NULL, "lpszDescription is null, expected non-null\n");

            /* Compare it with the description retrieved via QueryServiceConfig2 */
            if (lpszDescription)
                iRet = FUNC13(lpDescription->lpDescription, lpszDescription);
            else
                iRet = 0;

            FUNC11(iRet == 0, "Retrieved descriptions are different !\n");


            /* Memory cleanup */
            FUNC3(FUNC1(), 0, lpszDescription);

            break;
        }

        case SERVICE_CONFIG_FAILURE_ACTIONS:
        {
            LPSERVICE_FAILURE_ACTIONSW lpFailureActions1 = (LPSERVICE_FAILURE_ACTIONSW)lpBuffer;
            LPSERVICE_FAILURE_ACTIONSW lpFailureActions2 = NULL;
            LPWSTR lpRebootMessage  = NULL;
            LPWSTR lpFailureCommand = NULL;
            DWORD  i = 0;

            /* Retrieve the failure actions via the registry */
            lRet = FUNC7(hKey,
                                    L"FailureActions",
                                    NULL,
                                    &dwType,
                                    NULL,
                                    &dwRequiredSize);
            FUNC11(lRet == ERROR_SUCCESS, "RegQueryValueExW returned 0x%08lx\n", lRet);
            FUNC11(dwType == REG_BINARY, "dwType = %lu, expected REG_BINARY\n", dwType);
            FUNC11(dwRequiredSize != 0, "dwRequiredSize is zero, expected non-zero\n");

            lpFailureActions2 = FUNC2(FUNC1(), HEAP_ZERO_MEMORY, dwRequiredSize);
            if (lpFailureActions2 == NULL)
            {
                FUNC12("Cannot allocate %lu bytes of memory\n", dwRequiredSize);
                break;
            }

            lRet = FUNC7(hKey,
                                    L"FailureActions",
                                    NULL,
                                    NULL,
                                    (LPBYTE)lpFailureActions2,
                                    &dwRequiredSize);
            FUNC11(lRet == ERROR_SUCCESS, "RegQueryValueExW returned 0x%08lx\n", lRet);
            FUNC11(dwRequiredSize != 0, "dwRequiredSize is zero, expected non-zero\n");

            /* Get the strings */
            FUNC8(hKey, L"FailureCommand", &lpFailureCommand);
            FUNC8(hKey, L"RebootMessage" , &lpRebootMessage );

            /* Check the values */
            FUNC11(lpFailureActions1->dwResetPeriod == lpFailureActions2->dwResetPeriod, "lpFailureActions1->dwResetPeriod != lpFailureActions2->dwResetPeriod\n");
            FUNC11(lpFailureActions1->cActions == lpFailureActions2->cActions, "lpFailureActions1->cActions != lpFailureActions2->cActions\n");

            /* Compare the actions */
            if (lpFailureActions1->cActions == lpFailureActions2->cActions)
            {
                lpFailureActions2->lpsaActions = (lpFailureActions2->cActions > 0 ? (LPSC_ACTION)(lpFailureActions2 + 1) : NULL);

                if (lpFailureActions1->cActions > 0 &&
                    lpFailureActions1->lpsaActions != NULL)
                {
                    for (i = 0; i < lpFailureActions1->cActions; ++i)
                    {
                        FUNC11(lpFailureActions1->lpsaActions[i].Type  == lpFailureActions2->lpsaActions[i].Type , "lpFailureActions1->lpsaActions[%lu].Type  != lpFailureActions2->lpsaActions[%lu].Type\n" , i, i);
                        FUNC11(lpFailureActions1->lpsaActions[i].Delay == lpFailureActions2->lpsaActions[i].Delay, "lpFailureActions1->lpsaActions[%lu].Delay != lpFailureActions2->lpsaActions[%lu].Delay\n", i, i);
                    }
                }
            }

            /* TODO: retrieve the strings if they are in MUI format */

            /* Compare RebootMsg */
            if (lpFailureActions1->lpRebootMsg && lpRebootMessage)
                iRet = FUNC13(lpFailureActions1->lpRebootMsg, lpRebootMessage);
            else
                iRet = 0;

            FUNC11(iRet == 0, "Retrieved reboot messages are different !\n");

            /* Compare Command */
            if (lpFailureActions1->lpCommand && lpFailureCommand)
                iRet = FUNC13(lpFailureActions1->lpCommand, lpFailureCommand);
            else
                iRet = 0;

            FUNC11(iRet == 0, "Retrieved commands are different !\n");


            /* Memory cleanup */
            if (lpRebootMessage)
                FUNC3(FUNC1(), 0, lpRebootMessage);

            if (lpFailureCommand)
                FUNC3(FUNC1(), 0, lpFailureCommand);

            FUNC3(FUNC1(), 0, lpFailureActions2);

            break;
        }

        default:
            FUNC12("Unknown dwInfoLevel %lu, cannot proceed with QueryConfig2W --> %lu test\n", dwInfoLevel, dwInfoLevel);
            break;
    }

    FUNC5(hKey);

    FUNC3(FUNC1(), 0, lpBuffer);

    return 0;
}