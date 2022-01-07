
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int cx; int cy; } ;
typedef TYPE_1__ SIZE ;
typedef scalar_t__ INT ;
typedef int HDC ;
typedef scalar_t__ BOOL ;


 int CreateICA (char*,int *,int *,int *) ;
 int DeleteDC (int ) ;
 scalar_t__ FALSE ;
 scalar_t__ GetDeviceCaps (int ,int ) ;
 int GetViewportExtEx (int ,TYPE_1__*) ;
 int GetWindowExtEx (int ,TYPE_1__*) ;
 int HORZRES ;
 int HORZSIZE ;
 int LOGPIXELSX ;
 int MM_LOMETRIC ;
 int MM_TEXT ;
 int SetMapMode (int ,int ) ;
 scalar_t__ TRUE ;
 int expect_LPtoDP (int ,int,int) ;
 int expect_viewport_ext (int ,int,int) ;
 int expect_window_ext (int ,int,int) ;
 int ok (int,char*,...) ;
 scalar_t__ pSetVirtualResolution (int ,int,int,int,int) ;
 int win_skip (char*) ;

__attribute__((used)) static void test_setvirtualresolution(void)
{
    HDC hdc = CreateICA("DISPLAY", ((void*)0), ((void*)0), ((void*)0));
    BOOL r;
    INT horz_res = GetDeviceCaps(hdc, HORZRES);
    INT horz_size = GetDeviceCaps(hdc, HORZSIZE);
    INT log_pixels_x = GetDeviceCaps(hdc, LOGPIXELSX);
    SIZE orig_lometric_vp, orig_lometric_wnd;

    if(!pSetVirtualResolution)
    {
        win_skip("Don't have SetVirtualResolution\n");
        return;
    }


    SetMapMode(hdc, MM_LOMETRIC);
    GetViewportExtEx(hdc, &orig_lometric_vp);
    GetWindowExtEx(hdc, &orig_lometric_wnd);
    SetMapMode(hdc, MM_TEXT);

    r = pSetVirtualResolution(hdc, 4000, 1000, 400, 200);
    ok(r == TRUE, "got %d\n", r);
    expect_LPtoDP(hdc, 1000, 1000);
    expect_viewport_ext(hdc, 1, 1);
    expect_window_ext(hdc, 1, 1);

    SetMapMode(hdc, MM_LOMETRIC);
    expect_LPtoDP(hdc, 1000, -500);
    expect_viewport_ext(hdc, 4000, -1000);
    expect_window_ext(hdc, 4000, 2000);


    ok(horz_res == GetDeviceCaps(hdc, HORZRES), "horz_res changed\n");
    ok(horz_size == GetDeviceCaps(hdc, HORZSIZE), "horz_size changed\n");
    ok(log_pixels_x == GetDeviceCaps(hdc, LOGPIXELSX), "log_pixels_x changed\n");

    r = pSetVirtualResolution(hdc, 8000, 1000, 400, 200);
    ok(r == TRUE, "got %d\n", r);
    expect_LPtoDP(hdc, 1000, -500);
    SetMapMode(hdc, MM_TEXT);
    SetMapMode(hdc, MM_LOMETRIC);
    expect_LPtoDP(hdc, 2000, -500);
    expect_viewport_ext(hdc, 8000, -1000);
    expect_window_ext(hdc, 4000, 2000);

    r = pSetVirtualResolution(hdc, 8000, 1000, 200, 200);
    ok(r == TRUE, "got %d\n", r);
    SetMapMode(hdc, MM_TEXT);
    SetMapMode(hdc, MM_LOMETRIC);
    expect_LPtoDP(hdc, 4000, -500);
    expect_viewport_ext(hdc, 8000, -1000);
    expect_window_ext(hdc, 2000, 2000);

    r = pSetVirtualResolution(hdc, 8000, 1000, 200, 200);
    ok(r == TRUE, "got %d\n", r);
    SetMapMode(hdc, MM_TEXT);
    SetMapMode(hdc, MM_LOMETRIC);
    expect_LPtoDP(hdc, 4000, -500);
    expect_viewport_ext(hdc, 8000, -1000);
    expect_window_ext(hdc, 2000, 2000);

    r = pSetVirtualResolution(hdc, 8000, 2000, 200, 200);
    ok(r == TRUE, "got %d\n", r);
    SetMapMode(hdc, MM_TEXT);
    SetMapMode(hdc, MM_LOMETRIC);
    expect_LPtoDP(hdc, 4000, -1000);
    expect_viewport_ext(hdc, 8000, -2000);
    expect_window_ext(hdc, 2000, 2000);

    r = pSetVirtualResolution(hdc, 0, 0, 10, 0);
    ok(r == FALSE, "got %d\n", r);
    SetMapMode(hdc, MM_TEXT);
    SetMapMode(hdc, MM_LOMETRIC);
    expect_LPtoDP(hdc, 4000, -1000);
    expect_viewport_ext(hdc, 8000, -2000);
    expect_window_ext(hdc, 2000, 2000);

    r = pSetVirtualResolution(hdc, 0, 0, 0, 0);
    ok(r == TRUE, "got %d\n", r);
    SetMapMode(hdc, MM_TEXT);
    SetMapMode(hdc, MM_LOMETRIC);
    expect_viewport_ext(hdc, orig_lometric_vp.cx, orig_lometric_vp.cy);
    expect_window_ext(hdc, orig_lometric_wnd.cx, orig_lometric_wnd.cy);

    DeleteDC(hdc);
}
