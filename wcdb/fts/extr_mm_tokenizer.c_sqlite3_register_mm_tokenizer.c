
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_tokenizer_module ;
typedef int sqlite3_stmt ;
typedef int sqlite3 ;


 int SQLITE_OK ;
 int SQLITE_STATIC ;
 int mm_tokenizer_module ;
 int sqlite3_bind_blob (int *,int,int const**,int,int ) ;
 int sqlite3_bind_text (int *,int,char*,int,int ) ;
 int sqlite3_finalize (int *) ;
 int sqlite3_prepare_v2 (int *,char*,int,int **,int ) ;
 int sqlite3_step (int *) ;

int sqlite3_register_mm_tokenizer(sqlite3 *db)
{
    const sqlite3_tokenizer_module *module = &mm_tokenizer_module;
    sqlite3_stmt *stmt = ((void*)0);
    int result;

    result =
        sqlite3_prepare_v2(db, "SELECT fts3_tokenizer(?, ?)", -1, &stmt, 0);
    if (result != SQLITE_OK)
        return result;

    sqlite3_bind_text(stmt, 1, "mmicu", -1, SQLITE_STATIC);
    sqlite3_bind_blob(stmt, 2, &module, sizeof(sqlite3_tokenizer_module *),
                      SQLITE_STATIC);
    sqlite3_step(stmt);

    return sqlite3_finalize(stmt);
}
