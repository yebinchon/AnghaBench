
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int path ;
typedef int error ;
typedef int WORD ;
typedef scalar_t__ LONG ;
typedef int HKEY ;
typedef scalar_t__ DWORD ;
typedef int BYTE ;
typedef int BOOL ;


 scalar_t__ ERROR_FILE_NOT_FOUND ;
 scalar_t__ ERROR_SUCCESS ;
 int FALSE ;
 int GetSystemDirectoryA (char*,int) ;
 int HKEY_LOCAL_MACHINE ;
 int KEY_READ ;
 int MAX_PATH ;
 int ODBC_CONFIG_DRIVER ;
 scalar_t__ ODBC_ERROR_COMPONENT_NOT_FOUND ;
 scalar_t__ ODBC_ERROR_INVALID_KEYWORD_VALUE ;
 scalar_t__ ODBC_ERROR_WRITING_SYSINFO_FAILED ;
 int ODBC_INSTALL_COMPLETE ;
 scalar_t__ REG_SZ ;
 int RegCloseKey (int ) ;
 scalar_t__ RegOpenKeyExA (int ,char*,int ,int ,int *) ;
 scalar_t__ RegQueryValueExA (int ,char*,int *,scalar_t__*,int *,scalar_t__*) ;
 int SQLConfigDriver (int *,int ,char*,char*,char*,int,int *) ;
 int SQLInstallDriverEx (char*,char*,char*,int,int *,int ,int *) ;
 int SQLInstallerErrorW (int,scalar_t__*,int *,int ,int *) ;
 int SQLRemoveDriver (char*,int ,scalar_t__*) ;
 int SQL_NO_DATA ;
 scalar_t__ SQL_SUCCESS ;
 int memset (char*,int ,int) ;
 int ok (int,char*,...) ;
 int strcat (char*,char*) ;
 int strcmp (char*,char*) ;
 int strcpy (char*,char*) ;
 scalar_t__ strlen (char*) ;
 int win_skip (char*) ;

