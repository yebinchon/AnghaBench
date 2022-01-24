#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  src_buf ;
typedef  int /*<<< orphan*/  sqlite3_value ;
typedef  int /*<<< orphan*/  sqlite3_context ;
struct TYPE_3__ {int /*<<< orphan*/  cnv; } ;
typedef  TYPE_1__ mm_cipher_context_t ;
typedef  int int32_t ;
typedef  int /*<<< orphan*/  buf ;
typedef  scalar_t__ UErrorCode ;
typedef  char UChar ;

/* Variables and functions */
 int SQLITE_BLOB ; 
 int /*<<< orphan*/  SQLITE_ERROR ; 
 int /*<<< orphan*/  SQLITE_MISUSE ; 
 int /*<<< orphan*/  SQLITE_TRANSIENT ; 
 scalar_t__ U_BUFFER_OVERFLOW_ERROR ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ U_STRING_NOT_TERMINATED_WARNING ; 
 scalar_t__ U_ZERO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ *) ; 
 int FUNC12 (int /*<<< orphan*/ *) ; 
 int FUNC13 (int /*<<< orphan*/ ,char*,int,char*,int,scalar_t__*) ; 

__attribute__((used)) static void FUNC14(sqlite3_context *db, int argc, sqlite3_value **argv)
{
    mm_cipher_context_t *ctx;
    char src_buf[1024];
    char *src = src_buf;
    int32_t src_len;
    UChar buf[512];
    UChar *dst = buf;
    int32_t dst_len;
    UErrorCode status = U_ZERO_ERROR;
    int arg_type;

    // only accept 1 argument.
    if (argc != 1)
        goto error_misuse;

    arg_type = FUNC12(argv[0]);

    // for data types other than BLOB, just return them.
    if (arg_type != SQLITE_BLOB) {
        FUNC8(db, argv[0]);
        return;
    }

    ctx = (mm_cipher_context_t *) FUNC9(db);
    src_len = FUNC11(argv[0]);
    if (src_len > sizeof(src_buf)) {
        src = (char *) FUNC4(src_len);
        if (!src)
            goto error_error;
    }
    FUNC2(src, FUNC10(argv[0]), src_len);

    // decrypt transformed BOCU-1 string.
    FUNC1(ctx, src, src_len);

    // transform input string from BOCU-1 encoding.
    // try stack buffer first, if it doesn't fit, malloc a new buffer.
    dst_len = FUNC13(ctx->cnv, dst, sizeof(buf), src, src_len, &status);
    if (status == U_BUFFER_OVERFLOW_ERROR) {
        status = U_ZERO_ERROR;
        dst = (UChar *) FUNC4(dst_len * sizeof(UChar));
        dst_len = FUNC13(ctx->cnv, dst, dst_len, src, src_len, &status);
    }
    if (FUNC0(status) && status != U_STRING_NOT_TERMINATED_WARNING) {
        FUNC5(
            "Failed transforming text from internal encoding.");
        goto error_error;
    }

    // return
    FUNC7(db, dst, dst_len * sizeof(UChar), SQLITE_TRANSIENT);
    if (src != src_buf)
        FUNC3(src);
    if (dst != buf)
        FUNC3(dst);
    return;

error_error:
    if (src != src_buf)
        FUNC3(src);
    if (dst != buf)
        FUNC3(dst);
    FUNC6(db, SQLITE_ERROR);
    return;

error_misuse:
    if (src != src_buf)
        FUNC3(src);
    if (dst != buf)
        FUNC3(dst);
    FUNC6(db, SQLITE_MISUSE);
    return;
}