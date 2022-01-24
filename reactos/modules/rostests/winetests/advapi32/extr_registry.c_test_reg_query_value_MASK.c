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
typedef  int /*<<< orphan*/  valW ;
typedef  int /*<<< orphan*/  expected ;
typedef  char WCHAR ;
typedef  int LONG ;
typedef  int /*<<< orphan*/ * HKEY ;
typedef  char CHAR ;

/* Variables and functions */
 int ERROR_ACCESS_DENIED ; 
 int ERROR_BADKEY ; 
 int ERROR_CALL_NOT_IMPLEMENTED ; 
 int ERROR_INVALID_HANDLE ; 
 int ERROR_INVALID_PARAMETER ; 
 int ERROR_MORE_DATA ; 
 int ERROR_SUCCESS ; 
 int FUNC0 () ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  REG_SZ ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int FUNC4 (int /*<<< orphan*/ *,char*,char*,int*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int*) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/ * hkey_main ; 
 int /*<<< orphan*/  FUNC9 (char*,char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC11 (char*,char,int) ; 
 int /*<<< orphan*/  FUNC12 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 

__attribute__((used)) static void FUNC14(void)
{
    HKEY subkey;
    CHAR val[MAX_PATH];
    WCHAR valW[5];
    LONG size, ret;

    static const WCHAR expected[] = {'d','a','t','a',0};

    ret = FUNC2(hkey_main, "subkey", &subkey);
    FUNC12(ret == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", ret);

    ret = FUNC6(subkey, NULL, REG_SZ, "data", 4);
    FUNC12(ret == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", ret);

    /* try an invalid hkey */
    FUNC8(0xdeadbeef);
    size = MAX_PATH;
    ret = FUNC4((HKEY)0xcafebabe, "subkey", val, &size);
    FUNC12(ret == ERROR_INVALID_HANDLE ||
       ret == ERROR_BADKEY || /* Windows 98 returns BADKEY */
       ret == ERROR_ACCESS_DENIED, /* non-admin winxp */
       "Expected ERROR_INVALID_HANDLE or ERROR_BADKEY, got %d\n", ret);
    FUNC12(FUNC0() == 0xdeadbeef, "Expected 0xdeadbeef, got %d\n", FUNC0());

    /* try a NULL hkey */
    FUNC8(0xdeadbeef);
    size = MAX_PATH;
    ret = FUNC4(NULL, "subkey", val, &size);
    FUNC12(ret == ERROR_INVALID_HANDLE || ret == ERROR_BADKEY, /* Windows 98 returns BADKEY */
       "Expected ERROR_INVALID_HANDLE or ERROR_BADKEY, got %d\n", ret);
    FUNC12(FUNC0() == 0xdeadbeef, "Expected 0xdeadbeef, got %d\n", FUNC0());

    /* try a NULL value */
    size = MAX_PATH;
    ret = FUNC4(hkey_main, "subkey", NULL, &size);
    FUNC12(ret == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", ret);
    FUNC12(size == 5, "Expected 5, got %d\n", size);

    /* try a NULL size */
    FUNC8(0xdeadbeef);
    val[0] = '\0';
    ret = FUNC4(hkey_main, "subkey", val, NULL);
    FUNC12(ret == ERROR_INVALID_PARAMETER, "Expected ERROR_INVALID_PARAMETER, got %d\n", ret);
    FUNC12(FUNC0() == 0xdeadbeef, "Expected 0xdeadbeef, got %d\n", FUNC0());
    FUNC12(!val[0], "Expected val to be untouched, got %s\n", val);

    /* try a NULL value and size */
    ret = FUNC4(hkey_main, "subkey", NULL, NULL);
    FUNC12(ret == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", ret);

    /* try a size too small */
    FUNC8(0xdeadbeef);
    val[0] = '\0';
    size = 1;
    ret = FUNC4(hkey_main, "subkey", val, &size);
    FUNC12(ret == ERROR_MORE_DATA, "Expected ERROR_MORE_DATA, got %d\n", ret);
    FUNC12(FUNC0() == 0xdeadbeef, "Expected 0xdeadbeef, got %d\n", FUNC0());
    FUNC12(!val[0], "Expected val to be untouched, got %s\n", val);
    FUNC12(size == 5, "Expected 5, got %d\n", size);

    /* successfully read the value using 'subkey' */
    size = MAX_PATH;
    ret = FUNC4(hkey_main, "subkey", val, &size);
    FUNC12(ret == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", ret);
    FUNC12(!FUNC9(val, "data"), "Expected 'data', got '%s'\n", val);
    FUNC12(size == 5, "Expected 5, got %d\n", size);

    /* successfully read the value using the subkey key */
    size = MAX_PATH;
    ret = FUNC4(subkey, NULL, val, &size);
    FUNC12(ret == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", ret);
    FUNC12(!FUNC9(val, "data"), "Expected 'data', got '%s'\n", val);
    FUNC12(size == 5, "Expected 5, got %d\n", size);

    /* unicode - try size too small */
    FUNC8(0xdeadbeef);
    valW[0] = '\0';
    size = 0;
    ret = FUNC5(subkey, NULL, valW, &size);
    if (FUNC0() == ERROR_CALL_NOT_IMPLEMENTED)
    {
        FUNC13("RegQueryValueW is not implemented\n");
        goto cleanup;
    }
    FUNC12(ret == ERROR_MORE_DATA, "Expected ERROR_MORE_DATA, got %d\n", ret);
    FUNC12(FUNC0() == 0xdeadbeef, "Expected 0xdeadbeef, got %d\n", FUNC0());
    FUNC12(!valW[0], "Expected valW to be untouched\n");
    FUNC12(size == sizeof(expected), "Got wrong size: %d\n", size);

    /* unicode - try size in WCHARS */
    FUNC8(0xdeadbeef);
    size = sizeof(valW) / sizeof(WCHAR);
    ret = FUNC5(subkey, NULL, valW, &size);
    FUNC12(ret == ERROR_MORE_DATA, "Expected ERROR_MORE_DATA, got %d\n", ret);
    FUNC12(FUNC0() == 0xdeadbeef, "Expected 0xdeadbeef, got %d\n", FUNC0());
    FUNC12(!valW[0], "Expected valW to be untouched\n");
    FUNC12(size == sizeof(expected), "Got wrong size: %d\n", size);

    /* unicode - successfully read the value */
    size = sizeof(valW);
    ret = FUNC5(subkey, NULL, valW, &size);
    FUNC12(ret == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", ret);
    FUNC12(!FUNC10(valW, expected), "Got wrong value\n");
    FUNC12(size == sizeof(expected), "Got wrong size: %d\n", size);

    /* unicode - set the value without a NULL terminator */
    ret = FUNC7(subkey, NULL, REG_SZ, expected, sizeof(expected)-sizeof(WCHAR));
    FUNC12(ret == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", ret);

    /* unicode - read the unterminated value, value is terminated for us */
    FUNC11(valW, 'a', sizeof(valW));
    size = sizeof(valW);
    ret = FUNC5(subkey, NULL, valW, &size);
    FUNC12(ret == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", ret);
    FUNC12(!FUNC10(valW, expected), "Got wrong value\n");
    FUNC12(size == sizeof(expected), "Got wrong size: %d\n", size);

cleanup:
    FUNC3(subkey, "");
    FUNC1(subkey);
}