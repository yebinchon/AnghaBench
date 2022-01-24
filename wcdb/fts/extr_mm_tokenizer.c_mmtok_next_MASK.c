#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3_tokenizer_cursor ;
struct TYPE_4__ {char* in_buffer; scalar_t__ ideo_state; scalar_t__ ideo_end; scalar_t__ ideo_start; int /*<<< orphan*/  iter; } ;
typedef  TYPE_1__ mm_cursor_t ;
typedef  scalar_t__ int32_t ;
typedef  char UChar32 ;

/* Variables and functions */
 int SQLITE_DONE ; 
 int SQLITE_ERROR ; 
 scalar_t__ UBRK_DONE ; 
 scalar_t__ UBRK_WORD_IDEO ; 
 scalar_t__ UBRK_WORD_IDEO_LIMIT ; 
 scalar_t__ UBRK_WORD_NONE ; 
 scalar_t__ UBRK_WORD_NONE_LIMIT ; 
 scalar_t__ FUNC0 (TYPE_1__*,scalar_t__*,scalar_t__*) ; 
 int FUNC1 (TYPE_1__*,scalar_t__,scalar_t__,char const**,int*,int*,int*,int*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (char) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC9(sqlite3_tokenizer_cursor *pCursor, // Cursor returned by simpleOpen
           const char **ppToken,              // OUT: *ppToken is the token text
           int *pnBytes,                      // OUT: Number of bytes in token
           int *piStartOffset,                // OUT: Starting offset of token
           int *piEndOffset,                  // OUT: Ending offset of token
           int *piPosition                    // OUT: Position integer of token
           )
{
    mm_cursor_t *cur = (mm_cursor_t *) pCursor;
    int32_t start, end;
    int32_t token_type;

    // process pending ideographic token.
    if (FUNC0(cur, &start, &end))
        return FUNC1(cur, start, end, ppToken, pnBytes, piStartOffset,
                            piEndOffset, piPosition);

    start = FUNC5(cur->iter);

    // find first non-NONE token.
    for (;;) {
        end = FUNC8(cur->iter);
        if (end == UBRK_DONE) {
            FUNC2();
            return SQLITE_DONE;
        }

        token_type = FUNC6(cur->iter);
        if (token_type >= UBRK_WORD_NONE && token_type < UBRK_WORD_NONE_LIMIT) {
            // look at the first character, if it's a space or ZWSP, ignore this token.
            // also ignore '*' because sqlite parser uses it as prefix operator.
            UChar32 c = cur->in_buffer[start];
            if (c == '*' || c == 0x200b || FUNC4(c)) {
                start = end;
                continue;
            }
        }

        break;
    }

    // for non-IDEO tokens, just return.
    if (token_type < UBRK_WORD_IDEO || token_type >= UBRK_WORD_IDEO_LIMIT)
        return FUNC1(cur, start, end, ppToken, pnBytes, piStartOffset,
                            piEndOffset, piPosition);

    // for IDEO tokens, find all suffix ideo tokens.
    for (;;) {
        int32_t e = FUNC8(cur->iter);
        if (e == UBRK_DONE)
            break;
        token_type = FUNC6(cur->iter);
        if (token_type < UBRK_WORD_IDEO || token_type >= UBRK_WORD_IDEO_LIMIT)
            break;
        end = e;
    }
    FUNC7(cur->iter, end);

    cur->ideo_start = start;
    cur->ideo_end = end;
    cur->ideo_state = 0;
    if (FUNC0(cur, &start, &end))
        return FUNC1(cur, start, end, ppToken, pnBytes, piStartOffset,
                            piEndOffset, piPosition);

    FUNC3("IDEO token found but can't output token.");
    return SQLITE_ERROR;
}