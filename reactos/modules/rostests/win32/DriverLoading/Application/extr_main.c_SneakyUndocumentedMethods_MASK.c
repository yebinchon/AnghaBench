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
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/  LPCWSTR ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* DRIVER_NAME ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 

__attribute__((used)) static BOOL
FUNC5(LPCWSTR lpDriverPath)
{
    WCHAR szDevice[MAX_PATH];

    if (FUNC0(lpDriverPath, szDevice))
    {
        FUNC4(L"\nStarting %s.sys via NtSetSystemInformation with SystemLoadGdiDriverInformation\n", DRIVER_NAME);
        if (FUNC2(szDevice))
        {
            FUNC4(L"\tStarted\n");

            FUNC3(DRIVER_NAME);
        }

        FUNC4(L"\nStarting %s.sys via NtSetSystemInformation with SystemExtendServiceTableInformation\n", DRIVER_NAME);
        if (FUNC1(szDevice))
        {
            FUNC4(L"\tStarted\n");
            
            FUNC3(DRIVER_NAME);
        }

        return TRUE;
    }

    return FALSE;
}