
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3 ;


 scalar_t__ sqlite_open_db (char const*,int **) ;
 int sqlite_query_exec (int *,char*) ;

sqlite3 *
seafile_session_config_open_db (const char *db_path)
{
    sqlite3 *db;

    if (sqlite_open_db (db_path, &db) < 0)
        return ((void*)0);






    char *sql = "CREATE TABLE IF NOT EXISTS Config ("
        "key TEXT PRIMARY KEY, "
        "value TEXT);";
    sqlite_query_exec (db, sql);

    return db;
}
