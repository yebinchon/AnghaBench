
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int cx; int cy; } ;
typedef TYPE_1__ SIZE ;
typedef int HDC ;


 int GetDC (int ) ;
 int GetViewportExtEx (int ,TYPE_1__*) ;
 int GetWindowExtEx (int ,TYPE_1__*) ;
 int MM_ISOTROPIC ;
 int ReleaseDC (int ,int ) ;
 int SetMapMode (int ,int ) ;
 int test_SetViewportExt (int ,int,int,int,int) ;
 int test_SetWindowExt (int ,int,int,int,int) ;

__attribute__((used)) static void test_isotropic_mapping(void)
{
    SIZE win, vp;
    HDC hdc = GetDC(0);

    SetMapMode(hdc, MM_ISOTROPIC);
    GetWindowExtEx(hdc, &win);
    GetViewportExtEx(hdc, &vp);

    test_SetViewportExt(hdc, 10 * vp.cx, 10 * vp.cy, 10 * vp.cx, 10 * vp.cy);
    test_SetWindowExt(hdc, win.cx, win.cy, 10 * vp.cx, 10 * vp.cy);
    test_SetWindowExt(hdc, 2 * win.cx, win.cy, 10 * vp.cx, 5 * vp.cy);
    test_SetWindowExt(hdc, win.cx, win.cy, 5 * vp.cx, 5 * vp.cy);
    test_SetViewportExt(hdc, 4 * vp.cx, 2 * vp.cy, 2 * vp.cx, 2 * vp.cy);
    test_SetViewportExt(hdc, vp.cx, 2 * vp.cy, vp.cx, vp.cy);
    test_SetViewportExt(hdc, 2 * vp.cx, 2 * vp.cy, 2 * vp.cx, 2 * vp.cy);
    test_SetViewportExt(hdc, 4 * vp.cx, 2 * vp.cy, 2 * vp.cx, 2 * vp.cy);
    test_SetWindowExt(hdc, 4 * win.cx, 2 * win.cy, 2 * vp.cx, vp.cy);
    test_SetViewportExt(hdc, -2 * vp.cx, -4 * vp.cy, -2 * vp.cx, -vp.cy);
    test_SetViewportExt(hdc, -2 * vp.cx, -1 * vp.cy, -2 * vp.cx, -vp.cy);
    test_SetWindowExt(hdc, -4 * win.cx, -2 * win.cy, -2 * vp.cx, -vp.cy);
    test_SetWindowExt(hdc, 4 * win.cx, -4 * win.cy, -vp.cx, -vp.cy);

    ReleaseDC(0, hdc);
}
