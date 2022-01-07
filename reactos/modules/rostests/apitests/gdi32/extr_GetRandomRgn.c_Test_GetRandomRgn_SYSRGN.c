
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int left; int top; int right; int bottom; } ;
typedef TYPE_1__ RECT ;
typedef int LPPOINT ;
typedef int INT ;
typedef int HRGN ;
typedef int HDC ;
typedef int HBITMAP ;


 int CreateCompatibleBitmap (int ,int,int) ;
 int CreateCompatibleDC (int ) ;
 int CreateRectRgn (int,int,int,int) ;
 int DPtoLP (int ,int ,int) ;
 int DeleteDC (int ) ;
 int DeleteObject (int ) ;
 int GetRandomRgn (int ,int ,int ) ;
 int GetRgnBox (int ,TYPE_1__*) ;
 int MoveWindow (int ,int,int,int,int,int ) ;
 int SYSRGN ;
 int SelectClipRgn (int ,int ) ;
 int SelectObject (int ,int ) ;
 int ghdcWindow ;
 int ghwnd ;
 int ok_int (int ,int) ;
 int ok_long (int,int) ;
 int printf (char*) ;

void Test_GetRandomRgn_SYSRGN()
{
    HDC hdc;
    HRGN hrgn1, hrgn2;
    INT ret;
    RECT rect, rect2;
    HBITMAP hbmp;

    hrgn1 = CreateRectRgn(11, 17, 23, 42);
    if (!hrgn1)
    {
        printf("Coun't create a region\n");
        return;
    }

    hdc = CreateCompatibleDC(0);
    if (!hdc)
    {
        printf("Coun't create a dc\n");
        return;
    }

    ret = GetRandomRgn(hdc, hrgn1, SYSRGN);
    ok_int(ret, 1);
    GetRgnBox(hrgn1, &rect);
    ok_long(rect.left, 0);
    ok_long(rect.top, 0);
    ok_long(rect.right, 1);
    ok_long(rect.bottom, 1);

    hrgn2 = CreateRectRgn(1, 2, 3, 4);
    SelectClipRgn(hdc, hrgn2);
    DeleteObject(hrgn2);
    ret = GetRandomRgn(hdc, hrgn1, SYSRGN);
    ok_int(ret, 1);
    GetRgnBox(hrgn1, &rect);
    ok_long(rect.left, 0);
    ok_long(rect.top, 0);
    ok_long(rect.right, 1);
    ok_long(rect.bottom, 1);

    hbmp = CreateCompatibleBitmap(hdc, 4, 7);
    SelectObject(hdc, hbmp);
    ret = GetRandomRgn(hdc, hrgn1, SYSRGN);
    ok_int(ret, 1);
    GetRgnBox(hrgn1, &rect);
    ok_long(rect.left, 0);
    ok_long(rect.top, 0);
    ok_long(rect.right, 4);
    ok_long(rect.bottom, 7);
    DeleteObject(hbmp);

    MoveWindow(ghwnd, 100, 100, 100, 100, 0);
    ret = GetRandomRgn(ghdcWindow, hrgn1, SYSRGN);
    ok_int(ret, 1);
    GetRgnBox(hrgn1, &rect);
    DPtoLP(ghdcWindow, (LPPOINT)&rect, 2);







    MoveWindow(ghwnd, 200, 400, 200, 200, 0);

    ret = GetRandomRgn(ghdcWindow, hrgn1, SYSRGN);
    ok_int(ret, 1);
    GetRgnBox(hrgn1, &rect2);
    DPtoLP(ghdcWindow, (LPPOINT)&rect2, 2);







    DeleteObject(hrgn1);
    DeleteDC(hdc);

}
