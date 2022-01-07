
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LONG ;
typedef int HKEY ;
typedef int DWORD ;
typedef int CHAR ;
typedef int BYTE ;


 int ERROR_FILE_NOT_FOUND ;
 int ERROR_SUCCESS ;
 int MAX_PATH ;
 int REG_SZ ;
 int RegCloseKey (int ) ;
 int RegCreateKeyA (int ,char*,int *) ;
 int RegOpenKeyA (int ,char*,int *) ;
 int RegQueryValueA (int ,int *,int *,int*) ;
 int RegQueryValueExA (int ,char*,int *,int*,int *,int*) ;
 int RegSetValueA (int ,int *,int ,char*,int) ;
 int RegSetValueExA (int ,char*,int ,int ,int const*,int) ;
 int hkey_main ;
 int lstrlenA (int *) ;
 int ok (int,char*,...) ;
 int pRegDeleteTreeA (int ,char*) ;
 int win_skip (char*) ;

__attribute__((used)) static void test_reg_delete_tree(void)
{
    CHAR buffer[MAX_PATH];
    HKEY subkey, subkey2;
    DWORD dwsize, type;
    LONG size, ret;

    if(!pRegDeleteTreeA) {
        win_skip("Skipping RegDeleteTreeA tests, function not present\n");
        return;
    }

    ret = RegCreateKeyA(hkey_main, "subkey", &subkey);
    ok(ret == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", ret);
    ret = RegCreateKeyA(subkey, "subkey2", &subkey2);
    ok(ret == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", ret);
    ret = RegSetValueA(subkey, ((void*)0), REG_SZ, "data", 4);
    ok(ret == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", ret);
    ret = RegSetValueA(subkey2, ((void*)0), REG_SZ, "data2", 5);
    ok(ret == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", ret);
    ret = RegCloseKey(subkey2);
    ok(ret == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", ret);

    ret = pRegDeleteTreeA(subkey, "subkey2");
    ok(ret == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", ret);
    ok(RegOpenKeyA(subkey, "subkey2", &subkey2),
        "subkey2 was not deleted\n");
    size = MAX_PATH;
    ok(!RegQueryValueA(subkey, ((void*)0), buffer, &size),
        "Default value of subkey no longer present\n");

    ret = RegCreateKeyA(subkey, "subkey2", &subkey2);
    ok(ret == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", ret);
    ret = RegCloseKey(subkey2);
    ok(ret == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", ret);
    ret = pRegDeleteTreeA(hkey_main, "subkey\\subkey2");
    ok(ret == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", ret);
    ok(RegOpenKeyA(subkey, "subkey2", &subkey2),
        "subkey2 was not deleted\n");
    ok(!RegQueryValueA(subkey, ((void*)0), buffer, &size),
        "Default value of subkey no longer present\n");

    ret = RegCreateKeyA(subkey, "subkey2", &subkey2);
    ok(ret == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", ret);
    ret = RegCloseKey(subkey2);
    ok(ret == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", ret);
    ret = RegCreateKeyA(subkey, "subkey3", &subkey2);
    ok(ret == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", ret);
    ret = RegCloseKey(subkey2);
    ok(ret == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", ret);
    ret = RegSetValueA(subkey, ((void*)0), REG_SZ, "data", 4);
    ok(ret == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", ret);
    ret = RegSetValueExA(subkey, "value", 0, REG_SZ, (const BYTE *)"data2", 5);
    ok(ret == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", ret);
    ret = pRegDeleteTreeA(subkey, ((void*)0));
    ok(ret == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", ret);
    ok(!RegOpenKeyA(hkey_main, "subkey", &subkey),
        "subkey was deleted\n");
    ok(RegOpenKeyA(subkey, "subkey2", &subkey2),
        "subkey2 was not deleted\n");
    ok(RegOpenKeyA(subkey, "subkey3", &subkey2),
        "subkey3 was not deleted\n");
    size = MAX_PATH;
    ret = RegQueryValueA(subkey, ((void*)0), buffer, &size);
    ok(ret == ERROR_SUCCESS,
        "Default value of subkey is not present\n");
    ok(!buffer[0], "Expected length 0 got length %u(%s)\n", lstrlenA(buffer), buffer);
    dwsize = MAX_PATH;
    ok(RegQueryValueExA(subkey, "value", ((void*)0), &type, (BYTE *)buffer, &dwsize),
        "Value is still present\n");
    ret = RegCloseKey(subkey);
    ok(ret == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", ret);

    ret = RegOpenKeyA(hkey_main, "subkey", &subkey);
    ok(ret == ERROR_SUCCESS, "subkey was deleted\n");
    ret = pRegDeleteTreeA(subkey, "");
    ok(ret == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", ret);
    ret = RegCloseKey(subkey);
    ok(ret == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", ret);

    ret = RegOpenKeyA(hkey_main, "subkey", &subkey);
    ok(ret == ERROR_SUCCESS, "subkey was deleted\n");
    ret = RegCloseKey(subkey);
    ok(ret == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", ret);

    ret = pRegDeleteTreeA(hkey_main, "not-here");
    ok(ret == ERROR_FILE_NOT_FOUND,
        "Expected ERROR_FILE_NOT_FOUND, got %d\n", ret);
}
