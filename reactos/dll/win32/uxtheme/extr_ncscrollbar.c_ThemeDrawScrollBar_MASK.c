#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_6__ ;
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  si ;
typedef  int /*<<< orphan*/  sbi ;
typedef  enum SCROLL_HITTEST { ____Placeholder_SCROLL_HITTEST } SCROLL_HITTEST ;
struct TYPE_16__ {int /*<<< orphan*/  top; int /*<<< orphan*/  left; } ;
struct TYPE_17__ {int dwStyle; TYPE_1__ rcWindow; } ;
struct TYPE_21__ {int /*<<< orphan*/  hWnd; TYPE_2__ wi; } ;
struct TYPE_20__ {scalar_t__ SCROLL_TrackingWin; } ;
struct TYPE_19__ {int cbSize; int* rgstate; scalar_t__ xyThumbTop; int /*<<< orphan*/  rcScrollBar; } ;
struct TYPE_18__ {int cbSize; int /*<<< orphan*/  fMask; } ;
typedef  TYPE_3__ SCROLLINFO ;
typedef  TYPE_4__ SCROLLBARINFO ;
typedef  TYPE_5__* PWND_DATA ;
typedef  int /*<<< orphan*/  POINT ;
typedef  TYPE_6__* PDRAW_CONTEXT ;
typedef  scalar_t__ INT ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__,TYPE_3__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ SB_HORZ ; 
 scalar_t__ SB_VERT ; 
 size_t SCROLL_BOTTOM_ARROW ; 
 int /*<<< orphan*/  FUNC4 (TYPE_6__*,TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_6__*,TYPE_4__*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__) ; 
 int SCROLL_NOWHERE ; 
 size_t SCROLL_TOP_ARROW ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  SIF_ALL ; 
 int STATE_SYSTEM_UNAVAILABLE ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_5__* FUNC10 (int /*<<< orphan*/ ) ; 
 int WS_HSCROLL ; 
 int WS_VSCROLL ; 

void 
FUNC11(PDRAW_CONTEXT pcontext, INT nBar, POINT* pt)
{
    SCROLLINFO si;
    SCROLLBARINFO sbi;
    BOOL vertical;
    enum SCROLL_HITTEST htHot = SCROLL_NOWHERE;
    PWND_DATA pwndData;

    if (((nBar == SB_VERT) && !(pcontext->wi.dwStyle & WS_VSCROLL)) ||
        ((nBar == SB_HORZ) && !(pcontext->wi.dwStyle & WS_HSCROLL))) return;

    if (!(pwndData = FUNC10(pcontext->hWnd)))
        return;

    if (pwndData->SCROLL_TrackingWin)
        return;

    /* Retrieve scrollbar info */
    sbi.cbSize = sizeof(sbi);
    si.cbSize = sizeof(si);
    si.fMask = SIF_ALL ;
    FUNC1(pcontext->hWnd, nBar, &si);
    FUNC0(pcontext->hWnd, FUNC8(nBar), &sbi);
    vertical = FUNC7(pcontext->hWnd, nBar);
    if(sbi.rgstate[SCROLL_TOP_ARROW] & STATE_SYSTEM_UNAVAILABLE  && 
       sbi.rgstate[SCROLL_BOTTOM_ARROW] & STATE_SYSTEM_UNAVAILABLE  )
    {
        sbi.xyThumbTop = 0;
    }

    /* The scrollbar rect is in screen coordinates */
    FUNC3(&sbi.rcScrollBar, -pcontext->wi.rcWindow.left, -pcontext->wi.rcWindow.top);

    if(pt)
    {
        FUNC9(pcontext->hWnd, pt);
        htHot = FUNC6(pcontext->hWnd, &sbi, vertical, *pt, FALSE);
    }

    /* do not draw if the scrollbar rectangle is empty */
    if(FUNC2(&sbi.rcScrollBar)) return;

    /* Draw the scrollbar */
    FUNC4( pcontext, &sbi, vertical, 0, htHot );
	FUNC5( pcontext, &sbi, sbi.xyThumbTop, vertical, 0, htHot );
}