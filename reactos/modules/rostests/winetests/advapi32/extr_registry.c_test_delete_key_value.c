
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ LONG ;
typedef int * HKEY ;
typedef int BYTE ;


 scalar_t__ ERROR_FILE_NOT_FOUND ;
 scalar_t__ ERROR_INVALID_HANDLE ;
 scalar_t__ ERROR_SUCCESS ;
 int KEY_READ ;
 int KEY_WRITE ;
 int REG_SZ ;
 int RegCloseKey (int *) ;
 scalar_t__ RegCreateKeyExA (int *,char*,int ,int *,int ,int,int *,int **,int *) ;
 int RegDeleteKeyA (int *,char*) ;
 scalar_t__ RegQueryValueExA (int *,char*,int *,int *,int *,int *) ;
 scalar_t__ RegSetValueExA (int *,char*,int ,int ,int const*,int) ;
 int * hkey_main ;
 int ok (int,char*,scalar_t__) ;
 scalar_t__ pRegDeleteKeyValueA (int *,char*,char*) ;
 int win_skip (char*) ;

__attribute__((used)) static void test_delete_key_value(void)
{
    HKEY subkey;
    LONG ret;

    if (!pRegDeleteKeyValueA)
    {
        win_skip("RegDeleteKeyValue is not available.\n");
        return;
    }

    ret = pRegDeleteKeyValueA(((void*)0), ((void*)0), ((void*)0));
    ok(ret == ERROR_INVALID_HANDLE, "got %d\n", ret);

    ret = pRegDeleteKeyValueA(hkey_main, ((void*)0), ((void*)0));
    ok(ret == ERROR_FILE_NOT_FOUND, "got %d\n", ret);

    ret = RegSetValueExA(hkey_main, "test", 0, REG_SZ, (const BYTE*)"value", 6);
    ok(ret == ERROR_SUCCESS, "got %d\n", ret);

    ret = RegQueryValueExA(hkey_main, "test", ((void*)0), ((void*)0), ((void*)0), ((void*)0));
    ok(ret == ERROR_SUCCESS, "got %d\n", ret);


    ret = pRegDeleteKeyValueA(hkey_main, ((void*)0), "test");
    ok(ret == ERROR_SUCCESS, "got %d\n", ret);

    ret = RegQueryValueExA(hkey_main, "test", ((void*)0), ((void*)0), ((void*)0), ((void*)0));
    ok(ret == ERROR_FILE_NOT_FOUND, "got %d\n", ret);


    ret = RegCreateKeyExA(hkey_main, "Subkey1", 0, ((void*)0), 0, KEY_WRITE|KEY_READ, ((void*)0), &subkey, ((void*)0));
    ok(!ret, "failed with error %d\n", ret);

    ret = RegSetValueExA(subkey, "test", 0, REG_SZ, (const BYTE*)"value", 6);
    ok(ret == ERROR_SUCCESS, "got %d\n", ret);

    ret = RegQueryValueExA(subkey, "test", ((void*)0), ((void*)0), ((void*)0), ((void*)0));
    ok(ret == ERROR_SUCCESS, "got %d\n", ret);

    ret = pRegDeleteKeyValueA(hkey_main, "Subkey1", "test");
    ok(ret == ERROR_SUCCESS, "got %d\n", ret);

    ret = RegQueryValueExA(subkey, "test", ((void*)0), ((void*)0), ((void*)0), ((void*)0));
    ok(ret == ERROR_FILE_NOT_FOUND, "got %d\n", ret);


    ret = RegSetValueExA(subkey, "", 0, REG_SZ, (const BYTE *)"value", 6);
    ok(ret == ERROR_SUCCESS, "expected ERROR_SUCCESS, got %d\n", ret);

    ret = RegQueryValueExA(subkey, "", ((void*)0), ((void*)0), ((void*)0), ((void*)0));
    ok(ret == ERROR_SUCCESS, "expected ERROR_SUCCESS, got %d\n", ret);

    ret = pRegDeleteKeyValueA(hkey_main, "Subkey1", "" );
    ok(ret == ERROR_SUCCESS, "expected ERROR_SUCCESS, got %d\n", ret);

    ret = RegQueryValueExA(subkey, "", ((void*)0), ((void*)0), ((void*)0), ((void*)0));
    ok(ret == ERROR_FILE_NOT_FOUND, "expected ERROR_FILE_NOT_FOUND, got %d\n", ret);

    RegDeleteKeyA(subkey, "");
    RegCloseKey(subkey);
}
