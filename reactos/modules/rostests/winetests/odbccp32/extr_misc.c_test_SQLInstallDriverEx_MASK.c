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
typedef  int /*<<< orphan*/  path ;
typedef  int /*<<< orphan*/  error ;
typedef  int /*<<< orphan*/  WORD ;
typedef  scalar_t__ LONG ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  scalar_t__ DWORD ;
typedef  int /*<<< orphan*/  BYTE ;
typedef  int BOOL ;

/* Variables and functions */
 scalar_t__ ERROR_FILE_NOT_FOUND ; 
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  HKEY_LOCAL_MACHINE ; 
 int /*<<< orphan*/  KEY_READ ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  ODBC_CONFIG_DRIVER ; 
 scalar_t__ ODBC_ERROR_COMPONENT_NOT_FOUND ; 
 scalar_t__ ODBC_ERROR_INVALID_KEYWORD_VALUE ; 
 scalar_t__ ODBC_ERROR_WRITING_SYSINFO_FAILED ; 
 int /*<<< orphan*/  ODBC_INSTALL_COMPLETE ; 
 scalar_t__ REG_SZ ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ *,scalar_t__*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,char*,char*,int,int /*<<< orphan*/ *) ; 
 int FUNC5 (char*,char*,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC6 (int,scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC7 (char*,int /*<<< orphan*/ ,scalar_t__*) ; 
 int SQL_NO_DATA ; 
 scalar_t__ SQL_SUCCESS ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*) ; 
 int /*<<< orphan*/  FUNC12 (char*,char*) ; 
 scalar_t__ FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 

__attribute__((used)) static void FUNC15(void)
{
    char path[MAX_PATH];
    char syspath[MAX_PATH];
    WORD size = 0;
    BOOL ret, sql_ret;
    DWORD cnt, error_code = 0;
    HKEY hkey;
    LONG res;
    char error[1000];

    FUNC0(syspath, MAX_PATH);

    ret = FUNC4(NULL, ODBC_CONFIG_DRIVER, "WINE ODBC Driver", "CPTimeout=59", error, sizeof(error), NULL);
    FUNC9(!ret, "SQLConfigDriver returned %d\n", ret);
    sql_ret = FUNC6(1, &error_code, NULL, 0, NULL);
    FUNC9(sql_ret && error_code == ODBC_ERROR_COMPONENT_NOT_FOUND, "SQLConfigDriver returned %d, %u\n", sql_ret, error_code);

    ret = FUNC5("WINE ODBC Driver\0Driver=sample.dll\0Setup=sample.dll\0\0", NULL,
                             path, MAX_PATH, &size, ODBC_INSTALL_COMPLETE, NULL);
    FUNC9(ret, "SQLInstallDriverEx failed\n");
    sql_ret = FUNC6(1, &error_code, NULL, 0, NULL);
    if (sql_ret && error_code == ODBC_ERROR_WRITING_SYSINFO_FAILED)
    {
         FUNC14("not enough privileges\n");
         return;
    }
    FUNC9(sql_ret == SQL_NO_DATA || (sql_ret && error_code == SQL_SUCCESS), "SQLInstallDriverEx failed %d, %u\n", sql_ret, error_code);
    FUNC9(!FUNC11(path, syspath), "invalid path %s\n", path);

if (0)  /* Crashes on XP. */
{
    sql_ret = 0;
    ret = FUNC4(NULL, ODBC_CONFIG_DRIVER, "WINE ODBC Driver", NULL, error, sizeof(error), NULL);
    FUNC9(!ret, "SQLConfigDriver failed '%s'\n",error);
}

    ret = FUNC4(NULL, ODBC_CONFIG_DRIVER, "WINE ODBC Driver", "CPTimeout=59\0NoWrite=60\0", error, sizeof(error), NULL);
    FUNC9(ret, "SQLConfigDriver failed\n");
    sql_ret = FUNC6(1, &error_code, NULL, 0, NULL);
    FUNC9(sql_ret == SQL_NO_DATA || (sql_ret && error_code == SQL_SUCCESS), "SQLConfigDriver failed %d, %u\n", sql_ret, error_code);

    ret = FUNC5("WINE ODBC Driver Path\0Driver=sample.dll\0Setup=sample.dll\0\0", "c:\\temp", path, MAX_PATH, &size, ODBC_INSTALL_COMPLETE, NULL);
    FUNC9(ret, "SQLInstallDriverEx failed\n");
    sql_ret = FUNC6(1, &error_code, NULL, 0, NULL);
    FUNC9(sql_ret == SQL_NO_DATA || (sql_ret && error_code == SQL_SUCCESS), "SQLInstallDriverEx failed %d, %u\n", sql_ret, error_code);
    FUNC9(!FUNC11(path, "c:\\temp"), "invalid path %s\n", path);

    ret = FUNC4(NULL, ODBC_CONFIG_DRIVER, "WINE ODBC Driver Path", "empty", error, sizeof(error), NULL);
    FUNC9(!ret, "SQLConfigDriver successful\n");
    sql_ret = FUNC6(1, &error_code, NULL, 0, NULL);
    FUNC9(sql_ret && error_code == ODBC_ERROR_INVALID_KEYWORD_VALUE, "SQLConfigDriver failed %d, %u\n", sql_ret, error_code);

    ret = FUNC4(NULL, ODBC_CONFIG_DRIVER, "WINE ODBC Driver Path", "NoWrite=60;xxxx=555", error, sizeof(error), NULL);
    FUNC9(ret, "SQLConfigDriver failed\n");
    sql_ret = FUNC6(1, &error_code, NULL, 0, NULL);
    FUNC9(sql_ret == SQL_NO_DATA || (sql_ret && error_code == SQL_SUCCESS), "SQLConfigDriver failed %d, %u\n", sql_ret, error_code);

    if (ret)
    {
        DWORD type = 0xdeadbeef, size = MAX_PATH;

        res = FUNC2(HKEY_LOCAL_MACHINE, "Software\\ODBC\\ODBCINST.INI\\WINE ODBC Driver", 0, KEY_READ, &hkey);
        FUNC9(res == ERROR_SUCCESS, "RegOpenKeyExW failed\n");
        if (res == ERROR_SUCCESS)
        {
            char driverpath[MAX_PATH];

            FUNC12(driverpath, syspath);
            FUNC10(driverpath, "\\sample.dll");

            FUNC8(path, 0, sizeof(path));
            res = FUNC3(hkey, "Driver", NULL, &type, (BYTE *)path, &size);
            FUNC9(res == ERROR_SUCCESS, "got %d\n", res);
            FUNC9(type == REG_SZ, "got %u\n", type);
            FUNC9(size == FUNC13(driverpath) + 1, "got %u\n", size);
            FUNC9(!FUNC11(path, driverpath), "invalid path %s\n", path);

            res = FUNC3(hkey, "CPTimeout", NULL, &type, (BYTE *)&path, &size);
            FUNC9(res == ERROR_SUCCESS, "got %d\n", res);
            FUNC9(type == REG_SZ, "got %u\n", type);
            FUNC9(size == FUNC13("59") + 1, "got %u\n", size);
            FUNC9(!FUNC11(path, "59"), "invalid value %s\n", path);

            res = FUNC3(hkey, "NoWrite", NULL, &type, (BYTE *)&path, &size);
            FUNC9(res == ERROR_FILE_NOT_FOUND, "got %d\n", res);

            FUNC1(hkey);
        }

        res = FUNC2(HKEY_LOCAL_MACHINE, "Software\\ODBC\\ODBCINST.INI\\WINE ODBC Driver Path", 0, KEY_READ, &hkey);
        FUNC9(res == ERROR_SUCCESS, "RegOpenKeyExW failed\n");
        if (res == ERROR_SUCCESS)
        {
            size = sizeof(path);
            res = FUNC3(hkey, "NoWrite", NULL, &type, (BYTE *)&path, &size);
            FUNC9(res == ERROR_SUCCESS, "got %d\n", res);
            FUNC9(type == REG_SZ, "got %u\n", type);
            FUNC9(size == FUNC13("60;xxxx=555") + 1, "got %u\n", size);
            FUNC9(!FUNC11(path, "60;xxxx=555"), "invalid value %s\n", path);

            res = FUNC3(hkey, "CPTimeout", NULL, &type, (BYTE *)&path, &size);
            FUNC9(res == ERROR_FILE_NOT_FOUND, "got %d\n", res);
            FUNC1(hkey);
        }
    }

    cnt = 100;
    ret = FUNC7("WINE ODBC Driver", FALSE, &cnt);
    FUNC9(ret, "SQLRemoveDriver failed\n");
    FUNC9(cnt == 0, "SQLRemoveDriver failed %d\n", cnt);

    cnt = 100;
    ret = FUNC7("WINE ODBC Driver Path", FALSE, &cnt);
    FUNC9(ret, "SQLRemoveDriver failed\n");
    FUNC9(cnt == 0, "SQLRemoveDriver failed %d\n", cnt);
}