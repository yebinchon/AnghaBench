
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int sqlite3_value ;
typedef int sqlite3_context ;
struct TYPE_3__ {int cnv; } ;
typedef TYPE_1__ mm_cipher_context_t ;
typedef int int32_t ;
typedef int buf ;
typedef scalar_t__ UErrorCode ;
typedef int UChar ;


 int SQLITE_BLOB ;
 int SQLITE_ERROR ;
 int SQLITE_MISUSE ;
 int SQLITE_TEXT ;
 int SQLITE_TRANSIENT ;
 scalar_t__ U_BUFFER_OVERFLOW_ERROR ;
 scalar_t__ U_FAILURE (scalar_t__) ;
 scalar_t__ U_STRING_NOT_TERMINATED_WARNING ;
 scalar_t__ U_ZERO_ERROR ;
 int do_rc4 (TYPE_1__*,char*,int) ;
 int sqlite3_free (char*) ;
 scalar_t__ sqlite3_malloc (int) ;
 int sqlite3_mm_set_last_error (char*) ;
 int sqlite3_result_blob (int *,char*,int,int ) ;
 int sqlite3_result_error_code (int *,int ) ;
 int sqlite3_result_value (int *,int *) ;
 scalar_t__ sqlite3_user_data (int *) ;
 int sqlite3_value_bytes16 (int *) ;
 scalar_t__ sqlite3_value_text16 (int *) ;
 int sqlite3_value_type (int *) ;
 int ucnv_fromUChars (int ,char*,int,int const*,int,scalar_t__*) ;

__attribute__((used)) static void mmenc_func(sqlite3_context *db, int argc, sqlite3_value **argv)
{
    mm_cipher_context_t *ctx;
    const UChar *src;
    int32_t src_len;
    char buf[1024];
    char *dst = buf;
    int32_t dst_len;
    UErrorCode status = U_ZERO_ERROR;
    int arg_type;


    if (argc != 1)
        goto error_misuse;


    arg_type = sqlite3_value_type(argv[0]);
    if (arg_type == SQLITE_BLOB)
        goto error_misuse;


    if (arg_type != SQLITE_TEXT) {
        sqlite3_result_value(db, argv[0]);
        return;
    }

    ctx = (mm_cipher_context_t *) sqlite3_user_data(db);
    src_len = sqlite3_value_bytes16(argv[0]) / 2;
    src = (const UChar *) sqlite3_value_text16(argv[0]);



    dst_len =
        ucnv_fromUChars(ctx->cnv, dst, sizeof(buf), src, src_len, &status);
    if (status == U_BUFFER_OVERFLOW_ERROR) {
        status = U_ZERO_ERROR;
        dst = (char *) sqlite3_malloc(dst_len);
        dst_len =
            ucnv_fromUChars(ctx->cnv, dst, dst_len, src, src_len, &status);
    }
    if (U_FAILURE(status) && status != U_STRING_NOT_TERMINATED_WARNING) {
        sqlite3_mm_set_last_error(
            "Failed transforming text to internal encoding.");
        goto error_error;
    }


    do_rc4(ctx, dst, dst_len);


    sqlite3_result_blob(db, dst, dst_len, SQLITE_TRANSIENT);
    if (dst != buf)
        sqlite3_free(dst);
    return;

error_error:
    if (dst != buf)
        sqlite3_free(dst);
    sqlite3_result_error_code(db, SQLITE_ERROR);
    return;

error_misuse:
    if (dst != buf)
        sqlite3_free(dst);
    sqlite3_result_error_code(db, SQLITE_MISUSE);
    return;
}
