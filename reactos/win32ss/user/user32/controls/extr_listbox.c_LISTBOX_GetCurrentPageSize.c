
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int style; size_t page_size; size_t top_item; size_t nb_items; size_t height; TYPE_1__* items; } ;
struct TYPE_4__ {size_t height; } ;
typedef TYPE_2__ LB_DESCR ;
typedef size_t INT ;


 int LBS_OWNERDRAWVARIABLE ;

__attribute__((used)) static INT LISTBOX_GetCurrentPageSize( const LB_DESCR *descr )
{
    INT i, height;
    if (!(descr->style & LBS_OWNERDRAWVARIABLE)) return descr->page_size;
    for (i = descr->top_item, height = 0; i < descr->nb_items; i++)
    {
        if ((height += descr->items[i].height) > descr->height) break;
    }
    if (i == descr->top_item) return 1;
    else return i - descr->top_item;
}
