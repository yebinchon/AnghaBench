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
typedef  scalar_t__ UINT ;
typedef  int REGSAM ;
typedef  int /*<<< orphan*/  MSIHANDLE ;
typedef  int /*<<< orphan*/ * LPBYTE ;
typedef  scalar_t__ INSTALLSTATE ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 scalar_t__ ERROR_ACCESS_DENIED ; 
 scalar_t__ ERROR_FILE_NOT_FOUND ; 
 scalar_t__ ERROR_INVALID_PARAMETER ; 
 scalar_t__ ERROR_SUCCESS ; 
 scalar_t__ ERROR_UNKNOWN_PRODUCT ; 
 scalar_t__ ERROR_UNKNOWN_PROPERTY ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  HKEY_LOCAL_MACHINE ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  INSTALLSTATE_DEFAULT ; 
 scalar_t__ INSTALLSTATE_INVALIDARG ; 
 int KEY_ALL_ACCESS ; 
 int KEY_WOW64_64KEY ; 
 scalar_t__ FUNC3 (char*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (char*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  REG_SZ ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ is_wow64 ; 
 int /*<<< orphan*/  FUNC16 (int,char*,...) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (char*) ; 
 int /*<<< orphan*/  FUNC19 (char*) ; 

__attribute__((used)) static void FUNC20(void)
{
    MSIHANDLE hpkg;
    UINT r;
    HKEY hkey;
    DWORD dwType, cbData;
    LPBYTE lpData = NULL;
    INSTALLSTATE state;
    REGSAM access = KEY_ALL_ACCESS;

    if (is_wow64)
        access |= KEY_WOW64_64KEY;

    r = FUNC17(NULL, 0, &hpkg);
    FUNC16( r == ERROR_INVALID_PARAMETER,"wrong error\n");

    state = FUNC7(NULL);
    FUNC16( state == INSTALLSTATE_INVALIDARG, "wrong return\n");

    r = FUNC5(NULL,0,NULL,NULL);
    FUNC16( r == ERROR_INVALID_PARAMETER,"wrong error\n");

    r = FUNC4(NULL, NULL, 0);
    FUNC16( r == ERROR_INVALID_PARAMETER, "wrong error\n");

    r = FUNC3("{00000000-0000-0000-0000-000000000000}", NULL, 0);
    FUNC16( r == ERROR_INVALID_PARAMETER, "wrong error\n");

    r = FUNC3("{00000000-0000-0000-0000-000000000001}", "foo", 0);
    FUNC16( r == ERROR_INVALID_PARAMETER, "wrong error %d\n", r);

    r = FUNC3("{00000000-0000-0000-0000-000000000002}", "foo", INSTALLSTATE_DEFAULT);
    FUNC16( r == ERROR_UNKNOWN_PRODUCT, "wrong error %d\n", r);

    /* make sure empty string to MsiGetProductInfo is not a handle to default registry value, saving and restoring the
     * necessary registry values */

    /* empty product string */
    r = FUNC11(HKEY_LOCAL_MACHINE, "SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Uninstall", 0, access, &hkey);
    if (r == ERROR_ACCESS_DENIED)
    {
        FUNC18("Not enough rights to perform tests\n");
        return;
    }
    FUNC16( r == ERROR_SUCCESS, "wrong error %d\n", r);

    r = FUNC12(hkey, NULL, 0, &dwType, lpData, &cbData);
    FUNC16 ( r == ERROR_SUCCESS || r == ERROR_FILE_NOT_FOUND, "wrong error %d\n", r);
    if ( r == ERROR_SUCCESS )
    {
        lpData = FUNC1(FUNC0(), 0, cbData);
        if (!lpData)
            FUNC18("Out of memory\n");
        else
        {
            r = FUNC12(hkey, NULL, 0, &dwType, lpData, &cbData);
            FUNC16 ( r == ERROR_SUCCESS, "wrong error %d\n", r);
        }
    }

    r = FUNC13(hkey, NULL, REG_SZ, "test", FUNC19("test"));
    if (r == ERROR_ACCESS_DENIED)
    {
        FUNC18("Not enough rights to perform tests\n");
        FUNC2(FUNC0(), 0, lpData);
        FUNC8(hkey);
        return;
    }
    FUNC16( r == ERROR_SUCCESS, "wrong error %d\n", r);

    r = FUNC6("", "", NULL, NULL);
    FUNC16 ( r == ERROR_INVALID_PARAMETER, "wrong error %d\n", r);

    if (lpData)
    {
        r = FUNC14(hkey, NULL, 0, dwType, lpData, cbData);
        FUNC16 ( r == ERROR_SUCCESS, "wrong error %d\n", r);

        FUNC2(FUNC0(), 0, lpData);
    }
    else
    {
        r = FUNC10(hkey, NULL);
        FUNC16 ( r == ERROR_SUCCESS, "wrong error %d\n", r);
    }

    r = FUNC8(hkey);
    FUNC16( r == ERROR_SUCCESS, "wrong error %d\n", r);

    /* empty attribute */
    r = FUNC9(HKEY_LOCAL_MACHINE, "SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Uninstall\\{F1C3AF50-8B56-4A69-A00C-00773FE42F30}",
                        0, NULL, 0, access, NULL, &hkey, NULL);
    FUNC16( r == ERROR_SUCCESS, "wrong error %d\n", r);

    r = FUNC13(hkey, NULL, REG_SZ, "test", FUNC19("test"));
    FUNC16( r == ERROR_SUCCESS, "wrong error %d\n", r);

    r = FUNC6("{F1C3AF50-8B56-4A69-A00C-00773FE42F30}", "", NULL, NULL);
    FUNC16 ( r == ERROR_UNKNOWN_PROPERTY, "wrong error %d\n", r);

    r = FUNC8(hkey);
    FUNC16( r == ERROR_SUCCESS, "wrong error %d\n", r);

    r = FUNC15(HKEY_LOCAL_MACHINE, "SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Uninstall\\{F1C3AF50-8B56-4A69-A00C-00773FE42F30}",
                   access & KEY_WOW64_64KEY);
    FUNC16( r == ERROR_SUCCESS, "wrong error %d\n", r);
}