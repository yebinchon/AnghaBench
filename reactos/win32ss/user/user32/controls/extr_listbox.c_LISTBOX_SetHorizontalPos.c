
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ horz_extent; scalar_t__ width; scalar_t__ horz_pos; int self; int focus_item; } ;
typedef int RECT ;
typedef TYPE_1__ LB_DESCR ;
typedef scalar_t__ INT ;


 int InvalidateRect (int ,int *,int ) ;
 int LISTBOX_GetItemRect (TYPE_1__*,int ,int *) ;
 int LISTBOX_UpdateScroll (TYPE_1__*) ;
 int SW_ERASE ;
 int SW_INVALIDATE ;
 int SW_SCROLLCHILDREN ;
 int ScrollWindowEx (int ,scalar_t__,int ,int *,int *,int ,int *,int) ;
 int TRACE (char*,int ,scalar_t__) ;
 int TRUE ;
 scalar_t__ abs (scalar_t__) ;

__attribute__((used)) static void LISTBOX_SetHorizontalPos( LB_DESCR *descr, INT pos )
{
    INT diff;

    if (pos > descr->horz_extent - descr->width)
        pos = descr->horz_extent - descr->width;
    if (pos < 0) pos = 0;
    if (!(diff = descr->horz_pos - pos)) return;
    TRACE("[%p]: new horz pos = %d\n", descr->self, pos );
    descr->horz_pos = pos;
    LISTBOX_UpdateScroll( descr );
    if (abs(diff) < descr->width)
    {
        RECT rect;

        if (LISTBOX_GetItemRect( descr, descr->focus_item, &rect ) == 1)
            InvalidateRect( descr->self, &rect, TRUE );
        ScrollWindowEx( descr->self, diff, 0, ((void*)0), ((void*)0), 0, ((void*)0),
                          SW_INVALIDATE | SW_ERASE | SW_SCROLLCHILDREN );
    }
    else
        InvalidateRect( descr->self, ((void*)0), TRUE );
}
