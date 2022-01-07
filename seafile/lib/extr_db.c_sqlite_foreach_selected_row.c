
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_stmt ;
typedef int sqlite3 ;
typedef char gchar ;
typedef int (* SqliteRowFunc ) (int *,void*) ;


 int SQLITE_ERROR ;
 int SQLITE_ROW ;
 int g_warning (char*,int,char const*) ;
 char* sqlite3_errmsg (int *) ;
 int sqlite3_finalize (int *) ;
 int sqlite3_step (int *) ;
 int * sqlite_query_prepare (int *,char const*) ;

int
sqlite_foreach_selected_row (sqlite3 *db, const char *sql,
                             SqliteRowFunc callback, void *data)
{
    sqlite3_stmt *stmt;
    int result;
    int n_rows = 0;

    stmt = sqlite_query_prepare (db, sql);
    if (!stmt) {
        return -1;
    }

    while (1) {
        result = sqlite3_step (stmt);
        if (result != SQLITE_ROW)
            break;
        n_rows++;
        if (!callback (stmt, data))
            break;
    }

    if (result == SQLITE_ERROR) {
        const gchar *s = sqlite3_errmsg (db);

        g_warning ("Couldn't execute query, error: %d->'%s'\n",
                   result, s ? s : "no error given");
        sqlite3_finalize (stmt);
        return -1;
    }

    sqlite3_finalize (stmt);
    return n_rows;
}
