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
typedef  int LONG ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  CHAR ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 int ERROR_FILE_NOT_FOUND ; 
 int ERROR_SUCCESS ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  REG_SZ ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ *,int*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  hkey_main ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int,char*,...) ; 
 int FUNC9 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 

__attribute__((used)) static void FUNC11(void)
{
    CHAR buffer[MAX_PATH];
    HKEY subkey, subkey2;
    DWORD dwsize, type;
    LONG size, ret;

    if(!&pRegDeleteTreeA) {
        FUNC10("Skipping RegDeleteTreeA tests, function not present\n");
        return;
    }

    ret = FUNC1(hkey_main, "subkey", &subkey);
    FUNC8(ret == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", ret);
    ret = FUNC1(subkey, "subkey2", &subkey2);
    FUNC8(ret == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", ret);
    ret = FUNC5(subkey, NULL, REG_SZ, "data", 4);
    FUNC8(ret == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", ret);
    ret = FUNC5(subkey2, NULL, REG_SZ, "data2", 5);
    FUNC8(ret == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", ret);
    ret = FUNC0(subkey2);
    FUNC8(ret == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", ret);

    ret = FUNC9(subkey, "subkey2");
    FUNC8(ret == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", ret);
    FUNC8(FUNC2(subkey, "subkey2", &subkey2),
        "subkey2 was not deleted\n");
    size = MAX_PATH;
    FUNC8(!FUNC3(subkey, NULL, buffer, &size),
        "Default value of subkey no longer present\n");

    ret = FUNC1(subkey, "subkey2", &subkey2);
    FUNC8(ret == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", ret);
    ret = FUNC0(subkey2);
    FUNC8(ret == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", ret);
    ret = FUNC9(hkey_main, "subkey\\subkey2");
    FUNC8(ret == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", ret);
    FUNC8(FUNC2(subkey, "subkey2", &subkey2),
        "subkey2 was not deleted\n");
    FUNC8(!FUNC3(subkey, NULL, buffer, &size),
        "Default value of subkey no longer present\n");

    ret = FUNC1(subkey, "subkey2", &subkey2);
    FUNC8(ret == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", ret);
    ret = FUNC0(subkey2);
    FUNC8(ret == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", ret);
    ret = FUNC1(subkey, "subkey3", &subkey2);
    FUNC8(ret == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", ret);
    ret = FUNC0(subkey2);
    FUNC8(ret == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", ret);
    ret = FUNC5(subkey, NULL, REG_SZ, "data", 4);
    FUNC8(ret == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", ret);
    ret = FUNC6(subkey, "value", 0, REG_SZ, (const BYTE *)"data2", 5);
    FUNC8(ret == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", ret);
    ret = FUNC9(subkey, NULL);
    FUNC8(ret == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", ret);
    FUNC8(!FUNC2(hkey_main, "subkey", &subkey),
        "subkey was deleted\n");
    FUNC8(FUNC2(subkey, "subkey2", &subkey2),
        "subkey2 was not deleted\n");
    FUNC8(FUNC2(subkey, "subkey3", &subkey2),
        "subkey3 was not deleted\n");
    size = MAX_PATH;
    ret = FUNC3(subkey, NULL, buffer, &size);
    FUNC8(ret == ERROR_SUCCESS,
        "Default value of subkey is not present\n");
    FUNC8(!buffer[0], "Expected length 0 got length %u(%s)\n", FUNC7(buffer), buffer);
    dwsize = MAX_PATH;
    FUNC8(FUNC4(subkey, "value", NULL, &type, (BYTE *)buffer, &dwsize),
        "Value is still present\n");
    ret = FUNC0(subkey);
    FUNC8(ret == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", ret);

    ret = FUNC2(hkey_main, "subkey", &subkey);
    FUNC8(ret == ERROR_SUCCESS, "subkey was deleted\n");
    ret = FUNC9(subkey, "");
    FUNC8(ret == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", ret);
    ret = FUNC0(subkey);
    FUNC8(ret == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", ret);

    ret = FUNC2(hkey_main, "subkey", &subkey);
    FUNC8(ret == ERROR_SUCCESS, "subkey was deleted\n");
    ret = FUNC0(subkey);
    FUNC8(ret == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", ret);

    ret = FUNC9(hkey_main, "not-here");
    FUNC8(ret == ERROR_FILE_NOT_FOUND,
        "Expected ERROR_FILE_NOT_FOUND, got %d\n", ret);
}