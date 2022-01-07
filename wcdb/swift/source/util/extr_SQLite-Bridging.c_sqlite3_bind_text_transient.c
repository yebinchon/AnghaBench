
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_stmt ;


 int SQLITE_TRANSIENT ;
 int sqlite3_bind_text (int *,int,char const*,int,int ) ;

int sqlite3_bind_text_transient(sqlite3_stmt *a, int b, const char *c, int d)
{
    return sqlite3_bind_text(a, b, c, d, SQLITE_TRANSIENT);
}
