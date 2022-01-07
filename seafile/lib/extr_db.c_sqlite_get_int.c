
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_stmt ;
typedef int sqlite3 ;
typedef char gchar ;


 int SQLITE_ERROR ;
 int SQLITE_ROW ;
 int g_warning (char*,int,char const*) ;
 int sqlite3_column_int (int *,int ) ;
 char* sqlite3_errmsg (int *) ;
 int sqlite3_finalize (int *) ;
 int sqlite3_step (int *) ;
 int * sqlite_query_prepare (int *,char const*) ;

int sqlite_get_int (sqlite3 *db, const char *sql)
{
    int ret = -1;
    int result;
    sqlite3_stmt *stmt;

    if ( !(stmt = sqlite_query_prepare(db, sql)) )
        return 0;

    result = sqlite3_step (stmt);
    if (result == SQLITE_ROW) {
        ret = sqlite3_column_int (stmt, 0);
        sqlite3_finalize (stmt);
        return ret;
    }

    if (result == SQLITE_ERROR) {
        const gchar *str = sqlite3_errmsg (db);
        g_warning ("Couldn't execute query, error: %d->'%s'\n",
                   result, str ? str : "no error given");
        sqlite3_finalize (stmt);
        return -1;
    }

    sqlite3_finalize(stmt);
    return ret;
}
