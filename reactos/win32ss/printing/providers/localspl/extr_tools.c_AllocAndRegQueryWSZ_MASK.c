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
typedef  int /*<<< orphan*/ * PWSTR ;
typedef  int /*<<< orphan*/  PCWSTR ;
typedef  int /*<<< orphan*/ * PBYTE ;
typedef  scalar_t__ LONG ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 scalar_t__ ERROR_SUCCESS ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

PWSTR
FUNC4(HKEY hKey, PCWSTR pwszValueName)
{
    DWORD cbNeeded;
    LONG lStatus;
    PWSTR pwszValue;

    // Determine the size of the required buffer.
    lStatus = FUNC3(hKey, pwszValueName, NULL, NULL, NULL, &cbNeeded);
    if (lStatus != ERROR_SUCCESS)
    {
        FUNC2("RegQueryValueExW failed with status %ld!\n", lStatus);
        return NULL;
    }

    // Allocate it.
    pwszValue = FUNC0(cbNeeded);
    if (!pwszValue)
    {
        FUNC2("DllAllocSplMem failed!\n");
        return NULL;
    }

    // Now get the actual value.
    lStatus = FUNC3(hKey, pwszValueName, NULL, NULL, (PBYTE)pwszValue, &cbNeeded);
    if (lStatus != ERROR_SUCCESS)
    {
        FUNC2("RegQueryValueExW failed with status %ld!\n", lStatus);
        FUNC1(pwszValue);
        return NULL;
    }

    return pwszValue;
}