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
typedef  int /*<<< orphan*/  dsn ;
typedef  int /*<<< orphan*/  desc ;
typedef  int /*<<< orphan*/  SQLUSMALLINT ;
typedef  scalar_t__ SQLSMALLINT ;
typedef  scalar_t__ SQLRETURN ;
typedef  int /*<<< orphan*/  SQLHENV ;
typedef  int /*<<< orphan*/  SQLCHAR ;
typedef  int /*<<< orphan*/  LPBYTE ;
typedef  scalar_t__ LONG ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  char const CHAR ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ ERROR_FILE_NOT_FOUND ; 
 scalar_t__ ERROR_SUCCESS ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  HKEY_CURRENT_USER ; 
 int /*<<< orphan*/  HKEY_LOCAL_MACHINE ; 
 int /*<<< orphan*/  KEY_ALL_ACCESS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,scalar_t__*,int /*<<< orphan*/ *,int,scalar_t__*) ; 
 int /*<<< orphan*/  REG_OPTION_NON_VOLATILE ; 
 int /*<<< orphan*/  REG_SZ ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  SQL_FETCH_FIRST_SYSTEM ; 
 int /*<<< orphan*/  SQL_FETCH_FIRST_USER ; 
 int /*<<< orphan*/  SQL_FETCH_NEXT ; 
 int /*<<< orphan*/  SQL_MAX_DSN_LENGTH ; 
 scalar_t__ SQL_NO_DATA ; 
 scalar_t__ SQL_SUCCESS ; 
 scalar_t__ SQL_SUCCESS_WITH_INFO ; 
 int /*<<< orphan*/  FUNC5 (char*,scalar_t__,char const*,...) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*,...) ; 
 scalar_t__ FUNC7 (char const*) ; 

__attribute__((used)) static void FUNC8 (BOOL is_user, SQLHENV hEnv)
{
    HKEY hODBC;
    LONG reg_ret;
    SQLRETURN sql_ret;
    SQLUSMALLINT dirn;
    CHAR dsn [SQL_MAX_DSN_LENGTH + 1];
    SQLSMALLINT sizedsn;
    CHAR desc [256];
    SQLSMALLINT sizedesc;
    BOOL success;
    const char *which = is_user ? "user" : "system";

    success = FALSE;
    if ((reg_ret = FUNC2 (
            is_user ? HKEY_CURRENT_USER : HKEY_LOCAL_MACHINE,
            "Software\\ODBC\\ODBC.INI", 0, NULL, REG_OPTION_NON_VOLATILE,
            KEY_ALL_ACCESS /* a couple more than we need */, NULL, &hODBC,
            NULL)) == ERROR_SUCCESS)
    {
        success = TRUE;
        dirn = is_user ? SQL_FETCH_FIRST_USER : SQL_FETCH_FIRST_SYSTEM;
        while ((sql_ret = FUNC0 (hEnv, dirn,
                (SQLCHAR*)dsn, sizeof(dsn), &sizedsn,
                (SQLCHAR*)desc, sizeof(desc), &sizedesc)) == SQL_SUCCESS
                || sql_ret == SQL_SUCCESS_WITH_INFO)
        {
            /* FIXME Do some proper handling of the SUCCESS_WITH_INFO */
            dirn = SQL_FETCH_NEXT;
            if (sizedsn == FUNC7(dsn) && sizedesc == FUNC7(desc))
            {
                HKEY hDSN;
                if ((reg_ret = FUNC2 (hODBC, dsn, 0,
                        NULL, REG_OPTION_NON_VOLATILE,
                        KEY_ALL_ACCESS, NULL, &hDSN, NULL))
                        == ERROR_SUCCESS)
                {
                    static const char DRIVERKEY[] = "Driver";
                    if ((reg_ret = FUNC3 (hDSN, DRIVERKEY,
                            NULL, NULL, NULL, NULL))
                            == ERROR_FILE_NOT_FOUND)
                    {
                        if ((reg_ret = FUNC4 (hDSN, DRIVERKEY, 0,
                                REG_SZ, (LPBYTE)desc, sizedesc)) != ERROR_SUCCESS)
                        {
                            FUNC5 ("Error %d replicating description of "
                                    "%s(%s)\n", reg_ret, dsn, desc);
                            success = FALSE;
                        }
                    }
                    else if (reg_ret != ERROR_SUCCESS)
                    {
                        FUNC5 ("Error %d checking for description of %s\n",
                                reg_ret, dsn);
                        success = FALSE;
                    }
                    if ((reg_ret = FUNC1 (hDSN)) != ERROR_SUCCESS)
                    {
                        FUNC5 ("Error %d closing %s DSN key %s\n",
                                reg_ret, which, dsn);
                    }
                }
                else
                {
                    FUNC5 ("Error %d opening %s DSN key %s\n",
                            reg_ret, which, dsn);
                    success = FALSE;
                }
            }
            else
            {
                FUNC6 ("Unusually long %s data source name %s (%s) not "
                        "replicated\n", which, dsn, desc);
                success = FALSE;
            }
        }
        if (sql_ret != SQL_NO_DATA)
        {
            FUNC5 ("Error %d enumerating %s datasources\n",
                    (int)sql_ret, which);
            success = FALSE;
        }
        if ((reg_ret = FUNC1 (hODBC)) != ERROR_SUCCESS)
        {
            FUNC5 ("Error %d closing %s ODBC.INI registry key\n", reg_ret,
                    which);
        }
    }
    else
    {
        FUNC5 ("Error %d creating/opening %s ODBC.INI registry key\n",
                reg_ret, which);
    }
    if (!success)
    {
        FUNC6 ("May not have replicated all %s ODBC DSNs to the registry\n",
                which);
    }
}