#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  SERVICE_STATUS ;
typedef  int /*<<< orphan*/  SC_HANDLE ;
typedef  int /*<<< orphan*/  LPCWSTR ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* DRIVER_NAME ; 
 scalar_t__ ERROR_SERVICE_NOT_ACTIVE ; 
 scalar_t__ FALSE ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SC_MANAGER_ALL_ACCESS ; 
 int /*<<< orphan*/  SERVICE_ALL_ACCESS ; 
 int /*<<< orphan*/  SERVICE_CONTROL_STOP ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 

BOOL
FUNC6(LPCWSTR lpDriverName)
{
    SC_HANDLE hSCManager;
    SC_HANDLE hService;
    SERVICE_STATUS serviceStatus;
    BOOL bRet;

    hSCManager = FUNC3(NULL,
                                NULL,
                                SC_MANAGER_ALL_ACCESS);
    if (!hSCManager)
        return FALSE;

    hService = FUNC4(hSCManager,
                            lpDriverName,
                            SERVICE_ALL_ACCESS);
    if (!hService)
    {
        FUNC0(hSCManager);
        return FALSE;
    }

    bRet = FUNC1(hService,
                          SERVICE_CONTROL_STOP,
                          &serviceStatus);
    if (!bRet)
    {
        if (FUNC2() == ERROR_SERVICE_NOT_ACTIVE)
        {
            FUNC5(L"%s.sys wasn't running\n", DRIVER_NAME);
            bRet = TRUE;
        }
    }

    FUNC0(hService);
    FUNC0(hSCManager);

    return bRet;
}