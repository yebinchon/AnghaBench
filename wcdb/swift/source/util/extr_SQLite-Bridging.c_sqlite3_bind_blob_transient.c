
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_stmt ;


 int SQLITE_TRANSIENT ;
 int sqlite3_bind_blob (int *,int,void const*,int,int ) ;

int sqlite3_bind_blob_transient(sqlite3_stmt *a, int b, const void *c, int n)
{
    return sqlite3_bind_blob(a, b, c, n, SQLITE_TRANSIENT);
}
