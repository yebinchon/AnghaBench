#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3_tokenizer_cursor ;
typedef  int /*<<< orphan*/  sqlite3_tokenizer ;
struct TYPE_5__ {int /*<<< orphan*/  locale; } ;
typedef  TYPE_1__ mm_tokenizer_t ;
struct TYPE_6__ {int* in_offset; int ideo_start; int ideo_end; int ideo_state; int in_length; int /*<<< orphan*/  iter; int /*<<< orphan*/ * in_buffer; scalar_t__ token_count; scalar_t__ out_length; int /*<<< orphan*/ * out_buffer; } ;
typedef  TYPE_2__ mm_cursor_t ;
typedef  int int32_t ;
typedef  char UErrorCode ;
typedef  char UChar32 ;
typedef  int /*<<< orphan*/  UChar ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int SQLITE_ERROR ; 
 int SQLITE_NOMEM ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int,char,int) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int,int,char) ; 
 int /*<<< orphan*/  UBRK_WORD ; 
 scalar_t__ FUNC3 (char) ; 
 char U_ZERO_ERROR ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (char*,char) ; 
 int FUNC8 (char const*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,char*) ; 

__attribute__((used)) static int FUNC11(sqlite3_tokenizer *pTokenizer,
                      const char *zInput,
                      int nInput,
                      sqlite3_tokenizer_cursor **ppCursor)
{
    mm_tokenizer_t *tok = (mm_tokenizer_t *) pTokenizer;
    mm_cursor_t *cur;
    int i_input;
    int i_output;

    UErrorCode status = U_ZERO_ERROR;
    int32_t dst_len;
    UChar32 c;

    //__android_log_print(ANDROID_LOG_VERBOSE, "TOKENIZER", "Begin: %s", zInput);

    if (nInput < 0)
        nInput = FUNC8(zInput);

    dst_len = FUNC0(nInput + 1);
    cur = (mm_cursor_t *) FUNC6(
        sizeof(mm_cursor_t) + dst_len * sizeof(UChar) // in_buffer
        + (dst_len + 1) * sizeof(int)                 // in_offset
        );
    if (!cur)
        return SQLITE_NOMEM;

    FUNC4(cur, 0, sizeof(mm_cursor_t));
    cur->in_buffer = (UChar *) &cur[1];
    cur->in_offset = (int *) &cur->in_buffer[dst_len];
    cur->out_buffer = NULL;
    cur->out_length = 0;
    cur->token_count = 0;
    cur->ideo_start = -1;
    cur->ideo_end = -1;
    cur->ideo_state = -1;

    i_input = 0;
    i_output = 0;
    cur->in_offset[i_output] = i_input;
    for (;;) {
        if (i_input >= nInput)
            break;

        FUNC2(zInput, i_input, nInput, c);
        if (!c)
            break;
        if (c < 0)
            c = ' ';

        int is_error = 0;
        FUNC1(cur->in_buffer, i_output, dst_len, c, is_error);
        if (is_error) {
            FUNC5(cur);
            FUNC7(
                "Writing UTF-16 character failed. Code point: 0x%x", c);
            return SQLITE_ERROR;
        }
        cur->in_offset[i_output] = i_input;
    }

    cur->iter =
        FUNC10(UBRK_WORD, tok->locale, cur->in_buffer, i_output, &status);
    if (FUNC3(status)) {
        FUNC7(
            "Open UBreakIterator failed. ICU error code: %d", status);
        return SQLITE_ERROR;
    }
    cur->in_length = i_output;

    FUNC9(cur->iter);
    *ppCursor = (sqlite3_tokenizer_cursor *) cur;
    return SQLITE_OK;
}