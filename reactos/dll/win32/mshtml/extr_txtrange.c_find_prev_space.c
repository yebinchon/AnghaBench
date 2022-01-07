
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int off; int node; } ;
typedef TYPE_1__ rangepoint_t ;
typedef scalar_t__ WCHAR ;
typedef int LONG ;
typedef scalar_t__ BOOL ;


 int FALSE ;
 int TRUE ;
 int free_rangepoint (TYPE_1__*) ;
 int init_rangepoint (TYPE_1__*,int ,int ) ;
 scalar_t__ isspaceW (scalar_t__) ;
 scalar_t__ move_prev_char (TYPE_1__*) ;

__attribute__((used)) static LONG find_prev_space(rangepoint_t *iter, BOOL first_space)
{
    rangepoint_t prev;
    WCHAR c;

    init_rangepoint(&prev, iter->node, iter->off);
    c = move_prev_char(&prev);
    if(!c || (first_space && isspaceW(c)))
        return FALSE;

    do {
        free_rangepoint(iter);
        init_rangepoint(iter, prev.node, prev.off);
        c = move_prev_char(&prev);
    }while(c && !isspaceW(c));

    free_rangepoint(&prev);
    return TRUE;
}
