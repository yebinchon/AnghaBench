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
typedef  scalar_t__ LONG ;
typedef  int /*<<< orphan*/ * HKEY ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 scalar_t__ ERROR_FILE_NOT_FOUND ; 
 scalar_t__ ERROR_INVALID_HANDLE ; 
 scalar_t__ ERROR_SUCCESS ; 
 int KEY_READ ; 
 int KEY_WRITE ; 
 int /*<<< orphan*/  REG_SZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/ * hkey_main ; 
 int /*<<< orphan*/  FUNC5 (int,char*,scalar_t__) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

__attribute__((used)) static void FUNC8(void)
{
    HKEY subkey;
    LONG ret;

    if (!&pRegDeleteKeyValueA)
    {
        FUNC7("RegDeleteKeyValue is not available.\n");
        return;
    }

    ret = FUNC6(NULL, NULL, NULL);
    FUNC5(ret == ERROR_INVALID_HANDLE, "got %d\n", ret);

    ret = FUNC6(hkey_main, NULL, NULL);
    FUNC5(ret == ERROR_FILE_NOT_FOUND, "got %d\n", ret);

    ret = FUNC4(hkey_main, "test", 0, REG_SZ, (const BYTE*)"value", 6);
    FUNC5(ret == ERROR_SUCCESS, "got %d\n", ret);

    ret = FUNC3(hkey_main, "test", NULL, NULL, NULL, NULL);
    FUNC5(ret == ERROR_SUCCESS, "got %d\n", ret);

    /* NULL subkey name means delete from open key */
    ret = FUNC6(hkey_main, NULL, "test");
    FUNC5(ret == ERROR_SUCCESS, "got %d\n", ret);

    ret = FUNC3(hkey_main, "test", NULL, NULL, NULL, NULL);
    FUNC5(ret == ERROR_FILE_NOT_FOUND, "got %d\n", ret);

    /* now with real subkey */
    ret = FUNC1(hkey_main, "Subkey1", 0, NULL, 0, KEY_WRITE|KEY_READ, NULL, &subkey, NULL);
    FUNC5(!ret, "failed with error %d\n", ret);

    ret = FUNC4(subkey, "test", 0, REG_SZ, (const BYTE*)"value", 6);
    FUNC5(ret == ERROR_SUCCESS, "got %d\n", ret);

    ret = FUNC3(subkey, "test", NULL, NULL, NULL, NULL);
    FUNC5(ret == ERROR_SUCCESS, "got %d\n", ret);

    ret = FUNC6(hkey_main, "Subkey1", "test");
    FUNC5(ret == ERROR_SUCCESS, "got %d\n", ret);

    ret = FUNC3(subkey, "test", NULL, NULL, NULL, NULL);
    FUNC5(ret == ERROR_FILE_NOT_FOUND, "got %d\n", ret);

    /* Default registry value */
    ret = FUNC4(subkey, "", 0, REG_SZ, (const BYTE *)"value", 6);
    FUNC5(ret == ERROR_SUCCESS, "expected ERROR_SUCCESS, got %d\n", ret);

    ret = FUNC3(subkey, "", NULL, NULL, NULL, NULL);
    FUNC5(ret == ERROR_SUCCESS, "expected ERROR_SUCCESS, got %d\n", ret);

    ret = FUNC6(hkey_main, "Subkey1", "" );
    FUNC5(ret == ERROR_SUCCESS, "expected ERROR_SUCCESS, got %d\n", ret);

    ret = FUNC3(subkey, "", NULL, NULL, NULL, NULL);
    FUNC5(ret == ERROR_FILE_NOT_FOUND, "expected ERROR_FILE_NOT_FOUND, got %d\n", ret);

    FUNC2(subkey, "");
    FUNC0(subkey);
}