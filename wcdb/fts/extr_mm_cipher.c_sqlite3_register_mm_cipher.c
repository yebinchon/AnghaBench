
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int sqlite3 ;
struct TYPE_5__ {int ref_count; int key; int cnv; } ;
typedef TYPE_1__ mm_cipher_context_t ;
typedef int UErrorCode ;


 int SQLITE_ANY ;
 int SQLITE_ERROR ;
 int SQLITE_NOMEM ;
 int SQLITE_OK ;
 int UCNV_IBM ;
 int U_ZERO_ERROR ;
 int memcpy (int ,unsigned char const*,int) ;
 int mm_cipher_key_func ;
 int mm_func_destroy ;
 int mmdec_func ;
 int mmenc_func ;
 int sqlite3_create_function_v2 (int *,char*,int,int ,TYPE_1__*,int ,int *,int *,int ) ;
 int sqlite3_free (TYPE_1__*) ;
 TYPE_1__* sqlite3_malloc (int) ;
 int ucnv_openCCSID (int,int ,int *) ;

int sqlite3_register_mm_cipher(sqlite3 *db, const unsigned char *key)
{
    UErrorCode status = U_ZERO_ERROR;
    int sqlite_err;
    mm_cipher_context_t *ctx;


    if (!ucnv_openCCSID)
        return SQLITE_OK;

    ctx = sqlite3_malloc(sizeof(mm_cipher_context_t));
    if (!ctx)
        return SQLITE_NOMEM;

    sqlite_err = SQLITE_ERROR;

    ctx->cnv = ucnv_openCCSID(1214, UCNV_IBM, &status);
    if (!ctx->cnv)
        goto error;

    memcpy(ctx->key, key, 16);
    ctx->ref_count = 3;

    sqlite_err =
        sqlite3_create_function_v2(db, "mmenc", 1, SQLITE_ANY, ctx, mmenc_func,
                                   ((void*)0), ((void*)0), mm_func_destroy);
    if (sqlite_err != SQLITE_OK)
        goto error;

    sqlite_err =
        sqlite3_create_function_v2(db, "mmdec", 1, SQLITE_ANY, ctx, mmdec_func,
                                   ((void*)0), ((void*)0), mm_func_destroy);
    if (sqlite_err != SQLITE_OK)
        goto error;

    sqlite_err = sqlite3_create_function_v2(db, "mm_cipher_key", 1, SQLITE_ANY,
                                            ctx, mm_cipher_key_func, ((void*)0), ((void*)0),
                                            mm_func_destroy);
    if (sqlite_err != SQLITE_OK)
        goto error;

    return SQLITE_OK;

error:
    if (ctx)
        sqlite3_free(ctx);
    return sqlite_err;
}
