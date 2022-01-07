
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ SQLRETURN ;
typedef int SQLHENV ;


 int FALSE ;
 scalar_t__ ODBC32_SQLAllocEnv (int *) ;
 scalar_t__ ODBC32_SQLFreeEnv (int ) ;
 int ODBC_ReplicateODBCInstToRegistry (int ) ;
 int ODBC_ReplicateODBCToRegistry (int ,int ) ;
 scalar_t__ SQL_SUCCESS ;
 int TRACE (char*,int) ;
 int TRUE ;
 int WARN (char*) ;

__attribute__((used)) static void ODBC_ReplicateToRegistry (void)
{
    SQLRETURN sql_ret;
    SQLHENV hEnv;

    if ((sql_ret = ODBC32_SQLAllocEnv (&hEnv)) == SQL_SUCCESS)
    {
        ODBC_ReplicateODBCInstToRegistry (hEnv);
        ODBC_ReplicateODBCToRegistry (FALSE , hEnv);
        ODBC_ReplicateODBCToRegistry (TRUE , hEnv);

        if ((sql_ret = ODBC32_SQLFreeEnv (hEnv)) != SQL_SUCCESS)
        {
            TRACE ("Error %d freeing the SQL environment.\n", (int)sql_ret);
        }
    }
    else
    {
        TRACE ("Error %d opening an SQL environment.\n", (int)sql_ret);
        WARN ("The external ODBC settings have not been replicated to the"
                " Wine registry\n");
    }
}
