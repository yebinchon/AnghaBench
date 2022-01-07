
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3 ;


 int SQLITE_OK ;
 int g_warning (char*,int,char*,char const*) ;
 int sqlite3_exec (int *,char const*,int *,int *,char**) ;
 int sqlite3_free (char*) ;

int
sqlite_query_exec (sqlite3 *db, const char *sql)
{
    char *errmsg = ((void*)0);
    int result;

    result = sqlite3_exec (db, sql, ((void*)0), ((void*)0), &errmsg);

    if (result != SQLITE_OK) {
        if (errmsg != ((void*)0)) {
            g_warning ("SQL error: %d - %s\n:\t%s\n", result, errmsg, sql);
            sqlite3_free (errmsg);
        }
        return -1;
    }

    return 0;
}
