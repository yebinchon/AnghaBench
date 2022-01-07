
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int sqlite3_value ;
typedef int sqlite3_context ;
struct TYPE_2__ {int key; } ;
typedef TYPE_1__ mm_cipher_context_t ;


 scalar_t__ SQLITE_BLOB ;
 int SQLITE_MISUSE ;
 int memcpy (int ,int ,int) ;
 int sqlite3_result_error_code (int *,int ) ;
 int sqlite3_result_null (int *) ;
 scalar_t__ sqlite3_user_data (int *) ;
 int sqlite3_value_blob (int *) ;
 int sqlite3_value_bytes (int *) ;
 scalar_t__ sqlite3_value_type (int *) ;

__attribute__((used)) static void
mm_cipher_key_func(sqlite3_context *db, int argc, sqlite3_value **argv)
{
    mm_cipher_context_t *ctx;


    if (argc != 1)
        goto error_misuse;
    if (sqlite3_value_type(argv[0]) != SQLITE_BLOB)
        goto error_misuse;
    if (sqlite3_value_bytes(argv[0]) != 16)
        goto error_misuse;

    ctx = (mm_cipher_context_t *) sqlite3_user_data(db);
    memcpy(ctx->key, sqlite3_value_blob(argv[0]), 16);

    sqlite3_result_null(db);
    return;

error_misuse:
    sqlite3_result_error_code(db, SQLITE_MISUSE);
    return;
}
