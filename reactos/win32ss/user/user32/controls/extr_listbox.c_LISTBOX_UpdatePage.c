
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int item_height; int height; int page_size; int style; int top_item; int self; } ;
typedef TYPE_1__ LB_DESCR ;
typedef int INT ;


 int FALSE ;
 int InvalidateRect (int ,int *,int ) ;
 int LBS_MULTICOLUMN ;
 int LISTBOX_SetTopItem (TYPE_1__*,int ,int ) ;
 int TRUE ;

__attribute__((used)) static void LISTBOX_UpdatePage( LB_DESCR *descr )
{
    INT page_size;

    if ((descr->item_height == 0) || (page_size = descr->height / descr->item_height) < 1)
                       page_size = 1;
    if (page_size == descr->page_size) return;
    descr->page_size = page_size;
    if (descr->style & LBS_MULTICOLUMN)
        InvalidateRect( descr->self, ((void*)0), TRUE );
    LISTBOX_SetTopItem( descr, descr->top_item, FALSE );
}
