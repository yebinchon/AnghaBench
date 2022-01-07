
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int style; scalar_t__ top_item; scalar_t__ page_size; scalar_t__ nb_items; int self; } ;
typedef TYPE_1__ LB_DESCR ;
typedef scalar_t__ BOOL ;


 int InvalidateRect (int ,int *,int ) ;
 int LBS_DISPLAYCHANGED ;
 int LBS_NOREDRAW ;
 int LISTBOX_UpdateScroll (TYPE_1__*) ;
 int TRUE ;

__attribute__((used)) static void LISTBOX_SetRedraw( LB_DESCR *descr, BOOL on )
{
    if (on)
    {
        if (!(descr->style & LBS_NOREDRAW)) return;
        descr->style &= ~LBS_NOREDRAW;
        if (descr->style & LBS_DISPLAYCHANGED)
        {
            InvalidateRect(descr->self, ((void*)0), TRUE);
            if ((descr->top_item + descr->page_size) > descr->nb_items)
            {
                descr->top_item = descr->nb_items - descr->page_size;
                if (descr->top_item < 0) descr->top_item = 0;
            }
            descr->style &= ~LBS_DISPLAYCHANGED;
        }
        LISTBOX_UpdateScroll( descr );
    }
    else descr->style |= LBS_NOREDRAW;
}
