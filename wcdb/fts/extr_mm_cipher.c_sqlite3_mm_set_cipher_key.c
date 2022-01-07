
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_stmt ;
typedef int sqlite3 ;


 int SQLITE_OK ;
 int SQLITE_STATIC ;
 int sqlite3_bind_blob (int *,int,void const*,int,int ) ;
 int sqlite3_finalize (int *) ;
 int sqlite3_prepare_v2 (int *,char*,int,int **,int *) ;
 int sqlite3_step (int *) ;

int sqlite3_mm_set_cipher_key(sqlite3 *db, const void *key, int key_len)
{
    sqlite3_stmt *stmt;
    int ret =
        sqlite3_prepare_v2(db, "SELECT mm_cipher_key(?)", -1, &stmt, ((void*)0));
    if (ret != SQLITE_OK)
        return ret;

    sqlite3_bind_blob(stmt, 1, key, key_len, SQLITE_STATIC);
    sqlite3_step(stmt);

    return sqlite3_finalize(stmt);
}
