
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {size_t nb_items; size_t anchor_item; size_t page_size; size_t selected_item; int focus_item; int * items; } ;
typedef int LRESULT ;
typedef int LB_ITEMDATA ;
typedef TYPE_1__ LB_DESCR ;
typedef size_t INT ;


 int FALSE ;
 int GetProcessHeap () ;
 int * HeapReAlloc (int ,int ,int *,size_t) ;
 int HeapSize (int ,int ,int *) ;
 scalar_t__ ISWIN31 ;
 int IS_MULTISELECT (TYPE_1__*) ;
 int LB_ARRAY_GRANULARITY ;
 int LB_ERR ;
 int LB_OKAY ;
 int LISTBOX_DeleteItem (TYPE_1__*,size_t) ;
 int LISTBOX_InvalidateItems (TYPE_1__*,size_t) ;
 int LISTBOX_SetSelection (TYPE_1__*,int,int ,int ) ;
 int LISTBOX_SetTopItem (TYPE_1__*,int ,int ) ;
 int LISTBOX_UpdateScroll (TYPE_1__*) ;
 int RtlMoveMemory (int *,int *,size_t) ;
 int TRUE ;

__attribute__((used)) static LRESULT LISTBOX_RemoveItem( LB_DESCR *descr, INT index )
{
    LB_ITEMDATA *item;
    INT max_items;

    if ((index < 0) || (index >= descr->nb_items)) return LB_ERR;


    LISTBOX_InvalidateItems( descr, index );

    descr->nb_items--;
    LISTBOX_DeleteItem( descr, index );

    if (!descr->nb_items) return LB_OKAY;



    item = &descr->items[index];
    if (index < descr->nb_items)
        RtlMoveMemory( item, item + 1,
                       (descr->nb_items - index) * sizeof(LB_ITEMDATA) );
    if (descr->anchor_item == descr->nb_items) descr->anchor_item--;



    max_items = HeapSize( GetProcessHeap(), 0, descr->items ) / sizeof(LB_ITEMDATA);
    if (descr->nb_items < max_items - 2*LB_ARRAY_GRANULARITY)
    {
        max_items -= LB_ARRAY_GRANULARITY;
        item = HeapReAlloc( GetProcessHeap(), 0, descr->items,
                            max_items * sizeof(LB_ITEMDATA) );
        if (item) descr->items = item;
    }


    LISTBOX_UpdateScroll( descr );


    if (descr->nb_items == descr->page_size)
        LISTBOX_SetTopItem( descr, 0, TRUE );


    if (!IS_MULTISELECT(descr))
    {
        if (index == descr->selected_item)
            descr->selected_item = -1;
        else if (index < descr->selected_item)
        {
            descr->selected_item--;
            if (ISWIN31)
               LISTBOX_SetSelection( descr, descr->selected_item + 1, TRUE, FALSE);
        }
    }

    if (descr->focus_item >= descr->nb_items)
    {
          descr->focus_item = descr->nb_items - 1;
          if (descr->focus_item < 0) descr->focus_item = 0;
    }
    return LB_OKAY;
}