__attribute__((used)) static void test_SQLInstallDriverEx(void)
{
    char path[MAX_PATH];
    char syspath[MAX_PATH];
    WORD size = 0;
    BOOL ret, sql_ret;
    DWORD cnt, error_code = 0;
    HKEY hkey;
    LONG res;
    char error[1000];

    GetSystemDirectoryA(syspath, MAX_PATH);

    ret = SQLConfigDriver(((void*)0), ODBC_CONFIG_DRIVER, "WINE ODBC Driver", "CPTimeout=59", error, sizeof(error), ((void*)0));
    ok(!ret, "SQLConfigDriver returned %d\n", ret);
    sql_ret = SQLInstallerErrorW(1, &error_code, ((void*)0), 0, ((void*)0));
    ok(sql_ret && error_code == ODBC_ERROR_COMPONENT_NOT_FOUND, "SQLConfigDriver returned %d, %u\n", sql_ret, error_code);

    ret = SQLInstallDriverEx("WINE ODBC Driver\0Driver=sample.dll\0Setup=sample.dll\0\0", ((void*)0),
                             path, MAX_PATH, &size, ODBC_INSTALL_COMPLETE, ((void*)0));
    ok(ret, "SQLInstallDriverEx failed\n");
    sql_ret = SQLInstallerErrorW(1, &error_code, ((void*)0), 0, ((void*)0));
    if (sql_ret && error_code == ODBC_ERROR_WRITING_SYSINFO_FAILED)
    {
         win_skip("not enough privileges\n");
         return;
    }
    ok(sql_ret == SQL_NO_DATA || (sql_ret && error_code == SQL_SUCCESS), "SQLInstallDriverEx failed %d, %u\n", sql_ret, error_code);
    ok(!strcmp(path, syspath), "invalid path %s\n", path);

if (0)
{
    sql_ret = 0;
    ret = SQLConfigDriver(((void*)0), ODBC_CONFIG_DRIVER, "WINE ODBC Driver", ((void*)0), error, sizeof(error), ((void*)0));
    ok(!ret, "SQLConfigDriver failed '%s'\n",error);
}

    ret = SQLConfigDriver(((void*)0), ODBC_CONFIG_DRIVER, "WINE ODBC Driver", "CPTimeout=59\0NoWrite=60\0", error, sizeof(error), ((void*)0));
    ok(ret, "SQLConfigDriver failed\n");
    sql_ret = SQLInstallerErrorW(1, &error_code, ((void*)0), 0, ((void*)0));
    ok(sql_ret == SQL_NO_DATA || (sql_ret && error_code == SQL_SUCCESS), "SQLConfigDriver failed %d, %u\n", sql_ret, error_code);

    ret = SQLInstallDriverEx("WINE ODBC Driver Path\0Driver=sample.dll\0Setup=sample.dll\0\0", "c:\\temp", path, MAX_PATH, &size, ODBC_INSTALL_COMPLETE, ((void*)0));
    ok(ret, "SQLInstallDriverEx failed\n");
    sql_ret = SQLInstallerErrorW(1, &error_code, ((void*)0), 0, ((void*)0));
    ok(sql_ret == SQL_NO_DATA || (sql_ret && error_code == SQL_SUCCESS), "SQLInstallDriverEx failed %d, %u\n", sql_ret, error_code);
    ok(!strcmp(path, "c:\\temp"), "invalid path %s\n", path);

    ret = SQLConfigDriver(((void*)0), ODBC_CONFIG_DRIVER, "WINE ODBC Driver Path", "empty", error, sizeof(error), ((void*)0));
    ok(!ret, "SQLConfigDriver successful\n");
    sql_ret = SQLInstallerErrorW(1, &error_code, ((void*)0), 0, ((void*)0));
    ok(sql_ret && error_code == ODBC_ERROR_INVALID_KEYWORD_VALUE, "SQLConfigDriver failed %d, %u\n", sql_ret, error_code);

    ret = SQLConfigDriver(((void*)0), ODBC_CONFIG_DRIVER, "WINE ODBC Driver Path", "NoWrite=60;xxxx=555", error, sizeof(error), ((void*)0));
    ok(ret, "SQLConfigDriver failed\n");
    sql_ret = SQLInstallerErrorW(1, &error_code, ((void*)0), 0, ((void*)0));
    ok(sql_ret == SQL_NO_DATA || (sql_ret && error_code == SQL_SUCCESS), "SQLConfigDriver failed %d, %u\n", sql_ret, error_code);

    if (ret)
    {
        DWORD type = 0xdeadbeef, size = MAX_PATH;

        res = RegOpenKeyExA(HKEY_LOCAL_MACHINE, "Software\\ODBC\\ODBCINST.INI\\WINE ODBC Driver", 0, KEY_READ, &hkey);
        ok(res == ERROR_SUCCESS, "RegOpenKeyExW failed\n");
        if (res == ERROR_SUCCESS)
        {
            char driverpath[MAX_PATH];

            strcpy(driverpath, syspath);
            strcat(driverpath, "\\sample.dll");

            memset(path, 0, sizeof(path));
            res = RegQueryValueExA(hkey, "Driver", ((void*)0), &type, (BYTE *)path, &size);
            ok(res == ERROR_SUCCESS, "got %d\n", res);
            ok(type == REG_SZ, "got %u\n", type);
            ok(size == strlen(driverpath) + 1, "got %u\n", size);
            ok(!strcmp(path, driverpath), "invalid path %s\n", path);

            res = RegQueryValueExA(hkey, "CPTimeout", ((void*)0), &type, (BYTE *)&path, &size);
            ok(res == ERROR_SUCCESS, "got %d\n", res);
            ok(type == REG_SZ, "got %u\n", type);
            ok(size == strlen("59") + 1, "got %u\n", size);
            ok(!strcmp(path, "59"), "invalid value %s\n", path);

            res = RegQueryValueExA(hkey, "NoWrite", ((void*)0), &type, (BYTE *)&path, &size);
            ok(res == ERROR_FILE_NOT_FOUND, "got %d\n", res);

            RegCloseKey(hkey);
        }

        res = RegOpenKeyExA(HKEY_LOCAL_MACHINE, "Software\\ODBC\\ODBCINST.INI\\WINE ODBC Driver Path", 0, KEY_READ, &hkey);
        ok(res == ERROR_SUCCESS, "RegOpenKeyExW failed\n");
        if (res == ERROR_SUCCESS)
        {
            size = sizeof(path);
            res = RegQueryValueExA(hkey, "NoWrite", ((void*)0), &type, (BYTE *)&path, &size);
            ok(res == ERROR_SUCCESS, "got %d\n", res);
            ok(type == REG_SZ, "got %u\n", type);
            ok(size == strlen("60;xxxx=555") + 1, "got %u\n", size);
            ok(!strcmp(path, "60;xxxx=555"), "invalid value %s\n", path);

            res = RegQueryValueExA(hkey, "CPTimeout", ((void*)0), &type, (BYTE *)&path, &size);
            ok(res == ERROR_FILE_NOT_FOUND, "got %d\n", res);
            RegCloseKey(hkey);
        }
    }

    cnt = 100;
    ret = SQLRemoveDriver("WINE ODBC Driver", FALSE, &cnt);
    ok(ret, "SQLRemoveDriver failed\n");
    ok(cnt == 0, "SQLRemoveDriver failed %d\n", cnt);

    cnt = 100;
    ret = SQLRemoveDriver("WINE ODBC Driver Path", FALSE, &cnt);
    ok(ret, "SQLRemoveDriver failed\n");
    ok(cnt == 0, "SQLRemoveDriver failed %d\n", cnt);
}
