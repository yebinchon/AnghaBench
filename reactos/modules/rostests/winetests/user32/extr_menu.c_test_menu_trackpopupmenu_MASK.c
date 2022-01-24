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
typedef  int /*<<< orphan*/  LPCSTR ;
typedef  int /*<<< orphan*/  LONG_PTR ;
typedef  int /*<<< orphan*/ * HWND ;
typedef  int /*<<< orphan*/ * HMENU ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  CW_USEDEFAULT ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int ERROR_INVALID_MENU_HANDLE ; 
 int ERROR_INVALID_WINDOW_HANDLE ; 
 int /*<<< orphan*/  GWLP_WNDPROC ; 
 int FUNC5 () ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MF_STRING ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int NO_ERROR ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TPM_RETURNCMD ; 
 int /*<<< orphan*/  WS_VISIBLE ; 
 int /*<<< orphan*/  atomMenuCheckClass ; 
 scalar_t__ FUNC10 (int) ; 
 scalar_t__ gflag_entermenuloop ; 
 scalar_t__ gflag_initmenu ; 
 scalar_t__ gflag_initmenupopup ; 
 scalar_t__ menu_ownerdraw_wnd_proc ; 
 int /*<<< orphan*/  FUNC11 (int,char*,...) ; 

__attribute__((used)) static void FUNC12(void)
{
    BOOL ret;
    HMENU hmenu;
    DWORD gle;
    int Ex;
    HWND hwnd = FUNC2(0, (LPCSTR)FUNC6(atomMenuCheckClass), NULL,
            WS_VISIBLE, CW_USEDEFAULT, CW_USEDEFAULT, 200, 200,
            NULL, NULL, NULL, NULL);
    FUNC11(hwnd != NULL, "CreateWindowEx failed with error %d\n", FUNC5());
    if (!hwnd) return;
    FUNC9( hwnd, GWLP_WNDPROC, (LONG_PTR)menu_ownerdraw_wnd_proc);
    for( Ex = 0; Ex < 2; Ex++)
    {
        hmenu = FUNC1();
        FUNC11(hmenu != NULL, "CreateMenu failed with error %d\n", FUNC5());
        if (!hmenu)
        {
            FUNC4(hwnd);
            return;
        }
        /* display the menu */
        /* start with an invalid menu handle */
        FUNC8(0xdeadbeef);

        gflag_initmenupopup = gflag_entermenuloop = gflag_initmenu = 0;
        ret = FUNC7( Ex, NULL, TPM_RETURNCMD, 100,100, hwnd, NULL);
        gle = FUNC5();
        FUNC11( !ret, "TrackPopupMenu%s should have failed\n", Ex ? "Ex" : "");
        FUNC11( gle == ERROR_INVALID_MENU_HANDLE
            || FUNC10 (gle == 0xdeadbeef) /* win95 */
            || FUNC10 (gle == NO_ERROR) /* win98/ME */
            ,"TrackPopupMenu%s error got %u expected %u\n",
            Ex ? "Ex" : "", gle, ERROR_INVALID_MENU_HANDLE);
        FUNC11( !(gflag_initmenupopup || gflag_entermenuloop || gflag_initmenu),
                "got unexpected message(s)%s%s%s\n",
                gflag_initmenupopup ? " WM_INITMENUPOPUP ": " ",
                gflag_entermenuloop ? "WM_INITMENULOOP ": "",
                gflag_initmenu ? "WM_INITMENU": "");
        /* another one but not NULL */
        FUNC8(0xdeadbeef);
        gflag_initmenupopup = gflag_entermenuloop = gflag_initmenu = 0;
        ret = FUNC7( Ex, (HMENU)hwnd, TPM_RETURNCMD, 100,100, hwnd, NULL);
        gle = FUNC5();
        FUNC11( !ret, "TrackPopupMenu%s should have failed\n", Ex ? "Ex" : "");
        FUNC11( gle == ERROR_INVALID_MENU_HANDLE
            || FUNC10 (gle == 0xdeadbeef) /* win95 */
            || FUNC10 (gle == NO_ERROR) /* win98/ME */
            ,"TrackPopupMenu%s error got %u expected %u\n",
            Ex ? "Ex" : "", gle, ERROR_INVALID_MENU_HANDLE);
        FUNC11( !(gflag_initmenupopup || gflag_entermenuloop || gflag_initmenu),
                "got unexpected message(s)%s%s%s\n",
                gflag_initmenupopup ? " WM_INITMENUPOPUP ": " ",
                gflag_entermenuloop ? "WM_INITMENULOOP ": "",
                gflag_initmenu ? "WM_INITMENU": "");

        /* invalid window */
        FUNC8(0xdeadbeef);
        gflag_initmenupopup = gflag_entermenuloop = gflag_initmenu = 0;
        ret = FUNC7( Ex, hmenu, TPM_RETURNCMD, 100,100, 0, NULL);
        gle = FUNC5();
        FUNC11( !ret, "TrackPopupMenu%s should have failed\n", Ex ? "Ex" : "");
        FUNC11( gle == ERROR_INVALID_WINDOW_HANDLE, "TrackPopupMenu%s error got %u\n", Ex ? "Ex" : "", gle );
        FUNC11( !(gflag_initmenupopup || gflag_entermenuloop || gflag_initmenu),
                "got unexpected message(s)%s%s%s\n",
                gflag_initmenupopup ? " WM_INITMENUPOPUP ": " ",
                gflag_entermenuloop ? "WM_INITMENULOOP ": "",
                gflag_initmenu ? "WM_INITMENU": "");

        /* now a somewhat successful call */
        FUNC8(0xdeadbeef);
        gflag_initmenupopup = gflag_entermenuloop = gflag_initmenu = 0;
        ret = FUNC7( Ex, hmenu, TPM_RETURNCMD, 100,100, hwnd, NULL);
        gle = FUNC5();
        FUNC11( ret == 0, "TrackPopupMenu%s returned %d expected zero\n", Ex ? "Ex" : "", ret);
        FUNC11( gle == NO_ERROR
            || gle == ERROR_INVALID_MENU_HANDLE /* NT4, win2k */
            || FUNC10 (gle == 0xdeadbeef) /* win95 */
            ,"TrackPopupMenu%s error got %u expected %u or %u\n",
            Ex ? "Ex" : "", gle, NO_ERROR, ERROR_INVALID_MENU_HANDLE);
        FUNC11( gflag_initmenupopup && gflag_entermenuloop && gflag_initmenu,
                "missed expected message(s)%s%s%s\n",
                !gflag_initmenupopup ? " WM_INITMENUPOPUP ": " ",
                !gflag_entermenuloop ? "WM_INITMENULOOP ": "",
                !gflag_initmenu ? "WM_INITMENU": "");
        /* and another */
        ret = FUNC0( hmenu, MF_STRING, 1, "winetest");
        FUNC11( ret, "AppendMenA has failed!\n");
        FUNC8(0xdeadbeef);
        gflag_initmenupopup = gflag_entermenuloop = gflag_initmenu = 0;
        ret = FUNC7( Ex, hmenu, TPM_RETURNCMD, 100,100, hwnd, NULL);
        gle = FUNC5();
        FUNC11( ret == 0, "TrackPopupMenu%s returned %d expected zero\n", Ex ? "Ex" : "", ret);
        FUNC11( gle == NO_ERROR
            || gle == ERROR_INVALID_MENU_HANDLE /* NT4, win2k and Vista in the TrackPopupMenuEx case */
            || FUNC10 (gle == 0xdeadbeef) /* win95 */
            ,"TrackPopupMenu%s error got %u expected %u or %u\n",
            Ex ? "Ex" : "", gle, NO_ERROR, ERROR_INVALID_MENU_HANDLE);
        FUNC11( gflag_initmenupopup && gflag_entermenuloop && gflag_initmenu,
                "missed expected message(s)%s%s%s\n",
                !gflag_initmenupopup ? " WM_INITMENUPOPUP ": " ",
                !gflag_entermenuloop ? "WM_INITMENULOOP ": "",
                !gflag_initmenu ? "WM_INITMENU": "");
        FUNC3(hmenu);
    }
    /* clean up */
    FUNC4(hwnd);
}