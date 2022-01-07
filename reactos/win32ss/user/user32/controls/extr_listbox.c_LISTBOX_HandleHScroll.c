
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int info ;
typedef int WORD ;
struct TYPE_8__ {int style; int top_item; int page_size; int width; int column_width; int nb_items; int horz_extent; int horz_pos; int self; } ;
struct TYPE_7__ {int cbSize; int nTrackPos; void* fMask; } ;
typedef TYPE_1__ SCROLLINFO ;
typedef int LRESULT ;
typedef TYPE_2__ LB_DESCR ;
typedef int INT ;


 int GetScrollInfo (int ,int ,TYPE_1__*) ;
 int LBS_MULTICOLUMN ;
 int LISTBOX_SetHorizontalPos (TYPE_2__*,int) ;
 int LISTBOX_SetTopItem (TYPE_2__*,int,int ) ;
 int SB_HORZ ;
 int SB_VERT ;
 void* SIF_TRACKPOS ;
 int TRUE ;

__attribute__((used)) static LRESULT LISTBOX_HandleHScroll( LB_DESCR *descr, WORD scrollReq, WORD pos )
{
    SCROLLINFO info;
    INT page;

    if (descr->style & LBS_MULTICOLUMN)
    {
        switch(scrollReq)
        {
        case 134:
            LISTBOX_SetTopItem( descr, descr->top_item-descr->page_size,
                                TRUE );
            break;
        case 133:
            LISTBOX_SetTopItem( descr, descr->top_item+descr->page_size,
                                TRUE );
            break;
        case 132:
            page = descr->width / descr->column_width;
            if (page < 1) page = 1;
            LISTBOX_SetTopItem( descr,
                             descr->top_item - page * descr->page_size, TRUE );
            break;
        case 131:
            page = descr->width / descr->column_width;
            if (page < 1) page = 1;
            LISTBOX_SetTopItem( descr,
                             descr->top_item + page * descr->page_size, TRUE );
            break;
        case 129:
            LISTBOX_SetTopItem( descr, pos*descr->page_size, TRUE );
            break;
        case 128:
            info.cbSize = sizeof(info);
            info.fMask = SIF_TRACKPOS;
            GetScrollInfo( descr->self, SB_VERT, &info );
            LISTBOX_SetTopItem( descr, info.nTrackPos*descr->page_size,
                                TRUE );
            break;
        case 135:
            LISTBOX_SetTopItem( descr, 0, TRUE );
            break;
        case 130:
            LISTBOX_SetTopItem( descr, descr->nb_items, TRUE );
            break;
        }
    }
    else if (descr->horz_extent)
    {
        switch(scrollReq)
        {
        case 134:
            LISTBOX_SetHorizontalPos( descr, descr->horz_pos - 1 );
            break;
        case 133:
            LISTBOX_SetHorizontalPos( descr, descr->horz_pos + 1 );
            break;
        case 132:
            LISTBOX_SetHorizontalPos( descr,
                                      descr->horz_pos - descr->width );
            break;
        case 131:
            LISTBOX_SetHorizontalPos( descr,
                                      descr->horz_pos + descr->width );
            break;
        case 129:
            LISTBOX_SetHorizontalPos( descr, pos );
            break;
        case 128:
            info.cbSize = sizeof(info);
            info.fMask = SIF_TRACKPOS;
            GetScrollInfo( descr->self, SB_HORZ, &info );
            LISTBOX_SetHorizontalPos( descr, info.nTrackPos );
            break;
        case 135:
            LISTBOX_SetHorizontalPos( descr, 0 );
            break;
        case 130:
            LISTBOX_SetHorizontalPos( descr,
                                      descr->horz_extent - descr->width );
            break;
        }
    }
    return 0;
}
