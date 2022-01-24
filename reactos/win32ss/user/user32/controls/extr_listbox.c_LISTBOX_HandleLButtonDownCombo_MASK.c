#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;
typedef  struct TYPE_15__   TYPE_14__ ;

/* Type definitions */
typedef  scalar_t__ UINT ;
struct TYPE_18__ {int selected_item; int style; int /*<<< orphan*/  self; TYPE_14__* lphc; scalar_t__ nb_items; } ;
struct TYPE_17__ {scalar_t__ y; scalar_t__ x; } ;
struct TYPE_16__ {int /*<<< orphan*/  bottom; int /*<<< orphan*/  right; } ;
struct TYPE_15__ {int droppedIndex; } ;
typedef  TYPE_1__ RECT ;
typedef  TYPE_2__ POINT ;
typedef  int /*<<< orphan*/  LRESULT ;
typedef  int LONG ;
typedef  TYPE_3__ LB_DESCR ;
typedef  scalar_t__ INT ;
typedef  scalar_t__ HWND ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_14__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  GWL_STYLE ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ HTHSCROLL ; 
 scalar_t__ HTVSCROLL ; 
 int /*<<< orphan*/  LBN_DBLCLK ; 
 int LBS_NOTIFY ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC11 (TYPE_1__*,TYPE_2__) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SM_CXVSCROLL ; 
 int /*<<< orphan*/  SM_CYHSCROLL ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__) ; 
 scalar_t__ WM_LBUTTONDOWN ; 
 int /*<<< orphan*/  WM_NCLBUTTONDOWN ; 
 int WS_HSCROLL ; 
 int WS_VSCROLL ; 

__attribute__((used)) static LRESULT FUNC16( LB_DESCR *descr, UINT msg, DWORD keys, INT x, INT y)
{
    RECT clientRect, screenRect;
    POINT mousePos;

    mousePos.x = x;
    mousePos.y = y;

    FUNC3(descr->self, &clientRect);

    if(FUNC11(&clientRect, mousePos))
    {
       /* MousePos is in client, resume normal processing */
        if (msg == WM_LBUTTONDOWN)
        {
           descr->lphc->droppedIndex = descr->nb_items ? descr->selected_item : -1;
           return FUNC7( descr, keys, x, y);
        }
        else if (descr->style & LBS_NOTIFY)
            FUNC13( descr, LBN_DBLCLK );
    }
    else
    {
        POINT screenMousePos;
        HWND hWndOldCapture;

        /* Check the Non-Client Area */
        screenMousePos = mousePos;
        hWndOldCapture = FUNC2();
        FUNC12();
        FUNC6(descr->self, &screenRect);
        FUNC1(descr->self, &screenMousePos);

        if(!FUNC11(&screenRect, screenMousePos))
        {
            FUNC8( descr, descr->lphc->droppedIndex, FALSE );
            FUNC9( descr, descr->lphc->droppedIndex, FALSE, FALSE );
            FUNC0( descr->lphc, FALSE, FALSE );
        }
        else
        {
            /* Check to see the NC is a scrollbar */
            INT nHitTestType=0;
            LONG style = FUNC5( descr->self, GWL_STYLE );
            /* Check Vertical scroll bar */
            if (style & WS_VSCROLL)
            {
                clientRect.right += FUNC4(SM_CXVSCROLL);
                if (FUNC11( &clientRect, mousePos ))
                    nHitTestType = HTVSCROLL;
            }
              /* Check horizontal scroll bar */
            if (style & WS_HSCROLL)
            {
                clientRect.bottom += FUNC4(SM_CYHSCROLL);
                if (FUNC11( &clientRect, mousePos ))
                    nHitTestType = HTHSCROLL;
            }
            /* Windows sends this message when a scrollbar is clicked
             */

            if(nHitTestType != 0)
            {
                FUNC14(descr->self, WM_NCLBUTTONDOWN, nHitTestType,
                             FUNC10(screenMousePos.x, screenMousePos.y));
            }
            /* Resume the Capture after scrolling is complete
             */
            if(hWndOldCapture != 0)
                FUNC15(hWndOldCapture);
        }
    }
    return 0;
}