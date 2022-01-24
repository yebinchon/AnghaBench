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
typedef  int /*<<< orphan*/  sqlite3_value ;
typedef  int /*<<< orphan*/  sqlite3_context ;
struct TYPE_3__ {int /*<<< orphan*/  cnv; } ;
typedef  TYPE_1__ mm_cipher_context_t ;
typedef  int int32_t ;
typedef  int /*<<< orphan*/  buf ;
typedef  scalar_t__ UErrorCode ;
typedef  int /*<<< orphan*/  UChar ;

/* Variables and functions */
 int SQLITE_BLOB ; 
 int /*<<< orphan*/  SQLITE_ERROR ; 
 int /*<<< orphan*/  SQLITE_MISUSE ; 
 int SQLITE_TEXT ; 
 int /*<<< orphan*/  SQLITE_TRANSIENT ; 
 scalar_t__ U_BUFFER_OVERFLOW_ERROR ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ U_STRING_NOT_TERMINATED_WARNING ; 
 scalar_t__ U_ZERO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ *) ; 
 int FUNC12 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/  const*,int,scalar_t__*) ; 

__attribute__((used)) static void FUNC13(sqlite3_context *db, int argc, sqlite3_value **argv)
{
    mm_cipher_context_t *ctx;
    const UChar *src;
    int32_t src_len;
    char buf[1024];
    char *dst = buf;
    int32_t dst_len;
    UErrorCode status = U_ZERO_ERROR;
    int arg_type;

    // only accept 1 argument.
    if (argc != 1)
        goto error_misuse;

    // encoding BLOB data type is not supported.
    arg_type = FUNC11(argv[0]);
    if (arg_type == SQLITE_BLOB)
        goto error_misuse;

    // for data types other than TEXT, just return them.
    if (arg_type != SQLITE_TEXT) {
        FUNC7(db, argv[0]);
        return;
    }

    ctx = (mm_cipher_context_t *) FUNC8(db);
    src_len = FUNC9(argv[0]) / 2;
    src = (const UChar *) FUNC10(argv[0]);

    // transform input string to BOCU-1 encoding.
    // try stack buffer first, if it doesn't fit, malloc a new buffer.
    dst_len =
        FUNC12(ctx->cnv, dst, sizeof(buf), src, src_len, &status);
    if (status == U_BUFFER_OVERFLOW_ERROR) {
        status = U_ZERO_ERROR;
        dst = (char *) FUNC3(dst_len);
        dst_len =
            FUNC12(ctx->cnv, dst, dst_len, src, src_len, &status);
    }
    if (FUNC0(status) && status != U_STRING_NOT_TERMINATED_WARNING) {
        FUNC4(
            "Failed transforming text to internal encoding.");
        goto error_error;
    }

    // encrypt transformed BOCU-1 string.
    FUNC1(ctx, dst, dst_len);

    // return
    FUNC5(db, dst, dst_len, SQLITE_TRANSIENT);
    if (dst != buf)
        FUNC2(dst);
    return;

error_error:
    if (dst != buf)
        FUNC2(dst);
    FUNC6(db, SQLITE_ERROR);
    return;

error_misuse:
    if (dst != buf)
        FUNC2(dst);
    FUNC6(db, SQLITE_MISUSE);
    return;
}