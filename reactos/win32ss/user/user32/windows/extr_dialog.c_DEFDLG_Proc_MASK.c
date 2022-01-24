#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WPARAM ;
typedef  int UINT ;
struct TYPE_6__ {int flags; int /*<<< orphan*/  hUserFont; int /*<<< orphan*/  idResult; int /*<<< orphan*/  hMenu; } ;
typedef  int /*<<< orphan*/  RECT ;
typedef  int LRESULT ;
typedef  int /*<<< orphan*/  LPPOINT ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  int /*<<< orphan*/  HWND ;
typedef  int /*<<< orphan*/  HDC ;
typedef  int /*<<< orphan*/  HBRUSH ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  TYPE_1__ DIALOGINFO ;

/* Variables and functions */
 int /*<<< orphan*/  BN_CLICKED ; 
 int /*<<< orphan*/  CB_SHOWDROPDOWN ; 
 int /*<<< orphan*/  DC_HASDEFID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DF_DIALOGACTIVE ; 
 int DF_END ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
#define  DM_GETDEFID 141 
#define  DM_REPOSITION 140 
#define  DM_SETDEFID 139 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  DWLP_ROS_DIALOGINFO ; 
 int FUNC9 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 () ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  IDCANCEL ; 
 int FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC28 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
#define  WM_ACTIVATE 138 
#define  WM_CLOSE 137 
 int /*<<< orphan*/  WM_COMMAND ; 
 int /*<<< orphan*/  WM_CTLCOLORDLG ; 
#define  WM_ENTERMENULOOP 136 
#define  WM_ERASEBKGND 135 
#define  WM_GETFONT 134 
#define  WM_LBUTTONDOWN 133 
#define  WM_NCDESTROY 132 
#define  WM_NCLBUTTONDOWN 131 
#define  WM_NEXTDLGCTL 130 
#define  WM_SETFOCUS 129 
#define  WM_SHOWWINDOW 128 

__attribute__((used)) static LRESULT FUNC29( HWND hwnd, UINT msg, WPARAM wParam,
                            LPARAM lParam, DIALOGINFO *dlgInfo )
{
    switch(msg)
    {
        case WM_ERASEBKGND:
        {
            HBRUSH brush = FUNC14( hwnd, hwnd, (HDC)wParam, WM_CTLCOLORDLG);
            if (brush)
            {
                RECT rect;
                HDC hdc = (HDC)wParam;
                FUNC13( hwnd, &rect );
                FUNC8( hdc, (LPPOINT)&rect, 2 );
                FUNC12( hdc, &rect, brush );
            }
            return 1;
        }
        case WM_NCDESTROY:
//// ReactOS
            if ((dlgInfo = (DIALOGINFO *)FUNC28( hwnd, DWLP_ROS_DIALOGINFO, 0 )))
            {
                if (dlgInfo->hUserFont) FUNC10( dlgInfo->hUserFont );
                if (dlgInfo->hMenu) FUNC11( dlgInfo->hMenu );
                FUNC21( FUNC20(), 0, dlgInfo );
                FUNC24(0,DF_DIALOGACTIVE);
                FUNC25( hwnd, 0 );
            }
             /* Window clean-up */
            return FUNC9( hwnd, msg, wParam, lParam );

        case WM_SHOWWINDOW:
            if (!wParam) FUNC3( hwnd );
            return FUNC9( hwnd, msg, wParam, lParam );

        case WM_ACTIVATE:
            { // ReactOS
               DWORD dwSetFlag;
               HWND hwndparent = FUNC7( hwnd );
               // if WA_CLICK/ACTIVE ? set dialog is active.
               dwSetFlag = wParam ? DF_DIALOGACTIVE : 0;
               if (hwndparent != hwnd) FUNC24(dwSetFlag, DF_DIALOGACTIVE);
            }
            if (wParam) FUNC2( hwnd, TRUE );
            else FUNC3( hwnd );
            return 0;

        case WM_SETFOCUS:
            FUNC2( hwnd, FALSE );
            return 0;

        case DM_SETDEFID:
            if (dlgInfo && !(dlgInfo->flags & DF_END))
                FUNC5( hwnd, dlgInfo, wParam );
            return 1;

        case DM_GETDEFID:
            if (dlgInfo && !(dlgInfo->flags & DF_END))
            {
                HWND hwndDefId;
                if (dlgInfo->idResult)
                    return FUNC22( dlgInfo->idResult, DC_HASDEFID );
                if ((hwndDefId = FUNC0( hwnd )))
                    return FUNC22( FUNC15( hwndDefId ), DC_HASDEFID);
            }
            return 0;

#ifdef __REACTOS__
        case DM_REPOSITION:
            DEFDLG_Reposition(hwnd);
            return 0;
#endif
        case WM_NEXTDLGCTL:
            if (dlgInfo)
            {
                HWND hwndDest = (HWND)wParam;
                if (!lParam)
                    hwndDest = FUNC18(hwnd, FUNC17(), wParam);
                if (hwndDest) FUNC6( hwndDest );
                FUNC4( hwnd, dlgInfo, hwndDest );
            }
            return 0;

        case WM_ENTERMENULOOP:
        case WM_LBUTTONDOWN:
        case WM_NCLBUTTONDOWN:
            {
                HWND hwndFocus = FUNC17();
                if (hwndFocus)
                {
                    /* always make combo box hide its listbox control */
                    if (!FUNC27( hwndFocus, CB_SHOWDROPDOWN, FALSE, 0 ))
                        FUNC27( FUNC19(hwndFocus), CB_SHOWDROPDOWN, FALSE, 0 );
                }
            }
            return FUNC9( hwnd, msg, wParam, lParam );

        case WM_GETFONT:
            return dlgInfo ? (LRESULT)dlgInfo->hUserFont : 0;

        case WM_CLOSE:
            FUNC26( hwnd, WM_COMMAND, FUNC23(IDCANCEL, BN_CLICKED),
                            (LPARAM)FUNC16( hwnd, IDCANCEL ) );
            return 0;
    }
    return 0;
}