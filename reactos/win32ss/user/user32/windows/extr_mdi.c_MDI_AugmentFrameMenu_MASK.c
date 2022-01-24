#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  UINT_PTR ;
typedef  scalar_t__ UINT ;
typedef  int /*<<< orphan*/  LPWSTR ;
typedef  int /*<<< orphan*/  LPSTR ;
typedef  int /*<<< orphan*/  LPCWSTR ;
typedef  scalar_t__ INT ;
typedef  int /*<<< orphan*/  HWND ;
typedef  scalar_t__ HMENU ;
typedef  scalar_t__ HICON ;
typedef  scalar_t__ HDC ;
typedef  int /*<<< orphan*/  HBRUSH ;
typedef  scalar_t__ HBITMAP ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  COLOR_MENU ; 
 scalar_t__ FUNC1 (scalar_t__,int,int) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DI_NORMAL ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  GCLP_HICON ; 
 int /*<<< orphan*/  GCLP_HICONSM ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (scalar_t__) ; 
 scalar_t__ FUNC15 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC18 (int /*<<< orphan*/ ) ; 
 scalar_t__ HBMMENU_MBAR_CLOSE ; 
 scalar_t__ HBMMENU_MBAR_CLOSE_D ; 
 scalar_t__ HBMMENU_MBAR_MINIMIZE ; 
 scalar_t__ HBMMENU_MBAR_RESTORE ; 
 int /*<<< orphan*/  ICON_BIG ; 
 int /*<<< orphan*/  ICON_SMALL ; 
 scalar_t__ IDI_WINLOGO ; 
 int /*<<< orphan*/  IMAGE_ICON ; 
 int /*<<< orphan*/  FUNC19 (scalar_t__,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LR_DEFAULTCOLOR ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int MF_BITMAP ; 
 int MF_BYCOMMAND ; 
 int MF_BYPOSITION ; 
 int MF_GRAYED ; 
 int MF_HELP ; 
 int MF_POPUP ; 
 int /*<<< orphan*/  MM_TEXT ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ SC_CLOSE ; 
 int /*<<< orphan*/  SC_MAXIMIZE ; 
 scalar_t__ SC_MINIMIZE ; 
 int /*<<< orphan*/  SC_MOVE ; 
 scalar_t__ SC_RESTORE ; 
 int /*<<< orphan*/  SC_SIZE ; 
 int /*<<< orphan*/  SM_CXSMICON ; 
 int /*<<< orphan*/  SM_CYSMICON ; 
 scalar_t__ FUNC22 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (char*,...) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  WM_GETICON ; 
 scalar_t__ FUNC27 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static BOOL FUNC28( HWND frame, HWND hChild )
{
    HMENU menu = FUNC13( frame );
    HMENU  	hSysPopup;
    HBITMAP hSysMenuBitmap = 0;
    HICON hIcon;
    INT nItems;
    UINT iId;

    FUNC26("frame %p,child %p\n",frame,hChild);

    if( !menu ) return FALSE;
//// ReactOS start
    /* if the system buttons already exist do not add them again */
    nItems = FUNC14(menu) - 1;
    iId = FUNC15(menu,nItems) ;
    if (iId == SC_RESTORE || iId == SC_CLOSE)
    {
        FUNC9("system buttons already exist\n");
	return FALSE;
    }
//// End
    /* create a copy of sysmenu popup and insert it into frame menu bar */
    if (!(hSysPopup = FUNC17(hChild, FALSE)))
    {
        FUNC26("child %p doesn't have a system menu\n", hChild);
        return FALSE;
    }

    FUNC0(menu, MF_HELP | MF_BITMAP,
                SC_CLOSE, FUNC27(hChild, hSysPopup) ?
                (LPCWSTR)HBMMENU_MBAR_CLOSE : (LPCWSTR)HBMMENU_MBAR_CLOSE_D );
    FUNC0(menu, MF_HELP | MF_BITMAP,
                SC_RESTORE, (LPCWSTR)HBMMENU_MBAR_RESTORE );
    FUNC0(menu, MF_HELP | MF_BITMAP,
                SC_MINIMIZE, (LPCWSTR)HBMMENU_MBAR_MINIMIZE ) ;

    /* The system menu is replaced by the child icon */
    hIcon = (HICON)FUNC23(hChild, WM_GETICON, ICON_SMALL, 0);
    if (!hIcon)
        hIcon = (HICON)FUNC11(hChild, GCLP_HICONSM);
    if (!hIcon)
        hIcon = (HICON)FUNC23(hChild, WM_GETICON, ICON_BIG, 0);
    if (!hIcon)
        hIcon = (HICON)FUNC11(hChild, GCLP_HICON);
    if (!hIcon)
        hIcon = FUNC20(0, (LPWSTR)IDI_WINLOGO, IMAGE_ICON, FUNC18(SM_CXSMICON),
                           FUNC18(SM_CYSMICON), LR_DEFAULTCOLOR);
    if (hIcon)
    {
      HDC hMemDC;
      HBITMAP hBitmap, hOldBitmap;
      HBRUSH hBrush;
      HDC hdc = FUNC12(hChild);

      if (hdc)
      {
        int cx, cy;
        cx = FUNC18(SM_CXSMICON);
        cy = FUNC18(SM_CYSMICON);
        hMemDC = FUNC2(hdc);
        hBitmap = FUNC1(hdc, cx, cy);
        hOldBitmap = FUNC22(hMemDC, hBitmap);
        FUNC24(hMemDC, MM_TEXT);
        hBrush = FUNC3(FUNC16(COLOR_MENU));
        FUNC7(hMemDC, 0, 0, hIcon, cx, cy, 0, hBrush, DI_NORMAL);
        FUNC22 (hMemDC, hOldBitmap);
        FUNC5(hBrush);
        FUNC4(hMemDC);
        FUNC21(hChild, hdc);
        hSysMenuBitmap = hBitmap;
      }
    }

    if( !FUNC19(menu,0,MF_BYPOSITION | MF_BITMAP | MF_POPUP,
                     (UINT_PTR)hSysPopup, (LPSTR)hSysMenuBitmap))
    {
        FUNC26("not inserted\n");
	FUNC6(hSysPopup);
        return FALSE;
    }

    FUNC10(hSysPopup, SC_SIZE, MF_BYCOMMAND | MF_GRAYED);
    FUNC10(hSysPopup, SC_MOVE, MF_BYCOMMAND | MF_GRAYED);
    FUNC10(hSysPopup, SC_MAXIMIZE, MF_BYCOMMAND | MF_GRAYED);
    FUNC25(hSysPopup, SC_CLOSE, FALSE);

    /* redraw menu */
    FUNC8(frame);

    return TRUE;
}