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
typedef  int UWORD ;
typedef  scalar_t__ RETCODE ;
typedef  scalar_t__ DWORD ;
typedef  int BOOL ;

/* Variables and functions */
 int ODBC_BOTH_DSN ; 
 scalar_t__ ODBC_ERROR_INVALID_PARAM_SEQUENCE ; 
 int ODBC_SYSTEM_DSN ; 
 int FUNC0 (int*) ; 
 scalar_t__ FUNC1 (int,scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (int) ; 
 scalar_t__ SQL_SUCCESS_WITH_INFO ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 

__attribute__((used)) static void FUNC4(void)
{
    BOOL bool_ret;
    DWORD error_code;
    RETCODE sql_ret;
    UWORD config_mode;
    int i;

    FUNC3(FUNC0(NULL), "SQLGetConfigMode(NULL) should succeed\n");

    bool_ret = FUNC0(&config_mode);
    FUNC3(bool_ret && config_mode == ODBC_BOTH_DSN, "Failed to get the initial SQLGetConfigMode or it was not both\n");

    /* try to set invalid mode */
    bool_ret = FUNC2(ODBC_SYSTEM_DSN+1);
    sql_ret = FUNC1(1, &error_code, NULL, 0, NULL);
    FUNC3(!bool_ret && sql_ret == SQL_SUCCESS_WITH_INFO && error_code == ODBC_ERROR_INVALID_PARAM_SEQUENCE, "SQLSetConfigMode with invalid argument did not fail correctly\n");

    for (i = ODBC_SYSTEM_DSN; i >= ODBC_BOTH_DSN; --i)
    {
        FUNC3(FUNC2((UWORD)i), "SQLSetConfigMode Failed to set config mode\n");
        bool_ret = FUNC0(&config_mode);
        FUNC3(bool_ret && config_mode == i, "Failed to confirm SQLSetConfigMode.\n");
    }
    /* And that leaves it correctly on BOTH */
}