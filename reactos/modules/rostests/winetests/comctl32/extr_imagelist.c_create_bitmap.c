
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int bmi ;
struct TYPE_8__ {int biSize; int biBitCount; int biPlanes; int biCompression; void* biWidth; void* biHeight; } ;
struct TYPE_10__ {TYPE_1__ bmiHeader; } ;
struct TYPE_9__ {void* member_2; void* member_3; int member_1; int member_0; } ;
typedef TYPE_2__ RECT ;
typedef void* INT ;
typedef int HDC ;
typedef int HBRUSH ;
typedef int HBITMAP ;
typedef int COLORREF ;
typedef TYPE_3__ BITMAPINFO ;


 int BI_RGB ;
 int CreateCompatibleDC (int ) ;
 int CreateDIBSection (int ,TYPE_3__*,int ,int *,int *,int ) ;
 int CreateSolidBrush (int ) ;
 int DIB_RGB_COLORS ;
 int DT_CENTER ;
 int DT_SINGLELINE ;
 int DT_VCENTER ;
 int DeleteDC (int ) ;
 int DeleteObject (int ) ;
 int DrawTextA (int ,char const*,int,TYPE_2__*,int) ;
 int FillRect (int ,TYPE_2__*,int ) ;
 int SelectObject (int ,int ) ;
 int memset (TYPE_3__*,int ,int) ;

__attribute__((used)) static HBITMAP create_bitmap(INT cx, INT cy, COLORREF color, const char *comment)
{
    HDC hdc;
    BITMAPINFO bmi;
    HBITMAP hbmp, hbmp_old;
    HBRUSH hbrush;
    RECT rc = { 0, 0, cx, cy };

    hdc = CreateCompatibleDC(0);

    memset(&bmi, 0, sizeof(bmi));
    bmi.bmiHeader.biSize = sizeof(bmi.bmiHeader);
    bmi.bmiHeader.biHeight = cx;
    bmi.bmiHeader.biWidth = cy;
    bmi.bmiHeader.biBitCount = 24;
    bmi.bmiHeader.biPlanes = 1;
    bmi.bmiHeader.biCompression = BI_RGB;
    hbmp = CreateDIBSection(hdc, &bmi, DIB_RGB_COLORS, ((void*)0), ((void*)0), 0);

    hbmp_old = SelectObject(hdc, hbmp);

    hbrush = CreateSolidBrush(color);
    FillRect(hdc, &rc, hbrush);
    DeleteObject(hbrush);

    DrawTextA(hdc, comment, -1, &rc, DT_CENTER | DT_VCENTER | DT_SINGLELINE);

    SelectObject(hdc, hbmp_old);
    DeleteDC(hdc);

    return hbmp;
}
