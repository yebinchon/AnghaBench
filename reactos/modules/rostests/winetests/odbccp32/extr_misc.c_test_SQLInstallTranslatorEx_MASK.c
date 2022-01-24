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
typedef  scalar_t__ WORD ;
typedef  scalar_t__ LONG ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  scalar_t__ DWORD ;
typedef  int /*<<< orphan*/  BYTE ;
typedef  int BOOL ;

/* Variables and functions */
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  HKEY_LOCAL_MACHINE ; 
 int /*<<< orphan*/  KEY_READ ; 
 int MAX_PATH ; 
 scalar_t__ ODBC_ERROR_COMPONENT_NOT_FOUND ; 
 scalar_t__ ODBC_ERROR_WRITING_SYSINFO_FAILED ; 
 int /*<<< orphan*/  ODBC_INSTALL_COMPLETE ; 
 scalar_t__ REG_SZ ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ *,scalar_t__*) ; 
 int FUNC4 (char*,char*,char*,int,scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC5 (int,scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC6 (char*,scalar_t__*) ; 
 scalar_t__ SQL_SUCCESS ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*) ; 
 scalar_t__ FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 

__attribute__((used)) static void FUNC14(void)
{
    char path[MAX_PATH];
    char syspath[MAX_PATH];
    WORD size = 0;
    BOOL ret, sql_ret;
    DWORD cnt, error_code = 0;
    HKEY hkey;
    LONG res;

    FUNC0(syspath, MAX_PATH);

    ret = FUNC4("WINE ODBC Translator\0Translator=sample.dll\0Setup=sample.dll\0",
                                 NULL, path, MAX_PATH, &size, ODBC_INSTALL_COMPLETE, NULL);
    sql_ret = FUNC5(1, &error_code, NULL, 0, NULL);
    if (sql_ret && error_code == ODBC_ERROR_WRITING_SYSINFO_FAILED)
    {
         FUNC13("not enough privileges\n");
         return;
    }
    FUNC8(sql_ret && error_code == SQL_SUCCESS, "SQLInstallDriverEx failed %d, %u\n", sql_ret, error_code);
    FUNC8(!FUNC10(path, syspath), "invalid path %s\n", path);
    FUNC8(size == FUNC12(path), "invalid length %d\n", size);

    ret = FUNC4("WINE ODBC Translator Path\0Translator=sample.dll\0Setup=sample.dll\0",
                                 "c:\\temp", path, MAX_PATH, &size, ODBC_INSTALL_COMPLETE, NULL);
    sql_ret = FUNC5(1, &error_code, NULL, 0, NULL);
    FUNC8(sql_ret && error_code == SQL_SUCCESS, "SQLInstallTranslatorEx failed %d, %u\n", sql_ret, error_code);
    FUNC8(!FUNC10(path, "c:\\temp"), "invalid path %s\n", path);
    FUNC8(size == FUNC12(path), "invalid length %d\n", size);

    if(ret)
    {
        res = FUNC2(HKEY_LOCAL_MACHINE, "Software\\ODBC\\ODBCINST.INI\\WINE ODBC Translator", 0,
                            KEY_READ, &hkey);
        FUNC8(res == ERROR_SUCCESS, "RegOpenKeyExW failed\n");
        if (res == ERROR_SUCCESS)
        {
            DWORD type = 0xdeadbeef, size = MAX_PATH;
            char driverpath[MAX_PATH];

            FUNC11(driverpath, syspath);
            FUNC9(driverpath, "\\sample.dll");

            FUNC7(path, 0, sizeof(path));
            res = FUNC3(hkey, "Translator", NULL, &type, (BYTE *)path, &size);
            FUNC8(res == ERROR_SUCCESS, "RegGetValueA failed\n");
            FUNC8(type == REG_SZ, "got %u\n", type);
            FUNC8(size == FUNC12(driverpath) + 1, "got %u\n", size);
            FUNC8(!FUNC10(path, driverpath), "invalid path %s\n", path);

            FUNC1(hkey);
        }
    }

    cnt = 100;
    ret = FUNC6("WINE ODBC Translator", &cnt);
    FUNC8(ret, "SQLRemoveTranslator failed\n");
    FUNC8(cnt == 0, "SQLRemoveTranslator failed %d\n", cnt);

    cnt = 100;
    ret = FUNC6("WINE ODBC Translator Path", &cnt);
    FUNC8(ret, "SQLRemoveTranslator failed\n");
    FUNC8(cnt == 0, "SQLRemoveTranslator failed %d\n", cnt);

    cnt = 100;
    ret = FUNC6("WINE ODBC Translator NonExist", &cnt);
    FUNC8(!ret, "SQLRemoveTranslator succeeded\n");
    FUNC8(cnt == 100, "SQLRemoveTranslator succeeded %d\n", cnt);
    sql_ret = FUNC5(1, &error_code, NULL, 0, NULL);
    FUNC8(sql_ret && error_code == ODBC_ERROR_COMPONENT_NOT_FOUND,
        "SQLInstallTranslatorEx failed %d, %u\n", sql_ret, error_code);

}