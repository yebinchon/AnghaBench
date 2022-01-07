
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RECT ;
typedef int HWND ;
typedef int HRGN ;
typedef int HDC ;


 int COMPLEXREGION ;
 int CreateRectRgn (int ,int ,int ,int ) ;
 int CreateWindowExA (int ,char*,int *,int ,int,int,int,int,int ,int ,int ,int *) ;
 int DeleteDC (int ) ;
 int DeleteObject (int ) ;
 int DestroyWindow (int ) ;
 int EqualRect (int *,int *) ;
 int ExtSelectClipRgn (int ,int ,int ) ;
 int GetClipRgn (int ,int ) ;
 int GetRgnBox (int ,int *) ;
 int GetSystemMetrics (int ) ;
 int GetWindowDC (int ) ;
 int RGN_COPY ;
 int RGN_DIFF ;
 int RectVisible (int ,int *) ;
 int SIMPLEREGION ;
 int SM_CMONITORS ;
 int SM_CXSCREEN ;
 int SM_CXVIRTUALSCREEN ;
 int SM_CYSCREEN ;
 int SM_CYVIRTUALSCREEN ;
 int SM_XVIRTUALSCREEN ;
 int SM_YVIRTUALSCREEN ;
 int SetRect (int *,int,int,int,int) ;
 int WS_POPUP ;
 int ok (int,char*,int,...) ;
 int trace (char*,int,int) ;
 int wine_dbgstr_rect (int *) ;

__attribute__((used)) static void test_window_dc_clipping(void)
{
    HDC hdc;
    HRGN hrgn, hrgn_empty;
    HWND hwnd;
    RECT rc, virtual_rect;
    int ret, screen_width, screen_height;



    screen_width = GetSystemMetrics(SM_CXVIRTUALSCREEN);
    if(!screen_width) screen_width = GetSystemMetrics(SM_CXSCREEN);
    screen_height = GetSystemMetrics(SM_CYVIRTUALSCREEN);
    if(!screen_height) screen_height = GetSystemMetrics(SM_CYSCREEN);
    SetRect(&virtual_rect, GetSystemMetrics(SM_XVIRTUALSCREEN), GetSystemMetrics(SM_YVIRTUALSCREEN),
            GetSystemMetrics(SM_XVIRTUALSCREEN) + screen_width, GetSystemMetrics(SM_YVIRTUALSCREEN) + screen_height);

    trace("screen resolution %d x %d\n", screen_width, screen_height);

    hwnd = CreateWindowExA(0, "static", ((void*)0), WS_POPUP,
                           -100, -100, screen_width * 2, screen_height * 2, 0, 0, 0, ((void*)0));
    hdc = GetWindowDC(0);
    hrgn_empty = CreateRectRgn(0, 0, 0, 0);
    hrgn = CreateRectRgn(0, 0, 0, 0);

    ret = GetClipRgn(hdc, hrgn);
    ok(ret == 0, "expected 0, got %d\n", ret);

    ret = ExtSelectClipRgn(hdc, 0, RGN_DIFF);
    ok(ret == 0, "expected 0, got %d\n", ret);

    ret = GetClipRgn(hdc, hrgn);
    ok(ret == 0, "expected 0, got %d\n", ret);

    ret = ExtSelectClipRgn(hdc, hrgn_empty, RGN_DIFF);
    ok(ret == SIMPLEREGION || (ret == COMPLEXREGION && GetSystemMetrics(SM_CMONITORS) > 1),
       "expected SIMPLEREGION, got %d\n", ret);

    ret = GetClipRgn(hdc, hrgn);
    ok(ret == 1, "expected 1, got %d\n", ret);

    ret = GetRgnBox(hrgn, &rc);
    ok(ret == SIMPLEREGION, "expected SIMPLEREGION, got %d\n", ret);
    ok(EqualRect(&rc, &virtual_rect), "expected %s, got %s\n", wine_dbgstr_rect(&virtual_rect),
       wine_dbgstr_rect(&rc));

    SetRect( &rc, 10, 10, 20, 20 );
    ret = RectVisible( hdc, &rc );
    ok( ret, "RectVisible failed for %s\n", wine_dbgstr_rect(&rc));

    SetRect( &rc, 20, 20, 10, 10 );
    ret = RectVisible( hdc, &rc );
    ok( ret, "RectVisible failed for %s\n", wine_dbgstr_rect(&rc));

    ret = ExtSelectClipRgn(hdc, 0, RGN_DIFF);
    ok(ret == 0, "expected 0, got %d\n", ret);

    ret = GetClipRgn(hdc, hrgn);
    ok(ret == 1, "expected 1, got %d\n", ret);

    ret = GetRgnBox(hrgn, &rc);
    ok(ret == SIMPLEREGION, "expected SIMPLEREGION, got %d\n", ret);
    ok(EqualRect(&rc, &virtual_rect), "expected %s, got %s\n", wine_dbgstr_rect(&virtual_rect),
       wine_dbgstr_rect(&rc));

    ret = ExtSelectClipRgn(hdc, 0, RGN_COPY);
    ok(ret == SIMPLEREGION || (ret == COMPLEXREGION && GetSystemMetrics(SM_CMONITORS) > 1),
       "expected SIMPLEREGION, got %d\n", ret);

    ret = GetClipRgn(hdc, hrgn);
    ok(ret == 0, "expected 0, got %d\n", ret);

    DeleteDC(hdc);
    DeleteObject(hrgn);
    DeleteObject(hrgn_empty);
    DestroyWindow(hwnd);
}
