
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int desc ;
typedef int SQLUSMALLINT ;
typedef scalar_t__ SQLSMALLINT ;
typedef scalar_t__ SQLRETURN ;
typedef int SQLHENV ;
typedef int SQLCHAR ;
typedef int LONG ;
typedef int HKEY ;
typedef char CHAR ;
typedef int BYTE ;
typedef int BOOL ;


 int ERROR_FILE_NOT_FOUND ;
 int ERROR_SUCCESS ;
 int FALSE ;
 int HKEY_LOCAL_MACHINE ;
 int KEY_ALL_ACCESS ;
 scalar_t__ ODBC32_SQLDrivers (int ,int ,int *,int,scalar_t__*,int *,int ,int *) ;
 int REG_OPTION_NON_VOLATILE ;
 int REG_SZ ;
 int RegCloseKey (int ) ;
 int RegCreateKeyExA (int ,char*,int ,int *,int ,int ,int *,int *,int *) ;
 int RegQueryValueExA (int ,char*,int *,int *,int *,int *) ;
 int RegSetValueExA (int ,char*,int ,int ,int const*,int) ;
 int SQL_FETCH_FIRST ;
 int SQL_FETCH_NEXT ;
 scalar_t__ SQL_NO_DATA ;
 scalar_t__ SQL_SUCCESS ;
 scalar_t__ SQL_SUCCESS_WITH_INFO ;
 int TRACE (char*,...) ;
 int TRUE ;
 int WARN (char*,...) ;
 scalar_t__ lstrlenA (char*) ;

__attribute__((used)) static void ODBC_ReplicateODBCInstToRegistry (SQLHENV hEnv)
{
    HKEY hODBCInst;
    LONG reg_ret;
    BOOL success;

    success = FALSE;
    TRACE ("Driver settings are not currently replicated to the registry\n");
    if ((reg_ret = RegCreateKeyExA (HKEY_LOCAL_MACHINE,
            "Software\\ODBC\\ODBCINST.INI", 0, ((void*)0),
            REG_OPTION_NON_VOLATILE,
            KEY_ALL_ACCESS , ((void*)0),
            &hODBCInst, ((void*)0))) == ERROR_SUCCESS)
    {
        HKEY hDrivers;
        if ((reg_ret = RegCreateKeyExA (hODBCInst, "ODBC Drivers", 0,
                ((void*)0), REG_OPTION_NON_VOLATILE,
                KEY_ALL_ACCESS , ((void*)0), &hDrivers, ((void*)0)))
                == ERROR_SUCCESS)
        {
            SQLRETURN sql_ret;
            SQLUSMALLINT dirn;
            CHAR desc [256];
            SQLSMALLINT sizedesc;

            success = TRUE;
            dirn = SQL_FETCH_FIRST;
            while ((sql_ret = ODBC32_SQLDrivers (hEnv, dirn, (SQLCHAR*)desc, sizeof(desc),
                    &sizedesc, ((void*)0), 0, ((void*)0))) == SQL_SUCCESS ||
                    sql_ret == SQL_SUCCESS_WITH_INFO)
            {

                dirn = SQL_FETCH_NEXT;
                if (sizedesc == lstrlenA(desc))
                {
                    HKEY hThis;
                    if ((reg_ret = RegQueryValueExA (hDrivers, desc, ((void*)0),
                            ((void*)0), ((void*)0), ((void*)0))) == ERROR_FILE_NOT_FOUND)
                    {
                        if ((reg_ret = RegSetValueExA (hDrivers, desc, 0,
                                REG_SZ, (const BYTE *)"Installed", 10)) != ERROR_SUCCESS)
                        {
                            TRACE ("Error %d replicating driver %s\n",
                                    reg_ret, desc);
                            success = FALSE;
                        }
                    }
                    else if (reg_ret != ERROR_SUCCESS)
                    {
                        TRACE ("Error %d checking for %s in drivers\n",
                                reg_ret, desc);
                        success = FALSE;
                    }
                    if ((reg_ret = RegCreateKeyExA (hODBCInst, desc, 0,
                            ((void*)0), REG_OPTION_NON_VOLATILE,
                            KEY_ALL_ACCESS, ((void*)0), &hThis, ((void*)0)))
                            == ERROR_SUCCESS)
                    {






                        if ((reg_ret = RegCloseKey (hThis)) !=
                                ERROR_SUCCESS)
                            TRACE ("Error %d closing %s key\n", reg_ret,
                                    desc);
                    }
                    else
                    {
                        TRACE ("Error %d ensuring driver key %s\n",
                                reg_ret, desc);
                        success = FALSE;
                    }
                }
                else
                {
                    WARN ("Unusually long driver name %s not replicated\n",
                            desc);
                    success = FALSE;
                }
            }
            if (sql_ret != SQL_NO_DATA)
            {
                TRACE ("Error %d enumerating drivers\n", (int)sql_ret);
                success = FALSE;
            }
            if ((reg_ret = RegCloseKey (hDrivers)) != ERROR_SUCCESS)
            {
                TRACE ("Error %d closing hDrivers\n", reg_ret);
            }
        }
        else
        {
            TRACE ("Error %d opening HKLM\\S\\O\\OI\\Drivers\n", reg_ret);
        }
        if ((reg_ret = RegCloseKey (hODBCInst)) != ERROR_SUCCESS)
        {
            TRACE ("Error %d closing HKLM\\S\\O\\ODBCINST.INI\n", reg_ret);
        }
    }
    else
    {
        TRACE ("Error %d opening HKLM\\S\\O\\ODBCINST.INI\n", reg_ret);
    }
    if (!success)
    {
        WARN ("May not have replicated all ODBC drivers to the registry\n");
    }
}
