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
typedef  int /*<<< orphan*/  SC_HANDLE ;
typedef  int /*<<< orphan*/  LPCWSTR ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SC_MANAGER_ALL_ACCESS ; 
 int /*<<< orphan*/  SERVICE_ALL_ACCESS ; 

BOOL
FUNC4(LPCWSTR lpDriverName)
{
    SC_HANDLE hService;
    SC_HANDLE hSCManager;
    BOOL bRet;

    hSCManager = FUNC2(NULL,
                                NULL,
                                SC_MANAGER_ALL_ACCESS);
    if (!hSCManager)
        return FALSE;

    hService = FUNC3(hSCManager,
                            lpDriverName,
                            SERVICE_ALL_ACCESS);
    if (!hService)
    {
        FUNC0(hSCManager);
        return FALSE;
    }

    bRet = FUNC1(hService);

    FUNC0(hService);
    FUNC0(hSCManager);

    return bRet;
}