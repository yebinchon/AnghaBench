
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef int si ;
typedef int sbi ;
typedef enum SCROLL_HITTEST { ____Placeholder_SCROLL_HITTEST } SCROLL_HITTEST ;
struct TYPE_16__ {int top; int left; } ;
struct TYPE_17__ {int dwStyle; TYPE_1__ rcWindow; } ;
struct TYPE_21__ {int hWnd; TYPE_2__ wi; } ;
struct TYPE_20__ {scalar_t__ SCROLL_TrackingWin; } ;
struct TYPE_19__ {int cbSize; int* rgstate; scalar_t__ xyThumbTop; int rcScrollBar; } ;
struct TYPE_18__ {int cbSize; int fMask; } ;
typedef TYPE_3__ SCROLLINFO ;
typedef TYPE_4__ SCROLLBARINFO ;
typedef TYPE_5__* PWND_DATA ;
typedef int POINT ;
typedef TYPE_6__* PDRAW_CONTEXT ;
typedef scalar_t__ INT ;
typedef int BOOL ;


 int FALSE ;
 int GetScrollBarInfo (int ,int ,TYPE_4__*) ;
 int GetScrollInfo (int ,scalar_t__,TYPE_3__*) ;
 scalar_t__ IsRectEmpty (int *) ;
 int OffsetRect (int *,int ,int ) ;
 scalar_t__ SB_HORZ ;
 scalar_t__ SB_VERT ;
 size_t SCROLL_BOTTOM_ARROW ;
 int SCROLL_DrawArrows (TYPE_6__*,TYPE_4__*,int ,int ,int) ;
 int SCROLL_DrawInterior (TYPE_6__*,TYPE_4__*,scalar_t__,int ,int ,int) ;
 int SCROLL_HitTest (int ,TYPE_4__*,int ,int ,int ) ;
 int SCROLL_IsVertical (int ,scalar_t__) ;
 int SCROLL_NOWHERE ;
 size_t SCROLL_TOP_ARROW ;
 int SCROLL_getObjectId (scalar_t__) ;
 int SIF_ALL ;
 int STATE_SYSTEM_UNAVAILABLE ;
 int ScreenToWindow (int ,int *) ;
 TYPE_5__* ThemeGetWndData (int ) ;
 int WS_HSCROLL ;
 int WS_VSCROLL ;

void
ThemeDrawScrollBar(PDRAW_CONTEXT pcontext, INT nBar, POINT* pt)
{
    SCROLLINFO si;
    SCROLLBARINFO sbi;
    BOOL vertical;
    enum SCROLL_HITTEST htHot = SCROLL_NOWHERE;
    PWND_DATA pwndData;

    if (((nBar == SB_VERT) && !(pcontext->wi.dwStyle & WS_VSCROLL)) ||
        ((nBar == SB_HORZ) && !(pcontext->wi.dwStyle & WS_HSCROLL))) return;

    if (!(pwndData = ThemeGetWndData(pcontext->hWnd)))
        return;

    if (pwndData->SCROLL_TrackingWin)
        return;


    sbi.cbSize = sizeof(sbi);
    si.cbSize = sizeof(si);
    si.fMask = SIF_ALL ;
    GetScrollInfo(pcontext->hWnd, nBar, &si);
    GetScrollBarInfo(pcontext->hWnd, SCROLL_getObjectId(nBar), &sbi);
    vertical = SCROLL_IsVertical(pcontext->hWnd, nBar);
    if(sbi.rgstate[SCROLL_TOP_ARROW] & STATE_SYSTEM_UNAVAILABLE &&
       sbi.rgstate[SCROLL_BOTTOM_ARROW] & STATE_SYSTEM_UNAVAILABLE )
    {
        sbi.xyThumbTop = 0;
    }


    OffsetRect(&sbi.rcScrollBar, -pcontext->wi.rcWindow.left, -pcontext->wi.rcWindow.top);

    if(pt)
    {
        ScreenToWindow(pcontext->hWnd, pt);
        htHot = SCROLL_HitTest(pcontext->hWnd, &sbi, vertical, *pt, FALSE);
    }


    if(IsRectEmpty(&sbi.rcScrollBar)) return;


    SCROLL_DrawArrows( pcontext, &sbi, vertical, 0, htHot );
 SCROLL_DrawInterior( pcontext, &sbi, sbi.xyThumbTop, vertical, 0, htHot );
}
