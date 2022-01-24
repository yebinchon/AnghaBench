#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int member_0; int /*<<< orphan*/  member_1; } ;
struct TYPE_6__ {int /*<<< orphan*/ * pszText; void* mask; } ;
typedef  TYPE_1__ TCITEM ;
typedef  int /*<<< orphan*/  TCHAR ;
typedef  int /*<<< orphan*/  LONG ;
typedef  TYPE_2__ INITCOMMONCONTROLSEX ;
typedef  int /*<<< orphan*/  HWND ;
typedef  int /*<<< orphan*/  DLGPROC ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ICC_TAB_CLASSES ; 
 int /*<<< orphan*/  IDC_TAB ; 
 int /*<<< orphan*/  IDD_PAGE1 ; 
 int /*<<< orphan*/  IDD_PAGE2 ; 
 int /*<<< orphan*/  IDD_PAGE3 ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ PageWndProc1 ; 
 scalar_t__ PageWndProc2 ; 
 scalar_t__ PageWndProc3 ; 
 int /*<<< orphan*/  SW_SHOW ; 
 int /*<<< orphan*/  FUNC5 (void*,int /*<<< orphan*/ ) ; 
 void* TCIF_TEXT ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hInst ; 
 void* hPage1 ; 
 void* hPage2 ; 
 void* hPage3 ; 
 int /*<<< orphan*/  hTabWnd ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static BOOL FUNC10(HWND hWnd, LONG lData)
{
    TCHAR szTemp[256];
    TCITEM item;

    // Initialize the Windows Common Controls DLL
#ifdef __GNUC__
    FUNC2();
#else
    INITCOMMONCONTROLSEX ex = { sizeof(INITCOMMONCONTROLSEX), ICC_TAB_CLASSES };
    InitCommonControlsEx(&ex);
#endif

    // Create tab pages
    hTabWnd = FUNC1(hWnd, IDC_TAB);
    hPage1 = FUNC0(hInst, FUNC4(IDD_PAGE1), hWnd, (DLGPROC)PageWndProc1);
    hPage2 = FUNC0(hInst, FUNC4(IDD_PAGE2), hWnd, (DLGPROC)PageWndProc2);
    hPage3 = FUNC0(hInst, FUNC4(IDD_PAGE3), hWnd, (DLGPROC)PageWndProc3);

    // Insert tabs
    FUNC8(szTemp, FUNC7("Page One"));
    FUNC9(&item, 0, sizeof(TCITEM));
    item.mask = TCIF_TEXT;
    item.pszText = szTemp;
    FUNC6(hTabWnd, 0, &item);
    FUNC8(szTemp, FUNC7("Page Two"));
    FUNC9(&item, 0, sizeof(TCITEM));
    item.mask = TCIF_TEXT;
    item.pszText = szTemp;
    FUNC6(hTabWnd, 1, &item);
    FUNC8(szTemp, FUNC7("Page Three"));
    FUNC9(&item, 0, sizeof(TCITEM));
    item.mask = TCIF_TEXT;
    item.pszText = szTemp;
    FUNC6(hTabWnd, 2, &item);

    FUNC5(hPage1, SW_SHOW);

    return TRUE;
}