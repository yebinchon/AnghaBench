
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int info ;
typedef int WORD ;
struct TYPE_8__ {int style; int top_item; int nb_items; int self; } ;
struct TYPE_7__ {int cbSize; int nTrackPos; int fMask; } ;
typedef TYPE_1__ SCROLLINFO ;
typedef int LRESULT ;
typedef TYPE_2__ LB_DESCR ;


 int GetScrollInfo (int ,int ,TYPE_1__*) ;
 int LBS_MULTICOLUMN ;
 int LISTBOX_GetCurrentPageSize (TYPE_2__*) ;
 int LISTBOX_SetTopItem (TYPE_2__*,int,int ) ;
 int SB_VERT ;
 int SIF_TRACKPOS ;
 int TRUE ;

__attribute__((used)) static LRESULT LISTBOX_HandleVScroll( LB_DESCR *descr, WORD scrollReq, WORD pos )
{
    SCROLLINFO info;

    if (descr->style & LBS_MULTICOLUMN) return 0;
    switch(scrollReq)
    {
    case 133:
        LISTBOX_SetTopItem( descr, descr->top_item - 1, TRUE );
        break;
    case 134:
        LISTBOX_SetTopItem( descr, descr->top_item + 1, TRUE );
        break;
    case 131:
        LISTBOX_SetTopItem( descr, descr->top_item -
                            LISTBOX_GetCurrentPageSize( descr ), TRUE );
        break;
    case 132:
        LISTBOX_SetTopItem( descr, descr->top_item +
                            LISTBOX_GetCurrentPageSize( descr ), TRUE );
        break;
    case 130:
        LISTBOX_SetTopItem( descr, pos, TRUE );
        break;
    case 129:
        info.cbSize = sizeof(info);
        info.fMask = SIF_TRACKPOS;
        GetScrollInfo( descr->self, SB_VERT, &info );
        LISTBOX_SetTopItem( descr, info.nTrackPos, TRUE );
        break;
    case 128:
        LISTBOX_SetTopItem( descr, 0, TRUE );
        break;
    case 135:
        LISTBOX_SetTopItem( descr, descr->nb_items, TRUE );
        break;
    }
    return 0;
}
