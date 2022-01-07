
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WORD ;
typedef scalar_t__ RETCODE ;
typedef scalar_t__ DWORD ;
typedef int CHAR ;
typedef int BOOL ;


 int MAX_PATH ;
 scalar_t__ ODBC_ERROR_INVALID_BUFF_LEN ;
 scalar_t__ ODBC_ERROR_WRITING_SYSINFO_FAILED ;
 int SQLInstallDriverManager (int *,int,int*) ;
 scalar_t__ SQLInstallerErrorW (int,scalar_t__*,int *,int ,int *) ;
 scalar_t__ SQL_NO_DATA ;
 scalar_t__ SQL_SUCCESS_WITH_INFO ;
 int ok (int,char*,...) ;
 int win_skip (char*) ;

__attribute__((used)) static void test_SQLInstallDriverManager(void)
{
    BOOL bool_ret;
    RETCODE sql_ret;
    DWORD error_code;
    CHAR target_path[MAX_PATH];
    WORD path_out;


    bool_ret = SQLInstallDriverManager(((void*)0), 0, ((void*)0));
    sql_ret = SQLInstallerErrorW(1, &error_code, ((void*)0), 0, ((void*)0));
    ok(!bool_ret, "SQLInstallDriverManager unexpectedly succeeded\n");
    ok(sql_ret == SQL_SUCCESS_WITH_INFO && error_code == ODBC_ERROR_INVALID_BUFF_LEN,
        "Expected SQLInstallDriverManager to fail with ODBC_ERROR_INVALID_BUFF_LEN\n");


    bool_ret = SQLInstallDriverManager(target_path, MAX_PATH / 2, ((void*)0));
    sql_ret = SQLInstallerErrorW(1, &error_code, ((void*)0), 0, ((void*)0));
    ok(!bool_ret, "SQLInstallDriverManager unexpectedly succeeded\n");
    ok(sql_ret == SQL_SUCCESS_WITH_INFO && error_code == ODBC_ERROR_INVALID_BUFF_LEN,
        "Expected SQLInstallDriverManager to fail with ODBC_ERROR_INVALID_BUFF_LEN\n");

    path_out = 0xcafe;
    bool_ret = SQLInstallDriverManager(target_path, MAX_PATH / 2, &path_out);
    sql_ret = SQLInstallerErrorW(1, &error_code, ((void*)0), 0, ((void*)0));
    ok(!bool_ret, "SQLInstallDriverManager unexpectedly succeeded\n");
    ok(sql_ret == SQL_SUCCESS_WITH_INFO && error_code == ODBC_ERROR_INVALID_BUFF_LEN,
        "Expected SQLInstallDriverManager to fail with ODBC_ERROR_INVALID_BUFF_LEN\n");
    ok(path_out == 0xcafe, "Expected path_out to not have changed\n");


    bool_ret = SQLInstallDriverManager(target_path, MAX_PATH, ((void*)0));
    sql_ret = SQLInstallerErrorW(1, &error_code, ((void*)0), 0, ((void*)0));
    if(!bool_ret && error_code == ODBC_ERROR_WRITING_SYSINFO_FAILED)
    {
         win_skip("not enough privileges\n");
         return;
    }
    ok(bool_ret, "SQLInstallDriverManager unexpectedly failed: %d\n",
        error_code);
    if (bool_ret)
        ok(sql_ret == SQL_NO_DATA, "Expected SQL_NO_DATA, got %d\n", sql_ret);
    else
        ok(sql_ret == SQL_SUCCESS_WITH_INFO,
            "Expected SQL_SUCCESS_WITH_INFO, got %d\n", sql_ret);

    path_out = 0xcafe;
    bool_ret = SQLInstallDriverManager(target_path, MAX_PATH, &path_out);
    sql_ret = SQLInstallerErrorW(1, &error_code, ((void*)0), 0, ((void*)0));
    ok(bool_ret, "SQLInstallDriverManager unexpectedly failed: %d\n",
        error_code);
    if (bool_ret)
        ok(sql_ret == SQL_NO_DATA, "Expected SQL_NO_DATA, got %d\n", sql_ret);
    else
        ok(sql_ret == SQL_SUCCESS_WITH_INFO,
            "Expected SQL_SUCCESS_WITH_INFO, got %d\n", sql_ret);

    ok(path_out != 0xcafe, "Expected path_out to show the correct amount of bytes\n");
}
