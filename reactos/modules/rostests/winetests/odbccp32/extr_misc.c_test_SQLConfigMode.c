
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UWORD ;
typedef scalar_t__ RETCODE ;
typedef scalar_t__ DWORD ;
typedef int BOOL ;


 int ODBC_BOTH_DSN ;
 scalar_t__ ODBC_ERROR_INVALID_PARAM_SEQUENCE ;
 int ODBC_SYSTEM_DSN ;
 int SQLGetConfigMode (int*) ;
 scalar_t__ SQLInstallerErrorW (int,scalar_t__*,int *,int ,int *) ;
 int SQLSetConfigMode (int) ;
 scalar_t__ SQL_SUCCESS_WITH_INFO ;
 int ok (int,char*) ;

__attribute__((used)) static void test_SQLConfigMode(void)
{
    BOOL bool_ret;
    DWORD error_code;
    RETCODE sql_ret;
    UWORD config_mode;
    int i;

    ok(SQLGetConfigMode(((void*)0)), "SQLGetConfigMode(NULL) should succeed\n");

    bool_ret = SQLGetConfigMode(&config_mode);
    ok(bool_ret && config_mode == ODBC_BOTH_DSN, "Failed to get the initial SQLGetConfigMode or it was not both\n");


    bool_ret = SQLSetConfigMode(ODBC_SYSTEM_DSN+1);
    sql_ret = SQLInstallerErrorW(1, &error_code, ((void*)0), 0, ((void*)0));
    ok(!bool_ret && sql_ret == SQL_SUCCESS_WITH_INFO && error_code == ODBC_ERROR_INVALID_PARAM_SEQUENCE, "SQLSetConfigMode with invalid argument did not fail correctly\n");

    for (i = ODBC_SYSTEM_DSN; i >= ODBC_BOTH_DSN; --i)
    {
        ok(SQLSetConfigMode((UWORD)i), "SQLSetConfigMode Failed to set config mode\n");
        bool_ret = SQLGetConfigMode(&config_mode);
        ok(bool_ret && config_mode == i, "Failed to confirm SQLSetConfigMode.\n");
    }

}
