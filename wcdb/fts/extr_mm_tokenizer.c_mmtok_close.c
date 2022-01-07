
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int sqlite3_tokenizer_cursor ;
struct TYPE_3__ {struct TYPE_3__* out_buffer; int iter; } ;
typedef TYPE_1__ mm_cursor_t ;


 int SQLITE_OK ;
 int sqlite3_free (TYPE_1__*) ;
 int ubrk_close (int ) ;

__attribute__((used)) static int mmtok_close(sqlite3_tokenizer_cursor *pCursor)
{
    mm_cursor_t *cur = (mm_cursor_t *) pCursor;
    ubrk_close(cur->iter);
    if (cur->out_buffer)
        sqlite3_free(cur->out_buffer);
    sqlite3_free(cur);
    return SQLITE_OK;
}
