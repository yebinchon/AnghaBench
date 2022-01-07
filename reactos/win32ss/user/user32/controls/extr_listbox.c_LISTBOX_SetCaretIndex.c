
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ focus_item; int style; scalar_t__ nb_items; } ;
typedef int LRESULT ;
typedef TYPE_1__ LB_DESCR ;
typedef scalar_t__ INT ;
typedef int BOOL ;


 int FALSE ;
 int LBS_NOSEL ;
 int LB_ERR ;
 int LB_OKAY ;
 int LISTBOX_DrawFocusRect (TYPE_1__*,int ) ;
 int LISTBOX_MakeItemVisible (TYPE_1__*,scalar_t__,int ) ;
 int TRACE (char*,scalar_t__,scalar_t__) ;
 int TRUE ;

__attribute__((used)) static LRESULT LISTBOX_SetCaretIndex( LB_DESCR *descr, INT index, BOOL fully_visible )
{
    INT oldfocus = descr->focus_item;

    TRACE("old focus %d, index %d\n", oldfocus, index);

    if (descr->style & LBS_NOSEL) return LB_ERR;
    if ((index < 0) || (index >= descr->nb_items)) return LB_ERR;
    if (index == oldfocus) return LB_OKAY;

    LISTBOX_DrawFocusRect( descr, FALSE );
    descr->focus_item = index;

    LISTBOX_MakeItemVisible( descr, index, fully_visible );
    LISTBOX_DrawFocusRect( descr, TRUE );

    return LB_OKAY;
}
