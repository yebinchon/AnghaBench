
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RECT ;
typedef scalar_t__ HWND ;
typedef scalar_t__ HRGN ;
typedef int * HDC ;


 int COMPLEXREGION ;
 scalar_t__ CreateRectRgn (int ,int ,int ,int ) ;
 scalar_t__ CreateWindowExA (int ,char*,char*,int ,int ,int ,int,int,int ,int ,int ,int *) ;
 int DeleteObject (scalar_t__) ;
 int DestroyWindow (scalar_t__) ;
 int EqualRect (int *,int *) ;
 int GetClipBox (int *,int *) ;
 int GetClipRgn (int *,scalar_t__) ;
 int * GetDC (scalar_t__) ;
 int GetRgnBox (scalar_t__,int *) ;
 int IntersectClipRect (int *,int ,int ,int,int) ;
 int NULLREGION ;
 int ReleaseDC (scalar_t__,int *) ;
 int RestoreDC (int *,int) ;
 int SIMPLEREGION ;
 int SW_SHOW ;
 int SaveDC (int *) ;
 int SetRect (int *,int ,int ,int,int) ;
 int ShowWindow (scalar_t__,int ) ;
 int UpdateWindow (scalar_t__) ;
 int WS_POPUP ;
 int assert (int) ;
 scalar_t__ broken (int) ;
 int dump_region (scalar_t__) ;
 int ok (int,char*,...) ;
 int trace (char*,int) ;
 int wine_dbgstr_rect (int *) ;

__attribute__((used)) static void test_savedc_2(void)
{
    HWND hwnd;
    HDC hdc;
    HRGN hrgn;
    RECT rc, rc_clip;
    int ret;

    hwnd = CreateWindowExA(0, "static", "", WS_POPUP, 0,0,100,100,
                           0, 0, 0, ((void*)0));
    assert(hwnd != 0);
    ShowWindow(hwnd, SW_SHOW);
    UpdateWindow(hwnd);

    hrgn = CreateRectRgn(0, 0, 0, 0);
    assert(hrgn != 0);

    hdc = GetDC(hwnd);
    ok(hdc != ((void*)0), "GetDC failed\n");

    ret = GetClipBox(hdc, &rc_clip);
    ok(ret == SIMPLEREGION || broken(ret == COMPLEXREGION), "GetClipBox returned %d instead of SIMPLEREGION\n", ret);
    ret = GetClipRgn(hdc, hrgn);
    ok(ret == 0, "GetClipRgn returned %d instead of 0\n", ret);
    ret = GetRgnBox(hrgn, &rc);
    ok(ret == NULLREGION, "GetRgnBox returned %d %s instead of NULLREGION\n",
       ret, wine_dbgstr_rect(&rc));

    SetRect(&rc, 0, 0, 100, 100);
    ok(EqualRect(&rc, &rc_clip), "rects are not equal: %s - %s\n", wine_dbgstr_rect(&rc),
       wine_dbgstr_rect(&rc_clip));

    ret = SaveDC(hdc);
    ok(ret == 1, "ret = %d\n", ret);

    ret = IntersectClipRect(hdc, 0, 0, 50, 50);
    if (ret == COMPLEXREGION)
    {

        trace("Windows BUG: IntersectClipRect returned %d instead of SIMPLEREGION\n", ret);

        ret = GetClipRgn(hdc, hrgn);
        ok(ret == 1, "GetClipRgn returned %d instead of 1\n", ret);
        dump_region(hrgn);
    }
    else
        ok(ret == SIMPLEREGION, "IntersectClipRect returned %d instead of SIMPLEREGION\n", ret);

    ret = GetClipBox(hdc, &rc_clip);
    ok(ret == SIMPLEREGION || broken(ret == COMPLEXREGION), "GetClipBox returned %d instead of SIMPLEREGION\n", ret);
    SetRect(&rc, 0, 0, 50, 50);
    ok(EqualRect(&rc, &rc_clip), "rects are not equal: %s - %s\n", wine_dbgstr_rect(&rc),
       wine_dbgstr_rect(&rc_clip));

    ret = RestoreDC(hdc, 1);
    ok(ret, "ret = %d\n", ret);

    ret = GetClipBox(hdc, &rc_clip);
    ok(ret == SIMPLEREGION || broken(ret == COMPLEXREGION), "GetClipBox returned %d instead of SIMPLEREGION\n", ret);
    SetRect(&rc, 0, 0, 100, 100);
    ok(EqualRect(&rc, &rc_clip), "rects are not equal: %s - %s\n", wine_dbgstr_rect(&rc),
       wine_dbgstr_rect(&rc_clip));

    DeleteObject(hrgn);
    ReleaseDC(hwnd, hdc);
    DestroyWindow(hwnd);
}
