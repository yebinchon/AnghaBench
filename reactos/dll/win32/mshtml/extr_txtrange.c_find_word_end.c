
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int off; int node; } ;
typedef TYPE_1__ rangepoint_t ;
typedef char WCHAR ;
typedef int BOOL ;


 int FALSE ;
 int TRUE ;
 int free_rangepoint (TYPE_1__*) ;
 int init_rangepoint (TYPE_1__*,int ,int ) ;
 scalar_t__ isspaceW (char) ;
 char move_next_char (TYPE_1__*) ;
 char move_prev_char (TYPE_1__*) ;
 int rangepoint_cmp (TYPE_1__*,TYPE_1__*) ;

__attribute__((used)) static BOOL find_word_end(rangepoint_t *iter, BOOL is_collapsed)
{
    rangepoint_t prev_iter;
    WCHAR c;
    BOOL ret = FALSE;

    if(!is_collapsed) {
        init_rangepoint(&prev_iter, iter->node, iter->off);
        c = move_prev_char(&prev_iter);
        free_rangepoint(&prev_iter);
        if(isspaceW(c))
            return FALSE;
    }

    do {
        init_rangepoint(&prev_iter, iter->node, iter->off);
        c = move_next_char(iter);
        if(c == '\n') {
            free_rangepoint(iter);
            *iter = prev_iter;
            return ret;
        }
        if(!c) {
            if(!ret)
                ret = !rangepoint_cmp(iter, &prev_iter);
        }else {
            ret = TRUE;
        }
        free_rangepoint(&prev_iter);
    }while(c && !isspaceW(c));

    return ret;
}
