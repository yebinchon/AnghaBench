
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_stmt ;
typedef int sqlite3 ;
typedef char gchar ;
typedef int gboolean ;


 int FALSE ;
 int SQLITE_ERROR ;
 int SQLITE_ROW ;
 int TRUE ;
 int g_warning (char*,int,char const*) ;
 char* sqlite3_errmsg (int *) ;
 int sqlite3_finalize (int *) ;
 int sqlite3_step (int *) ;
 int * sqlite_query_prepare (int *,char const*) ;

gboolean
sqlite_check_for_existence (sqlite3 *db, const char *sql)
{
    sqlite3_stmt *stmt;
    int result;

    stmt = sqlite_query_prepare (db, sql);
    if (!stmt)
        return FALSE;

    result = sqlite3_step (stmt);
    if (result == SQLITE_ERROR) {
        const gchar *str = sqlite3_errmsg (db);

        g_warning ("Couldn't execute query, error: %d->'%s'\n",
                   result, str ? str : "no error given");
        sqlite3_finalize (stmt);
        return FALSE;
    }
    sqlite3_finalize (stmt);

    if (result == SQLITE_ROW)
        return TRUE;
    return FALSE;
}
