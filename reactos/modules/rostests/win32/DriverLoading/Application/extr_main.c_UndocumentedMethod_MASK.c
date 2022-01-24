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
typedef  int /*<<< orphan*/  LPCWSTR ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 char* DRIVER_NAME ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 

__attribute__((used)) static BOOL
FUNC5(LPCWSTR lpDriverPath)
{
    FUNC4(L"\nStarting %s.sys via native API\n", DRIVER_NAME);

    if (!FUNC1(DRIVER_NAME))
    {
        FUNC4(L"[%lu] Failed to start %s\n", FUNC0(), DRIVER_NAME);
        FUNC3(DRIVER_NAME);
        return FALSE;
    }

    FUNC4(L"\tStarted\n");

    FUNC4(L"Stopping %s.sys  via native API\n", DRIVER_NAME);

    if (!FUNC2(DRIVER_NAME))
    {
        FUNC4(L"[%lu] Failed to stop %s\n", FUNC0(), DRIVER_NAME);
        FUNC3(DRIVER_NAME);
        return FALSE;
    }

    FUNC4(L"\tStopped\n");

    return TRUE;
}