
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPCSTR ;
typedef int LONG_PTR ;
typedef int * HWND ;
typedef int * HMENU ;
typedef int DWORD ;
typedef int BOOL ;


 int AppendMenuA (int *,int ,int,char*) ;
 int CW_USEDEFAULT ;
 int * CreatePopupMenu () ;
 int * CreateWindowExA (int ,int ,int *,int ,int ,int ,int,int,int *,int *,int *,int *) ;
 int DestroyMenu (int *) ;
 int DestroyWindow (int *) ;
 int ERROR_INVALID_MENU_HANDLE ;
 int ERROR_INVALID_WINDOW_HANDLE ;
 int GWLP_WNDPROC ;
 int GetLastError () ;
 scalar_t__ MAKEINTATOM (int ) ;
 int MF_STRING ;
 int MyTrackPopupMenu (int,int *,int ,int,int,int *,int *) ;
 int NO_ERROR ;
 int SetLastError (int) ;
 int SetWindowLongPtrA (int *,int ,int ) ;
 int TPM_RETURNCMD ;
 int WS_VISIBLE ;
 int atomMenuCheckClass ;
 scalar_t__ broken (int) ;
 scalar_t__ gflag_entermenuloop ;
 scalar_t__ gflag_initmenu ;
 scalar_t__ gflag_initmenupopup ;
 scalar_t__ menu_ownerdraw_wnd_proc ;
 int ok (int,char*,...) ;

