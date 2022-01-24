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
typedef  char* LPCWSTR ;
typedef  scalar_t__ LONG ;
typedef  int /*<<< orphan*/ * HKEY ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  HKEY_USERS ; 
 int /*<<< orphan*/  KEY_ALL_ACCESS ; 
 int /*<<< orphan*/  KEY_READ ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ *) ; 

BOOL
FUNC7(LPCWSTR lpKeyName,
               LPCWSTR lpProfilePath)
{
    HKEY hDefaultKey = NULL;
    HKEY hUserKey = NULL;
    LONG Error;
    BOOL Ret = FALSE;

    FUNC1("CreateUserHive(%S) called\n", lpKeyName);

    Error = FUNC4(HKEY_USERS,
                          L".Default",
                          0,
                          KEY_READ,
                          &hDefaultKey);
    if (Error != ERROR_SUCCESS)
    {
        FUNC5((DWORD)Error);
        goto Cleanup;
    }

    Error = FUNC4(HKEY_USERS,
                          lpKeyName,
                          0,
                          KEY_ALL_ACCESS,
                          &hUserKey);
    if (Error != ERROR_SUCCESS)
    {
        FUNC5((DWORD)Error);
        goto Cleanup;
    }

    if (!FUNC0(hUserKey, hDefaultKey))
    {
        goto Cleanup;
    }

    if (!FUNC6(lpProfilePath,
                                        hUserKey))
    {
        goto Cleanup;
    }

    FUNC3(hUserKey);
    Ret = TRUE;

Cleanup:
    if (hUserKey != NULL)
        FUNC2 (hUserKey);

    if (hDefaultKey != NULL)
        FUNC2 (hDefaultKey);

    return Ret;
}