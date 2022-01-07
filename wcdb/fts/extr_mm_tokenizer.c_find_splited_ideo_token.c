
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ideo_state; int ideo_start; int ideo_end; int * in_buffer; } ;
typedef TYPE_1__ mm_cursor_t ;
typedef int int32_t ;
typedef int UChar32 ;


 scalar_t__ U16_IS_LEAD (int ) ;

__attribute__((used)) static int
find_splited_ideo_token(mm_cursor_t *cur, int32_t *start, int32_t *end)
{
    int32_t s, e;
    UChar32 c;

    if (cur->ideo_state < 0)
        return 0;

    if (cur->ideo_start == cur->ideo_end) {
        cur->ideo_state = -1;
        return 0;
    }


    s = cur->ideo_start;
    e = s + 1;
    c = cur->in_buffer[s];
    if (U16_IS_LEAD(c) && cur->ideo_end - s >= 2)
        e++;

    *start = s;
    *end = e;
    cur->ideo_start = e;
    return 1;
}
