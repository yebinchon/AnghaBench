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
typedef  scalar_t__ SC_HANDLE ;
typedef  int /*<<< orphan*/  LPCWSTR ;
typedef  scalar_t__ DWORD ;
typedef  int BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  DRIVER_NAME ; 
 scalar_t__ ERROR_SERVICE_EXISTS ; 
 scalar_t__ ERROR_SERVICE_MARKED_FOR_DELETE ; 
 int FALSE ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SC_MANAGER_ALL_ACCESS ; 
 int /*<<< orphan*/  SERVICE_ALL_ACCESS ; 
 int /*<<< orphan*/  SERVICE_DEMAND_START ; 
 int /*<<< orphan*/  SERVICE_ERROR_NORMAL ; 
 int /*<<< orphan*/  SERVICE_KERNEL_DRIVER ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int TRUE ; 

BOOL
FUNC5(LPCWSTR lpDriverName,
               LPCWSTR lpPathName)
{
    SC_HANDLE hSCManager;
    SC_HANDLE hService;

    hSCManager = FUNC3(NULL,
                                NULL,
                                SC_MANAGER_ALL_ACCESS);
    if (!hSCManager)
        return FALSE;

retry:
    hService = FUNC1(hSCManager,
                              lpDriverName,
                              lpDriverName,
                              SERVICE_ALL_ACCESS,
                              SERVICE_KERNEL_DRIVER,
                              SERVICE_DEMAND_START,
                              SERVICE_ERROR_NORMAL,
                              lpPathName,
                              NULL,
                              NULL,
                              NULL,
                              NULL,
                              NULL);

    if (hService)
    {
        FUNC0(hService);
        FUNC0(hSCManager);
        return TRUE;
    }
    else
    {
        DWORD err = FUNC2();

        if (err == ERROR_SERVICE_MARKED_FOR_DELETE)
        {
            FUNC4(DRIVER_NAME);
            goto retry;
        }

        FUNC0(hSCManager);

        // return TRUE if the driver is already registered
        return (err == ERROR_SERVICE_EXISTS);
    }
}