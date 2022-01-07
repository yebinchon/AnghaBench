
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;
typedef struct TYPE_15__ TYPE_14__ ;


typedef scalar_t__ UINT ;
struct TYPE_18__ {int selected_item; int style; int self; TYPE_14__* lphc; scalar_t__ nb_items; } ;
struct TYPE_17__ {scalar_t__ y; scalar_t__ x; } ;
struct TYPE_16__ {int bottom; int right; } ;
struct TYPE_15__ {int droppedIndex; } ;
typedef TYPE_1__ RECT ;
typedef TYPE_2__ POINT ;
typedef int LRESULT ;
typedef int LONG ;
typedef TYPE_3__ LB_DESCR ;
typedef scalar_t__ INT ;
typedef scalar_t__ HWND ;
typedef int DWORD ;


 int COMBO_FlipListbox (TYPE_14__*,int ,int ) ;
 int ClientToScreen (int ,TYPE_2__*) ;
 int FALSE ;
 int GWL_STYLE ;
 scalar_t__ GetCapture () ;
 int GetClientRect (int ,TYPE_1__*) ;
 scalar_t__ GetSystemMetrics (int ) ;
 int GetWindowLongPtrW (int ,int ) ;
 int GetWindowRect (int ,TYPE_1__*) ;
 scalar_t__ HTHSCROLL ;
 scalar_t__ HTVSCROLL ;
 int LBN_DBLCLK ;
 int LBS_NOTIFY ;
 int LISTBOX_HandleLButtonDown (TYPE_3__*,int ,scalar_t__,scalar_t__) ;
 int LISTBOX_SetCaretIndex (TYPE_3__*,int,int ) ;
 int LISTBOX_SetSelection (TYPE_3__*,int,int ,int ) ;
 int MAKELONG (scalar_t__,scalar_t__) ;
 scalar_t__ PtInRect (TYPE_1__*,TYPE_2__) ;
 int ReleaseCapture () ;
 int SEND_NOTIFICATION (TYPE_3__*,int ) ;
 int SM_CXVSCROLL ;
 int SM_CYHSCROLL ;
 int SendMessageW (int ,int ,scalar_t__,int ) ;
 int SetCapture (scalar_t__) ;
 scalar_t__ WM_LBUTTONDOWN ;
 int WM_NCLBUTTONDOWN ;
 int WS_HSCROLL ;
 int WS_VSCROLL ;

__attribute__((used)) static LRESULT LISTBOX_HandleLButtonDownCombo( LB_DESCR *descr, UINT msg, DWORD keys, INT x, INT y)
{
    RECT clientRect, screenRect;
    POINT mousePos;

    mousePos.x = x;
    mousePos.y = y;

    GetClientRect(descr->self, &clientRect);

    if(PtInRect(&clientRect, mousePos))
    {

        if (msg == WM_LBUTTONDOWN)
        {
           descr->lphc->droppedIndex = descr->nb_items ? descr->selected_item : -1;
           return LISTBOX_HandleLButtonDown( descr, keys, x, y);
        }
        else if (descr->style & LBS_NOTIFY)
            SEND_NOTIFICATION( descr, LBN_DBLCLK );
    }
    else
    {
        POINT screenMousePos;
        HWND hWndOldCapture;


        screenMousePos = mousePos;
        hWndOldCapture = GetCapture();
        ReleaseCapture();
        GetWindowRect(descr->self, &screenRect);
        ClientToScreen(descr->self, &screenMousePos);

        if(!PtInRect(&screenRect, screenMousePos))
        {
            LISTBOX_SetCaretIndex( descr, descr->lphc->droppedIndex, FALSE );
            LISTBOX_SetSelection( descr, descr->lphc->droppedIndex, FALSE, FALSE );
            COMBO_FlipListbox( descr->lphc, FALSE, FALSE );
        }
        else
        {

            INT nHitTestType=0;
            LONG style = GetWindowLongPtrW( descr->self, GWL_STYLE );

            if (style & WS_VSCROLL)
            {
                clientRect.right += GetSystemMetrics(SM_CXVSCROLL);
                if (PtInRect( &clientRect, mousePos ))
                    nHitTestType = HTVSCROLL;
            }

            if (style & WS_HSCROLL)
            {
                clientRect.bottom += GetSystemMetrics(SM_CYHSCROLL);
                if (PtInRect( &clientRect, mousePos ))
                    nHitTestType = HTHSCROLL;
            }



            if(nHitTestType != 0)
            {
                SendMessageW(descr->self, WM_NCLBUTTONDOWN, nHitTestType,
                             MAKELONG(screenMousePos.x, screenMousePos.y));
            }


            if(hWndOldCapture != 0)
                SetCapture(hWndOldCapture);
        }
    }
    return 0;
}
