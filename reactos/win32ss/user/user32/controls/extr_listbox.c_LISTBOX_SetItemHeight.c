
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int style; size_t nb_items; size_t item_height; int self; TYPE_1__* items; } ;
struct TYPE_7__ {size_t height; } ;
typedef int LRESULT ;
typedef TYPE_2__ LB_DESCR ;
typedef size_t INT ;
typedef scalar_t__ BOOL ;


 int ERROR_INVALID_INDEX ;
 int InvalidateRect (int ,int ,int ) ;
 int LBS_OWNERDRAWVARIABLE ;
 int LB_ERR ;
 int LB_OKAY ;
 int LISTBOX_InvalidateItems (TYPE_2__*,size_t) ;
 int LISTBOX_UpdatePage (TYPE_2__*) ;
 int LISTBOX_UpdateScroll (TYPE_2__*) ;
 size_t MAXBYTE ;
 int SetLastError (int ) ;
 int TRACE (char*,int ,size_t,...) ;
 int TRUE ;

__attribute__((used)) static LRESULT LISTBOX_SetItemHeight( LB_DESCR *descr, INT index, INT height, BOOL repaint )
{
    if (height > MAXBYTE)
        return -1;

    if (!height) height = 1;

    if (descr->style & LBS_OWNERDRAWVARIABLE)
    {
        if ((index < 0) || (index >= descr->nb_items))
        {
            SetLastError(ERROR_INVALID_INDEX);
            return LB_ERR;
        }
        TRACE("[%p]: item %d height = %d\n", descr->self, index, height );
        descr->items[index].height = height;
        LISTBOX_UpdateScroll( descr );
 if (repaint)
     LISTBOX_InvalidateItems( descr, index );
    }
    else if (height != descr->item_height)
    {
        TRACE("[%p]: new height = %d\n", descr->self, height );
        descr->item_height = height;
        LISTBOX_UpdatePage( descr );
        LISTBOX_UpdateScroll( descr );
 if (repaint)
     InvalidateRect( descr->self, 0, TRUE );
    }
    return LB_OKAY;
}
