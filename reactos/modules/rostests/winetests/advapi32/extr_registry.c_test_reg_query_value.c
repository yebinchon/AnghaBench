
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int valW ;
typedef int expected ;
typedef char WCHAR ;
typedef int LONG ;
typedef int * HKEY ;
typedef char CHAR ;


 int ERROR_ACCESS_DENIED ;
 int ERROR_BADKEY ;
 int ERROR_CALL_NOT_IMPLEMENTED ;
 int ERROR_INVALID_HANDLE ;
 int ERROR_INVALID_PARAMETER ;
 int ERROR_MORE_DATA ;
 int ERROR_SUCCESS ;
 int GetLastError () ;
 int MAX_PATH ;
 int REG_SZ ;
 int RegCloseKey (int *) ;
 int RegCreateKeyA (int *,char*,int **) ;
 int RegDeleteKeyA (int *,char*) ;
 int RegQueryValueA (int *,char*,char*,int*) ;
 int RegQueryValueW (int *,int *,char*,int*) ;
 int RegSetValueA (int *,int *,int ,char*,int) ;
 int RegSetValueW (int *,int *,int ,char const*,int) ;
 int SetLastError (int) ;
 int * hkey_main ;
 int lstrcmpA (char*,char*) ;
 int lstrcmpW (char*,char const*) ;
 int memset (char*,char,int) ;
 int ok (int,char*,...) ;
 int win_skip (char*) ;

__attribute__((used)) static void test_reg_query_value(void)
{
    HKEY subkey;
    CHAR val[MAX_PATH];
    WCHAR valW[5];
    LONG size, ret;

    static const WCHAR expected[] = {'d','a','t','a',0};

    ret = RegCreateKeyA(hkey_main, "subkey", &subkey);
    ok(ret == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", ret);

    ret = RegSetValueA(subkey, ((void*)0), REG_SZ, "data", 4);
    ok(ret == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", ret);


    SetLastError(0xdeadbeef);
    size = MAX_PATH;
    ret = RegQueryValueA((HKEY)0xcafebabe, "subkey", val, &size);
    ok(ret == ERROR_INVALID_HANDLE ||
       ret == ERROR_BADKEY ||
       ret == ERROR_ACCESS_DENIED,
       "Expected ERROR_INVALID_HANDLE or ERROR_BADKEY, got %d\n", ret);
    ok(GetLastError() == 0xdeadbeef, "Expected 0xdeadbeef, got %d\n", GetLastError());


    SetLastError(0xdeadbeef);
    size = MAX_PATH;
    ret = RegQueryValueA(((void*)0), "subkey", val, &size);
    ok(ret == ERROR_INVALID_HANDLE || ret == ERROR_BADKEY,
       "Expected ERROR_INVALID_HANDLE or ERROR_BADKEY, got %d\n", ret);
    ok(GetLastError() == 0xdeadbeef, "Expected 0xdeadbeef, got %d\n", GetLastError());


    size = MAX_PATH;
    ret = RegQueryValueA(hkey_main, "subkey", ((void*)0), &size);
    ok(ret == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", ret);
    ok(size == 5, "Expected 5, got %d\n", size);


    SetLastError(0xdeadbeef);
    val[0] = '\0';
    ret = RegQueryValueA(hkey_main, "subkey", val, ((void*)0));
    ok(ret == ERROR_INVALID_PARAMETER, "Expected ERROR_INVALID_PARAMETER, got %d\n", ret);
    ok(GetLastError() == 0xdeadbeef, "Expected 0xdeadbeef, got %d\n", GetLastError());
    ok(!val[0], "Expected val to be untouched, got %s\n", val);


    ret = RegQueryValueA(hkey_main, "subkey", ((void*)0), ((void*)0));
    ok(ret == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", ret);


    SetLastError(0xdeadbeef);
    val[0] = '\0';
    size = 1;
    ret = RegQueryValueA(hkey_main, "subkey", val, &size);
    ok(ret == ERROR_MORE_DATA, "Expected ERROR_MORE_DATA, got %d\n", ret);
    ok(GetLastError() == 0xdeadbeef, "Expected 0xdeadbeef, got %d\n", GetLastError());
    ok(!val[0], "Expected val to be untouched, got %s\n", val);
    ok(size == 5, "Expected 5, got %d\n", size);


    size = MAX_PATH;
    ret = RegQueryValueA(hkey_main, "subkey", val, &size);
    ok(ret == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", ret);
    ok(!lstrcmpA(val, "data"), "Expected 'data', got '%s'\n", val);
    ok(size == 5, "Expected 5, got %d\n", size);


    size = MAX_PATH;
    ret = RegQueryValueA(subkey, ((void*)0), val, &size);
    ok(ret == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", ret);
    ok(!lstrcmpA(val, "data"), "Expected 'data', got '%s'\n", val);
    ok(size == 5, "Expected 5, got %d\n", size);


    SetLastError(0xdeadbeef);
    valW[0] = '\0';
    size = 0;
    ret = RegQueryValueW(subkey, ((void*)0), valW, &size);
    if (GetLastError() == ERROR_CALL_NOT_IMPLEMENTED)
    {
        win_skip("RegQueryValueW is not implemented\n");
        goto cleanup;
    }
    ok(ret == ERROR_MORE_DATA, "Expected ERROR_MORE_DATA, got %d\n", ret);
    ok(GetLastError() == 0xdeadbeef, "Expected 0xdeadbeef, got %d\n", GetLastError());
    ok(!valW[0], "Expected valW to be untouched\n");
    ok(size == sizeof(expected), "Got wrong size: %d\n", size);


    SetLastError(0xdeadbeef);
    size = sizeof(valW) / sizeof(WCHAR);
    ret = RegQueryValueW(subkey, ((void*)0), valW, &size);
    ok(ret == ERROR_MORE_DATA, "Expected ERROR_MORE_DATA, got %d\n", ret);
    ok(GetLastError() == 0xdeadbeef, "Expected 0xdeadbeef, got %d\n", GetLastError());
    ok(!valW[0], "Expected valW to be untouched\n");
    ok(size == sizeof(expected), "Got wrong size: %d\n", size);


    size = sizeof(valW);
    ret = RegQueryValueW(subkey, ((void*)0), valW, &size);
    ok(ret == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", ret);
    ok(!lstrcmpW(valW, expected), "Got wrong value\n");
    ok(size == sizeof(expected), "Got wrong size: %d\n", size);


    ret = RegSetValueW(subkey, ((void*)0), REG_SZ, expected, sizeof(expected)-sizeof(WCHAR));
    ok(ret == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", ret);


    memset(valW, 'a', sizeof(valW));
    size = sizeof(valW);
    ret = RegQueryValueW(subkey, ((void*)0), valW, &size);
    ok(ret == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", ret);
    ok(!lstrcmpW(valW, expected), "Got wrong value\n");
    ok(size == sizeof(expected), "Got wrong size: %d\n", size);

cleanup:
    RegDeleteKeyA(subkey, "");
    RegCloseKey(subkey);
}
