
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dsn ;
typedef int desc ;
typedef int SQLUSMALLINT ;
typedef scalar_t__ SQLSMALLINT ;
typedef scalar_t__ SQLRETURN ;
typedef int SQLHENV ;
typedef int SQLCHAR ;
typedef int LPBYTE ;
typedef scalar_t__ LONG ;
typedef int HKEY ;
typedef char const CHAR ;
typedef scalar_t__ BOOL ;


 scalar_t__ ERROR_FILE_NOT_FOUND ;
 scalar_t__ ERROR_SUCCESS ;
 scalar_t__ FALSE ;
 int HKEY_CURRENT_USER ;
 int HKEY_LOCAL_MACHINE ;
 int KEY_ALL_ACCESS ;
 scalar_t__ ODBC32_SQLDataSources (int ,int ,int *,int,scalar_t__*,int *,int,scalar_t__*) ;
 int REG_OPTION_NON_VOLATILE ;
 int REG_SZ ;
 scalar_t__ RegCloseKey (int ) ;
 scalar_t__ RegCreateKeyExA (int ,char const*,int ,int *,int ,int ,int *,int *,int *) ;
 scalar_t__ RegQueryValueExA (int ,char const*,int *,int *,int *,int *) ;
 scalar_t__ RegSetValueExA (int ,char const*,int ,int ,int ,scalar_t__) ;
 int SQL_FETCH_FIRST_SYSTEM ;
 int SQL_FETCH_FIRST_USER ;
 int SQL_FETCH_NEXT ;
 int SQL_MAX_DSN_LENGTH ;
 scalar_t__ SQL_NO_DATA ;
 scalar_t__ SQL_SUCCESS ;
 scalar_t__ SQL_SUCCESS_WITH_INFO ;
 int TRACE (char*,scalar_t__,char const*,...) ;
 scalar_t__ TRUE ;
 int WARN (char*,char const*,...) ;
 scalar_t__ lstrlenA (char const*) ;

__attribute__((used)) static void ODBC_ReplicateODBCToRegistry (BOOL is_user, SQLHENV hEnv)
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
    if ((reg_ret = RegCreateKeyExA (
            is_user ? HKEY_CURRENT_USER : HKEY_LOCAL_MACHINE,
            "Software\\ODBC\\ODBC.INI", 0, ((void*)0), REG_OPTION_NON_VOLATILE,
            KEY_ALL_ACCESS , ((void*)0), &hODBC,
            ((void*)0))) == ERROR_SUCCESS)
    {
        success = TRUE;
        dirn = is_user ? SQL_FETCH_FIRST_USER : SQL_FETCH_FIRST_SYSTEM;
        while ((sql_ret = ODBC32_SQLDataSources (hEnv, dirn,
                (SQLCHAR*)dsn, sizeof(dsn), &sizedsn,
                (SQLCHAR*)desc, sizeof(desc), &sizedesc)) == SQL_SUCCESS
                || sql_ret == SQL_SUCCESS_WITH_INFO)
        {

            dirn = SQL_FETCH_NEXT;
            if (sizedsn == lstrlenA(dsn) && sizedesc == lstrlenA(desc))
            {
                HKEY hDSN;
                if ((reg_ret = RegCreateKeyExA (hODBC, dsn, 0,
                        ((void*)0), REG_OPTION_NON_VOLATILE,
                        KEY_ALL_ACCESS, ((void*)0), &hDSN, ((void*)0)))
                        == ERROR_SUCCESS)
                {
                    static const char DRIVERKEY[] = "Driver";
                    if ((reg_ret = RegQueryValueExA (hDSN, DRIVERKEY,
                            ((void*)0), ((void*)0), ((void*)0), ((void*)0)))
                            == ERROR_FILE_NOT_FOUND)
                    {
                        if ((reg_ret = RegSetValueExA (hDSN, DRIVERKEY, 0,
                                REG_SZ, (LPBYTE)desc, sizedesc)) != ERROR_SUCCESS)
                        {
                            TRACE ("Error %d replicating description of "
                                    "%s(%s)\n", reg_ret, dsn, desc);
                            success = FALSE;
                        }
                    }
                    else if (reg_ret != ERROR_SUCCESS)
                    {
                        TRACE ("Error %d checking for description of %s\n",
                                reg_ret, dsn);
                        success = FALSE;
                    }
                    if ((reg_ret = RegCloseKey (hDSN)) != ERROR_SUCCESS)
                    {
                        TRACE ("Error %d closing %s DSN key %s\n",
                                reg_ret, which, dsn);
                    }
                }
                else
                {
                    TRACE ("Error %d opening %s DSN key %s\n",
                            reg_ret, which, dsn);
                    success = FALSE;
                }
            }
            else
            {
                WARN ("Unusually long %s data source name %s (%s) not "
                        "replicated\n", which, dsn, desc);
                success = FALSE;
            }
        }
        if (sql_ret != SQL_NO_DATA)
        {
            TRACE ("Error %d enumerating %s datasources\n",
                    (int)sql_ret, which);
            success = FALSE;
        }
        if ((reg_ret = RegCloseKey (hODBC)) != ERROR_SUCCESS)
        {
            TRACE ("Error %d closing %s ODBC.INI registry key\n", reg_ret,
                    which);
        }
    }
    else
    {
        TRACE ("Error %d creating/opening %s ODBC.INI registry key\n",
                reg_ret, which);
    }
    if (!success)
    {
        WARN ("May not have replicated all %s ODBC DSNs to the registry\n",
                which);
    }
}
