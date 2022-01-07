
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int top; int left; scalar_t__ bottom; scalar_t__ right; } ;
typedef TYPE_1__ RECT ;
typedef scalar_t__ HWND ;
typedef int HRGN ;
typedef int HDC ;


 int CreateRectRgn (int ,int ,int ,int ) ;
 scalar_t__ CreateWindowExA (int ,char*,char*,int,int ,int ,int,int,int ,int ,int ,int ) ;
 int DeleteObject (int ) ;
 int DestroyWindow (scalar_t__) ;
 int EqualRect (TYPE_1__*,TYPE_1__*) ;
 int GetDC (scalar_t__) ;
 int GetDesktopWindow () ;
 int GetRandomRgn (int ,int ,int) ;
 int GetRgnBox (int ,TYPE_1__*) ;
 int GetVersion () ;
 int HWND_TOPMOST ;
 int IntersectClipRect (int ,int ,int ,scalar_t__,scalar_t__) ;
 int IntersectRect (TYPE_1__*,TYPE_1__*,TYPE_1__*) ;
 int OffsetRect (TYPE_1__*,int ,int ) ;
 int ReleaseDC (scalar_t__,int ) ;
 int SYSRGN ;
 int SetMetaRgn (int ) ;
 int SetRect (TYPE_1__*,int,int,int,int) ;
 int SetWindowPos (scalar_t__,int ,int ,int ,scalar_t__,scalar_t__,int ) ;
 int WS_POPUP ;
 int WS_VISIBLE ;
 int ok (int,char*,...) ;
 int wine_dbgstr_rect (TYPE_1__*) ;

__attribute__((used)) static void test_GetRandomRgn(void)
{
    HWND hwnd = CreateWindowExA(0,"BUTTON","test",WS_VISIBLE|WS_POPUP,0,0,100,100,GetDesktopWindow(),0,0,0);
    HDC hdc;
    HRGN hrgn = CreateRectRgn(0, 0, 0, 0);
    int ret;
    RECT rc, rc2;
    RECT ret_rc, window_rc;

    ok( hwnd != 0, "CreateWindow failed\n" );

    SetRect(&window_rc, 400, 300, 500, 400);
    SetWindowPos(hwnd, HWND_TOPMOST, window_rc.left, window_rc.top,
                 window_rc.right - window_rc.left, window_rc.bottom - window_rc.top, 0 );
    hdc = GetDC(hwnd);

    ret = GetRandomRgn(hdc, hrgn, 1);
    ok(ret == 0, "GetRandomRgn rets %d\n", ret);
    ret = GetRandomRgn(hdc, hrgn, 2);
    ok(ret == 0, "GetRandomRgn rets %d\n", ret);
    ret = GetRandomRgn(hdc, hrgn, 3);
    ok(ret == 0, "GetRandomRgn rets %d\n", ret);


    SetRect(&rc, 20, 20, 80, 80);
    IntersectClipRect(hdc, rc.left, rc.top, rc.right, rc.bottom);

    ret = GetRandomRgn(hdc, hrgn, 1);
    ok(ret != 0, "GetRandomRgn rets %d\n", ret);
    GetRgnBox(hrgn, &ret_rc);
    ok(EqualRect(&rc, &ret_rc), "GetRandomRgn %s\n", wine_dbgstr_rect(&ret_rc));

    ret = GetRandomRgn(hdc, hrgn, 2);
    ok(ret == 0, "GetRandomRgn rets %d\n", ret);

    ret = GetRandomRgn(hdc, hrgn, 3);
    ok(ret != 0, "GetRandomRgn rets %d\n", ret);
    GetRgnBox(hrgn, &ret_rc);
    ok(EqualRect(&rc, &ret_rc), "GetRandomRgn %s\n", wine_dbgstr_rect(&ret_rc));


    SetMetaRgn(hdc);

    ret = GetRandomRgn(hdc, hrgn, 1);
    ok(ret == 0, "GetRandomRgn rets %d\n", ret);
    ret = GetRandomRgn(hdc, hrgn, 2);
    ok(ret != 0, "GetRandomRgn rets %d\n", ret);
    GetRgnBox(hrgn, &ret_rc);
    ok(EqualRect(&rc, &ret_rc), "GetRandomRgn %s\n", wine_dbgstr_rect(&ret_rc));

    ret = GetRandomRgn(hdc, hrgn, 3);
    ok(ret != 0, "GetRandomRgn rets %d\n", ret);
    GetRgnBox(hrgn, &ret_rc);
    ok(EqualRect(&rc, &ret_rc), "GetRandomRgn %s\n", wine_dbgstr_rect(&ret_rc));


    SetRect(&rc2, 10, 30, 70, 90);
    IntersectClipRect(hdc, rc2.left, rc2.top, rc2.right, rc2.bottom);

    ret = GetRandomRgn(hdc, hrgn, 1);
    ok(ret != 0, "GetRandomRgn rets %d\n", ret);
    GetRgnBox(hrgn, &ret_rc);
    ok(EqualRect(&rc2, &ret_rc), "GetRandomRgn %s\n", wine_dbgstr_rect(&ret_rc));

    ret = GetRandomRgn(hdc, hrgn, 2);
    ok(ret != 0, "GetRandomRgn rets %d\n", ret);
    GetRgnBox(hrgn, &ret_rc);
    ok(EqualRect(&rc, &ret_rc), "GetRandomRgn %s\n", wine_dbgstr_rect(&ret_rc));

    IntersectRect(&rc2, &rc, &rc2);

    ret = GetRandomRgn(hdc, hrgn, 3);
    ok(ret != 0, "GetRandomRgn rets %d\n", ret);
    GetRgnBox(hrgn, &ret_rc);
    ok(EqualRect(&rc2, &ret_rc), "GetRandomRgn %s\n", wine_dbgstr_rect(&ret_rc));


    ret = GetRandomRgn(hdc, hrgn, SYSRGN);
    ok(ret != 0, "GetRandomRgn rets %d\n", ret);
    GetRgnBox(hrgn, &ret_rc);
    if(GetVersion() & 0x80000000)
        OffsetRect(&window_rc, -window_rc.left, -window_rc.top);

    IntersectRect( &window_rc, &ret_rc, &ret_rc );
    ok(EqualRect(&window_rc, &ret_rc), "GetRandomRgn %s\n", wine_dbgstr_rect(&ret_rc));

    DeleteObject(hrgn);
    ReleaseDC(hwnd, hdc);
    DestroyWindow(hwnd);
}
