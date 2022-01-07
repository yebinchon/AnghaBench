
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ left; scalar_t__ top; int right; int bottom; } ;
typedef TYPE_1__ RECT ;
typedef int HRGN ;
typedef int HDC ;
typedef int HBITMAP ;


 int CreateCompatibleBitmap (int ,int,int) ;
 int CreateCompatibleDC (int ) ;
 int CreateRectRgn (int ,int ,int ,int ) ;
 int DeleteDC (int ) ;
 int DeleteObject (int ) ;
 int ExtSelectClipRgn (int ,int ,int ) ;
 int GetClipRgn (int ,int ) ;
 int GetRgnBox (int ,TYPE_1__*) ;
 int RGN_COPY ;
 int RGN_DIFF ;
 int RectVisible (int ,TYPE_1__*) ;
 int SIMPLEREGION ;
 int SelectObject (int ,int ) ;
 int SetRect (TYPE_1__*,int,int,int,int) ;
 int ok (int,char*,int) ;
 int wine_dbgstr_rect (TYPE_1__*) ;

__attribute__((used)) static void test_memory_dc_clipping(void)
{
    HDC hdc;
    HRGN hrgn, hrgn_empty;
    HBITMAP hbmp;
    RECT rc;
    int ret;

    hdc = CreateCompatibleDC(0);
    hrgn_empty = CreateRectRgn(0, 0, 0, 0);
    hrgn = CreateRectRgn(0, 0, 0, 0);
    hbmp = CreateCompatibleBitmap(hdc, 100, 100);

    ret = GetClipRgn(hdc, hrgn);
    ok(ret == 0, "expected 0, got %d\n", ret);

    ret = ExtSelectClipRgn(hdc, hrgn_empty, RGN_DIFF);
    ok(ret == SIMPLEREGION, "expected SIMPLEREGION, got %d\n", ret);

    ret = GetClipRgn(hdc, hrgn);
    ok(ret == 1, "expected 1, got %d\n", ret);

    ret = GetRgnBox(hrgn, &rc);
    ok(ret == SIMPLEREGION, "expected SIMPLEREGION, got %d\n", ret);
    ok(rc.left == 0 && rc.top == 0 && rc.right == 1 && rc.bottom == 1,
       "expected 0,0-1,1, got %s\n", wine_dbgstr_rect(&rc));

    ret = ExtSelectClipRgn(hdc, 0, RGN_COPY);
    ok(ret == SIMPLEREGION, "expected SIMPLEREGION, got %d\n", ret);

    ret = GetClipRgn(hdc, hrgn);
    ok(ret == 0, "expected 0, got %d\n", ret);

    ret = ExtSelectClipRgn(hdc, 0, RGN_DIFF);
    ok(ret == 0, "expected 0, got %d\n", ret);

    ret = GetClipRgn(hdc, hrgn);
    ok(ret == 0, "expected 0, got %d\n", ret);

    SelectObject(hdc, hbmp);

    ret = ExtSelectClipRgn(hdc, hrgn_empty, RGN_DIFF);
    ok(ret == SIMPLEREGION, "expected SIMPLEREGION, got %d\n", ret);

    ret = GetClipRgn(hdc, hrgn);
    ok(ret == 1, "expected 1, got %d\n", ret);

    ret = GetRgnBox(hrgn, &rc);
    ok(ret == SIMPLEREGION, "expected SIMPLEREGION, got %d\n", ret);
    ok(rc.left == 0 && rc.top == 0 && rc.right == 100 && rc.bottom == 100,
       "expected 0,0-100,100, got %s\n", wine_dbgstr_rect(&rc));

    SetRect( &rc, 10, 10, 20, 20 );
    ret = RectVisible( hdc, &rc );
    ok(ret, "RectVisible failed for %s\n", wine_dbgstr_rect(&rc));

    SetRect( &rc, 20, 20, 10, 10 );
    ret = RectVisible( hdc, &rc );
    ok(ret, "RectVisible failed for %s\n", wine_dbgstr_rect(&rc));

    ret = ExtSelectClipRgn(hdc, 0, RGN_DIFF);
    ok(ret == 0, "expected 0, got %d\n", ret);

    ret = GetClipRgn(hdc, hrgn);
    ok(ret == 1, "expected 1, got %d\n", ret);

    ret = GetRgnBox(hrgn, &rc);
    ok(ret == SIMPLEREGION, "expected SIMPLEREGION, got %d\n", ret);
    ok(rc.left == 0 && rc.top == 0 && rc.right == 100 && rc.bottom == 100,
       "expected 0,0-100,100, got %s\n", wine_dbgstr_rect(&rc));

    DeleteDC(hdc);
    DeleteObject(hrgn);
    DeleteObject(hrgn_empty);
    DeleteObject(hbmp);
}
