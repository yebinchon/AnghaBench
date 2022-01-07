
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int selected_item; int style; int nb_items; TYPE_2__* lphc; TYPE_1__* items; } ;
struct TYPE_9__ {int wState; } ;
struct TYPE_8__ {int selected; } ;
typedef int LRESULT ;
typedef TYPE_3__ LB_DESCR ;
typedef int INT ;
typedef scalar_t__ BOOL ;


 int CBF_SELCHANGE ;
 int FALSE ;
 int LBN_SELCANCEL ;
 int LBN_SELCHANGE ;
 int LBS_MULTIPLESEL ;
 int LBS_NOSEL ;
 int LB_ERR ;
 int LB_OKAY ;
 int LISTBOX_RepaintItem (TYPE_3__*,int,int ) ;
 int LISTBOX_SelectItemRange (TYPE_3__*,int,int,scalar_t__) ;
 int ODA_SELECT ;
 int SEND_NOTIFICATION (TYPE_3__*,int ) ;
 int TRACE (char*,int,int,char*) ;
 int TRUE ;

__attribute__((used)) static LRESULT LISTBOX_SetSelection( LB_DESCR *descr, INT index,
                                     BOOL on, BOOL send_notify )
{
    TRACE( "cur_sel=%d index=%d notify=%s\n",
           descr->selected_item, index, send_notify ? "YES" : "NO" );

    if (descr->style & LBS_NOSEL)
    {
        descr->selected_item = index;
        return LB_ERR;
    }
    if ((index < -1) || (index >= descr->nb_items)) return LB_ERR;
    if (descr->style & LBS_MULTIPLESEL)
    {
        if (index == -1)
            return LISTBOX_SelectItemRange( descr, 0, descr->nb_items, on );
        else
            return LISTBOX_SelectItemRange( descr, index, index, on );
    }
    else
    {
        INT oldsel = descr->selected_item;
        if (index == oldsel) return LB_OKAY;
        if (oldsel != -1) descr->items[oldsel].selected = FALSE;
        if (index != -1) descr->items[index].selected = TRUE;
        if (oldsel != -1) LISTBOX_RepaintItem( descr, oldsel, ODA_SELECT );
        descr->selected_item = index;
        if (index != -1) LISTBOX_RepaintItem( descr, index, ODA_SELECT );
        if (send_notify && descr->nb_items) SEND_NOTIFICATION( descr,
                               (index != -1) ? LBN_SELCHANGE : LBN_SELCANCEL );
 else
     if( descr->lphc )
  descr->lphc->wState |= CBF_SELCHANGE;
    }
    return LB_OKAY;
}
