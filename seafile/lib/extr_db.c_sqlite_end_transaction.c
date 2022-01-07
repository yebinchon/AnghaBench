
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3 ;


 int sqlite_query_exec (int *,char*) ;

int
sqlite_end_transaction (sqlite3 *db)
{
    char *sql = "END TRANSACTION;";
    return sqlite_query_exec (db, sql);
}