__attribute__((used)) static void test_menu_trackpopupmenu(void)
{
    BOOL ret;
    HMENU hmenu;
    DWORD gle;
    int Ex;
    HWND hwnd = CreateWindowExA(0, (LPCSTR)MAKEINTATOM(atomMenuCheckClass), ((void*)0),
            WS_VISIBLE, CW_USEDEFAULT, CW_USEDEFAULT, 200, 200,
            ((void*)0), ((void*)0), ((void*)0), ((void*)0));
    ok(hwnd != ((void*)0), "CreateWindowEx failed with error %d\n", GetLastError());
    if (!hwnd) return;
    SetWindowLongPtrA( hwnd, GWLP_WNDPROC, (LONG_PTR)menu_ownerdraw_wnd_proc);
    for( Ex = 0; Ex < 2; Ex++)
    {
        hmenu = CreatePopupMenu();
        ok(hmenu != ((void*)0), "CreateMenu failed with error %d\n", GetLastError());
        if (!hmenu)
        {
            DestroyWindow(hwnd);
            return;
        }


        SetLastError(0xdeadbeef);

        gflag_initmenupopup = gflag_entermenuloop = gflag_initmenu = 0;
        ret = MyTrackPopupMenu( Ex, ((void*)0), TPM_RETURNCMD, 100,100, hwnd, ((void*)0));
        gle = GetLastError();
        ok( !ret, "TrackPopupMenu%s should have failed\n", Ex ? "Ex" : "");
        ok( gle == ERROR_INVALID_MENU_HANDLE
            || broken (gle == 0xdeadbeef)
            || broken (gle == NO_ERROR)
            ,"TrackPopupMenu%s error got %u expected %u\n",
            Ex ? "Ex" : "", gle, ERROR_INVALID_MENU_HANDLE);
        ok( !(gflag_initmenupopup || gflag_entermenuloop || gflag_initmenu),
                "got unexpected message(s)%s%s%s\n",
                gflag_initmenupopup ? " WM_INITMENUPOPUP ": " ",
                gflag_entermenuloop ? "WM_INITMENULOOP ": "",
                gflag_initmenu ? "WM_INITMENU": "");

        SetLastError(0xdeadbeef);
        gflag_initmenupopup = gflag_entermenuloop = gflag_initmenu = 0;
        ret = MyTrackPopupMenu( Ex, (HMENU)hwnd, TPM_RETURNCMD, 100,100, hwnd, ((void*)0));
        gle = GetLastError();
        ok( !ret, "TrackPopupMenu%s should have failed\n", Ex ? "Ex" : "");
        ok( gle == ERROR_INVALID_MENU_HANDLE
            || broken (gle == 0xdeadbeef)
            || broken (gle == NO_ERROR)
            ,"TrackPopupMenu%s error got %u expected %u\n",
            Ex ? "Ex" : "", gle, ERROR_INVALID_MENU_HANDLE);
        ok( !(gflag_initmenupopup || gflag_entermenuloop || gflag_initmenu),
                "got unexpected message(s)%s%s%s\n",
                gflag_initmenupopup ? " WM_INITMENUPOPUP ": " ",
                gflag_entermenuloop ? "WM_INITMENULOOP ": "",
                gflag_initmenu ? "WM_INITMENU": "");


        SetLastError(0xdeadbeef);
        gflag_initmenupopup = gflag_entermenuloop = gflag_initmenu = 0;
        ret = MyTrackPopupMenu( Ex, hmenu, TPM_RETURNCMD, 100,100, 0, ((void*)0));
        gle = GetLastError();
        ok( !ret, "TrackPopupMenu%s should have failed\n", Ex ? "Ex" : "");
        ok( gle == ERROR_INVALID_WINDOW_HANDLE, "TrackPopupMenu%s error got %u\n", Ex ? "Ex" : "", gle );
        ok( !(gflag_initmenupopup || gflag_entermenuloop || gflag_initmenu),
                "got unexpected message(s)%s%s%s\n",
                gflag_initmenupopup ? " WM_INITMENUPOPUP ": " ",
                gflag_entermenuloop ? "WM_INITMENULOOP ": "",
                gflag_initmenu ? "WM_INITMENU": "");


        SetLastError(0xdeadbeef);
        gflag_initmenupopup = gflag_entermenuloop = gflag_initmenu = 0;
        ret = MyTrackPopupMenu( Ex, hmenu, TPM_RETURNCMD, 100,100, hwnd, ((void*)0));
        gle = GetLastError();
        ok( ret == 0, "TrackPopupMenu%s returned %d expected zero\n", Ex ? "Ex" : "", ret);
        ok( gle == NO_ERROR
            || gle == ERROR_INVALID_MENU_HANDLE
            || broken (gle == 0xdeadbeef)
            ,"TrackPopupMenu%s error got %u expected %u or %u\n",
            Ex ? "Ex" : "", gle, NO_ERROR, ERROR_INVALID_MENU_HANDLE);
        ok( gflag_initmenupopup && gflag_entermenuloop && gflag_initmenu,
                "missed expected message(s)%s%s%s\n",
                !gflag_initmenupopup ? " WM_INITMENUPOPUP ": " ",
                !gflag_entermenuloop ? "WM_INITMENULOOP ": "",
                !gflag_initmenu ? "WM_INITMENU": "");

        ret = AppendMenuA( hmenu, MF_STRING, 1, "winetest");
        ok( ret, "AppendMenA has failed!\n");
        SetLastError(0xdeadbeef);
        gflag_initmenupopup = gflag_entermenuloop = gflag_initmenu = 0;
        ret = MyTrackPopupMenu( Ex, hmenu, TPM_RETURNCMD, 100,100, hwnd, ((void*)0));
        gle = GetLastError();
        ok( ret == 0, "TrackPopupMenu%s returned %d expected zero\n", Ex ? "Ex" : "", ret);
        ok( gle == NO_ERROR
            || gle == ERROR_INVALID_MENU_HANDLE
            || broken (gle == 0xdeadbeef)
            ,"TrackPopupMenu%s error got %u expected %u or %u\n",
            Ex ? "Ex" : "", gle, NO_ERROR, ERROR_INVALID_MENU_HANDLE);
        ok( gflag_initmenupopup && gflag_entermenuloop && gflag_initmenu,
                "missed expected message(s)%s%s%s\n",
                !gflag_initmenupopup ? " WM_INITMENUPOPUP ": " ",
                !gflag_entermenuloop ? "WM_INITMENULOOP ": "",
                !gflag_initmenu ? "WM_INITMENU": "");
        DestroyMenu(hmenu);
    }

    DestroyWindow(hwnd);
}
