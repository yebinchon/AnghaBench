
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int sqlite3_tokenizer_cursor ;
struct TYPE_4__ {char* in_buffer; scalar_t__ ideo_state; scalar_t__ ideo_end; scalar_t__ ideo_start; int iter; } ;
typedef TYPE_1__ mm_cursor_t ;
typedef scalar_t__ int32_t ;
typedef char UChar32 ;


 int SQLITE_DONE ;
 int SQLITE_ERROR ;
 scalar_t__ UBRK_DONE ;
 scalar_t__ UBRK_WORD_IDEO ;
 scalar_t__ UBRK_WORD_IDEO_LIMIT ;
 scalar_t__ UBRK_WORD_NONE ;
 scalar_t__ UBRK_WORD_NONE_LIMIT ;
 scalar_t__ find_splited_ideo_token (TYPE_1__*,scalar_t__*,scalar_t__*) ;
 int output_token (TYPE_1__*,scalar_t__,scalar_t__,char const**,int*,int*,int*,int*) ;
 int sqlite3_mm_clear_error () ;
 int sqlite3_mm_set_last_error (char*) ;
 scalar_t__ u_isspace (char) ;
 scalar_t__ ubrk_current (int ) ;
 scalar_t__ ubrk_getRuleStatus (int ) ;
 int ubrk_isBoundary (int ,scalar_t__) ;
 scalar_t__ ubrk_next (int ) ;

__attribute__((used)) static int
mmtok_next(sqlite3_tokenizer_cursor *pCursor,
           const char **ppToken,
           int *pnBytes,
           int *piStartOffset,
           int *piEndOffset,
           int *piPosition
           )
{
    mm_cursor_t *cur = (mm_cursor_t *) pCursor;
    int32_t start, end;
    int32_t token_type;


    if (find_splited_ideo_token(cur, &start, &end))
        return output_token(cur, start, end, ppToken, pnBytes, piStartOffset,
                            piEndOffset, piPosition);

    start = ubrk_current(cur->iter);


    for (;;) {
        end = ubrk_next(cur->iter);
        if (end == UBRK_DONE) {
            sqlite3_mm_clear_error();
            return SQLITE_DONE;
        }

        token_type = ubrk_getRuleStatus(cur->iter);
        if (token_type >= UBRK_WORD_NONE && token_type < UBRK_WORD_NONE_LIMIT) {


            UChar32 c = cur->in_buffer[start];
            if (c == '*' || c == 0x200b || u_isspace(c)) {
                start = end;
                continue;
            }
        }

        break;
    }


    if (token_type < UBRK_WORD_IDEO || token_type >= UBRK_WORD_IDEO_LIMIT)
        return output_token(cur, start, end, ppToken, pnBytes, piStartOffset,
                            piEndOffset, piPosition);


    for (;;) {
        int32_t e = ubrk_next(cur->iter);
        if (e == UBRK_DONE)
            break;
        token_type = ubrk_getRuleStatus(cur->iter);
        if (token_type < UBRK_WORD_IDEO || token_type >= UBRK_WORD_IDEO_LIMIT)
            break;
        end = e;
    }
    ubrk_isBoundary(cur->iter, end);

    cur->ideo_start = start;
    cur->ideo_end = end;
    cur->ideo_state = 0;
    if (find_splited_ideo_token(cur, &start, &end))
        return output_token(cur, start, end, ppToken, pnBytes, piStartOffset,
                            piEndOffset, piPosition);

    sqlite3_mm_set_last_error("IDEO token found but can't output token.");
    return SQLITE_ERROR;
}
