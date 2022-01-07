
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int path ;
typedef scalar_t__ WORD ;
typedef scalar_t__ LONG ;
typedef int HKEY ;
typedef scalar_t__ DWORD ;
typedef int BYTE ;
typedef int BOOL ;


 scalar_t__ ERROR_SUCCESS ;
 int GetSystemDirectoryA (char*,int) ;
 int HKEY_LOCAL_MACHINE ;
 int KEY_READ ;
 int MAX_PATH ;
 scalar_t__ ODBC_ERROR_COMPONENT_NOT_FOUND ;
 scalar_t__ ODBC_ERROR_WRITING_SYSINFO_FAILED ;
 int ODBC_INSTALL_COMPLETE ;
 scalar_t__ REG_SZ ;
 int RegCloseKey (int ) ;
 scalar_t__ RegOpenKeyExA (int ,char*,int ,int ,int *) ;
 scalar_t__ RegQueryValueExA (int ,char*,int *,scalar_t__*,int *,scalar_t__*) ;
 int SQLInstallTranslatorEx (char*,char*,char*,int,scalar_t__*,int ,int *) ;
 int SQLInstallerErrorW (int,scalar_t__*,int *,int ,int *) ;
 int SQLRemoveTranslator (char*,scalar_t__*) ;
 scalar_t__ SQL_SUCCESS ;
 int memset (char*,int ,int) ;
 int ok (int,char*,...) ;
 int strcat (char*,char*) ;
 int strcmp (char*,char*) ;
 int strcpy (char*,char*) ;
 scalar_t__ strlen (char*) ;
 int win_skip (char*) ;

__attribute__((used)) static void test_SQLInstallTranslatorEx(void)
{
    char path[MAX_PATH];
    char syspath[MAX_PATH];
    WORD size = 0;
    BOOL ret, sql_ret;
    DWORD cnt, error_code = 0;
    HKEY hkey;
    LONG res;

    GetSystemDirectoryA(syspath, MAX_PATH);

    ret = SQLInstallTranslatorEx("WINE ODBC Translator\0Translator=sample.dll\0Setup=sample.dll\0",
                                 ((void*)0), path, MAX_PATH, &size, ODBC_INSTALL_COMPLETE, ((void*)0));
    sql_ret = SQLInstallerErrorW(1, &error_code, ((void*)0), 0, ((void*)0));
    if (sql_ret && error_code == ODBC_ERROR_WRITING_SYSINFO_FAILED)
    {
         win_skip("not enough privileges\n");
         return;
    }
    ok(sql_ret && error_code == SQL_SUCCESS, "SQLInstallDriverEx failed %d, %u\n", sql_ret, error_code);
    ok(!strcmp(path, syspath), "invalid path %s\n", path);
    ok(size == strlen(path), "invalid length %d\n", size);

    ret = SQLInstallTranslatorEx("WINE ODBC Translator Path\0Translator=sample.dll\0Setup=sample.dll\0",
                                 "c:\\temp", path, MAX_PATH, &size, ODBC_INSTALL_COMPLETE, ((void*)0));
    sql_ret = SQLInstallerErrorW(1, &error_code, ((void*)0), 0, ((void*)0));
    ok(sql_ret && error_code == SQL_SUCCESS, "SQLInstallTranslatorEx failed %d, %u\n", sql_ret, error_code);
    ok(!strcmp(path, "c:\\temp"), "invalid path %s\n", path);
    ok(size == strlen(path), "invalid length %d\n", size);

    if(ret)
    {
        res = RegOpenKeyExA(HKEY_LOCAL_MACHINE, "Software\\ODBC\\ODBCINST.INI\\WINE ODBC Translator", 0,
                            KEY_READ, &hkey);
        ok(res == ERROR_SUCCESS, "RegOpenKeyExW failed\n");
        if (res == ERROR_SUCCESS)
        {
            DWORD type = 0xdeadbeef, size = MAX_PATH;
            char driverpath[MAX_PATH];

            strcpy(driverpath, syspath);
            strcat(driverpath, "\\sample.dll");

            memset(path, 0, sizeof(path));
            res = RegQueryValueExA(hkey, "Translator", ((void*)0), &type, (BYTE *)path, &size);
            ok(res == ERROR_SUCCESS, "RegGetValueA failed\n");
            ok(type == REG_SZ, "got %u\n", type);
            ok(size == strlen(driverpath) + 1, "got %u\n", size);
            ok(!strcmp(path, driverpath), "invalid path %s\n", path);

            RegCloseKey(hkey);
        }
    }

    cnt = 100;
    ret = SQLRemoveTranslator("WINE ODBC Translator", &cnt);
    ok(ret, "SQLRemoveTranslator failed\n");
    ok(cnt == 0, "SQLRemoveTranslator failed %d\n", cnt);

    cnt = 100;
    ret = SQLRemoveTranslator("WINE ODBC Translator Path", &cnt);
    ok(ret, "SQLRemoveTranslator failed\n");
    ok(cnt == 0, "SQLRemoveTranslator failed %d\n", cnt);

    cnt = 100;
    ret = SQLRemoveTranslator("WINE ODBC Translator NonExist", &cnt);
    ok(!ret, "SQLRemoveTranslator succeeded\n");
    ok(cnt == 100, "SQLRemoveTranslator succeeded %d\n", cnt);
    sql_ret = SQLInstallerErrorW(1, &error_code, ((void*)0), 0, ((void*)0));
    ok(sql_ret && error_code == ODBC_ERROR_COMPONENT_NOT_FOUND,
        "SQLInstallTranslatorEx failed %d, %u\n", sql_ret, error_code);

}
