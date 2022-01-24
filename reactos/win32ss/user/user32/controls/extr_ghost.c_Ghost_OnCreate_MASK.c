#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_6__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
struct TYPE_19__ {int /*<<< orphan*/  bDestroyTarget; scalar_t__ hbm32bpp; scalar_t__ hwndTarget; } ;
typedef  TYPE_1__ WCHAR ;
struct TYPE_22__ {scalar_t__ lpCreateParams; } ;
struct TYPE_21__ {scalar_t__ fnid; } ;
struct TYPE_20__ {scalar_t__ top; scalar_t__ bottom; scalar_t__ left; scalar_t__ right; } ;
typedef  TYPE_2__ RECT ;
typedef  TYPE_3__* PWND ;
typedef  TYPE_1__* LPWSTR ;
typedef  int LONG_PTR ;
typedef  int INT ;
typedef  scalar_t__ HWND ;
typedef  scalar_t__ HBITMAP ;
typedef  TYPE_1__ GHOST_DATA ;
typedef  int DWORD ;
typedef  TYPE_6__ CREATESTRUCTW ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FNID_GHOST ; 
 int /*<<< orphan*/  GHOST_INTERVAL ; 
 int /*<<< orphan*/  GHOST_PROP ; 
 int /*<<< orphan*/  GHOST_TIMER_ID ; 
 int /*<<< orphan*/  GWLP_USERDATA ; 
 int /*<<< orphan*/  GWL_EXSTYLE ; 
 int /*<<< orphan*/  GWL_STYLE ; 
 int /*<<< orphan*/  GW_HWNDPREV ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC6 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,TYPE_2__*) ; 
 TYPE_1__* FUNC8 (scalar_t__,int*,int) ; 
 TYPE_1__* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  IDS_NOT_RESPONDING ; 
 scalar_t__ FUNC11 (scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__) ; 
 int FUNC13 (scalar_t__,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC18 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (scalar_t__,scalar_t__) ; 
 int SWP_DRAWFRAME ; 
 int SWP_NOACTIVATE ; 
 int SWP_NOMOVE ; 
 int SWP_NOOWNERZORDER ; 
 int /*<<< orphan*/  SW_HIDE ; 
 int /*<<< orphan*/  FUNC20 (scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC21 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC23 (scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC24 (scalar_t__,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC25 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (TYPE_1__*,int,TYPE_1__*) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  User32Instance ; 
 TYPE_3__* FUNC27 (scalar_t__) ; 
 int WS_CHILD ; 
 int WS_HSCROLL ; 
 int WS_VISIBLE ; 
 int WS_VSCROLL ; 

__attribute__((used)) static BOOL
FUNC28(HWND hwnd, CREATESTRUCTW *lpcs)
{
    HBITMAP hbm32bpp;
    HWND hwndTarget, hwndPrev;
    GHOST_DATA *pData;
    RECT rc;
    DWORD style, exstyle;
    WCHAR szTextW[320], szNotRespondingW[32];
    LPWSTR pszTextW;
    INT cchTextW, cchExtraW, cchNonExtraW;
    PWND pWnd = FUNC27(hwnd);
    if (pWnd)
    {
        if (!pWnd->fnid)
        {
            FUNC19(hwnd, FNID_GHOST);
        }
        else if (pWnd->fnid != FNID_GHOST)
        {
             FUNC2("Wrong window class for Ghost! fnId 0x%x\n", pWnd->fnid);
             return FALSE;
        }
    }

    // get the target
    hwndTarget = (HWND)lpcs->lpCreateParams;
    if (!FUNC16(hwndTarget) ||                             // invisible?
        (FUNC6(hwndTarget, GWL_STYLE) & WS_CHILD) ||    // child?
        !FUNC15(hwndTarget))                               // not hung?
    {
        return FALSE;
    }

    // check prop
    if (FUNC4(hwndTarget, GHOST_PROP))
        return FALSE;

    // set prop
    FUNC20(hwndTarget, GHOST_PROP, hwnd);

    // create user data
    pData = FUNC9(FUNC3(), 0, sizeof(GHOST_DATA));
    if (!pData)
    {
        FUNC2("HeapAlloc failed\n");
        return FALSE;
    }

    // get window image
    FUNC7(hwndTarget, &rc);
    hbm32bpp = FUNC11(hwndTarget,
                                  rc.right - rc.left,
                                  rc.bottom - rc.top);
    if (!hbm32bpp)
    {
        FUNC2("hbm32bpp was NULL\n");
        FUNC10(FUNC3(), 0, pData);
        return FALSE;
    }
    // make a ghost image
    FUNC12(hbm32bpp);

    // set user data
    pData->hwndTarget = hwndTarget;
    pData->hbm32bpp = hbm32bpp;
    pData->bDestroyTarget = FALSE;
    FUNC22(hwnd, GWLP_USERDATA, (LONG_PTR)pData);

    // get style
    style = FUNC6(hwndTarget, GWL_STYLE);
    exstyle = FUNC6(hwndTarget, GWL_EXSTYLE);

    // get text
    cchTextW = FUNC0(szTextW);
    cchExtraW = FUNC0(szNotRespondingW);
    cchNonExtraW = cchTextW - cchExtraW;
    if (FUNC13(hwndTarget, szTextW,
                              cchNonExtraW) < cchNonExtraW - 1)
    {
        pszTextW = szTextW;
    }
    else
    {
        cchTextW *= 2;
        pszTextW = FUNC8(hwndTarget, &cchTextW, cchExtraW);
        if (!pszTextW)
        {
            FUNC2("Ghost_GetText failed\n");
            FUNC1(hbm32bpp);
            FUNC10(FUNC3(), 0, pData);
            return FALSE;
        }
    }

    // don't use scrollbars.
    style &= ~(WS_HSCROLL | WS_VSCROLL | WS_VISIBLE);

    // set style
    FUNC22(hwnd, GWL_STYLE, style);
    FUNC22(hwnd, GWL_EXSTYLE, exstyle);

    // set text with " (Not Responding)"
    FUNC17(User32Instance, IDS_NOT_RESPONDING,
                szNotRespondingW, FUNC0(szNotRespondingW));
    FUNC26(pszTextW, cchTextW, szNotRespondingW);
    FUNC24(hwnd, pszTextW);

    // free the text buffer
    if (szTextW != pszTextW)
        FUNC10(FUNC3(), 0, pszTextW);

    // get previous window of target
    hwndPrev = FUNC5(hwndTarget, GW_HWNDPREV);

    // hide target
    FUNC25(hwndTarget, SW_HIDE);

    // shrink the ghost to zero size and insert.
    // this will avoid effects.
    FUNC23(hwnd, hwndPrev, 0, 0, 0, 0,
                 SWP_NOMOVE | SWP_NOACTIVATE | SWP_NOOWNERZORDER |
                 SWP_DRAWFRAME);

    // resume the position and size of ghost
    FUNC18(hwnd, rc.left, rc.top,
               rc.right - rc.left, rc.bottom - rc.top, TRUE);

    // make ghost visible
    FUNC22(hwnd, GWL_STYLE, style | WS_VISIBLE);

    // redraw
    FUNC14(hwnd, NULL, TRUE);

    // start timer
    FUNC21(hwnd, GHOST_TIMER_ID, GHOST_INTERVAL, NULL);

    return TRUE;
}