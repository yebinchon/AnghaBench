
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_5__ {int member_1; int member_0; } ;
struct TYPE_4__ {int member_0; int member_1; int member_2; int member_3; int right; int left; int bottom; int top; } ;
typedef TYPE_1__ RECT ;
typedef TYPE_2__ POINT ;
typedef int HGDIOBJ ;
typedef int HDC ;
typedef int HBITMAP ;
typedef int GpStatus ;
typedef int GpSolidFill ;
typedef int GpGraphics ;
typedef int GpBrush ;
typedef int DWORD ;
typedef scalar_t__ ARGB ;


 int BLUE_COLOR ;
 int CombineModeReplace ;
 int CreateCompatibleBitmap (int ,int,int) ;
 int CreateCompatibleDC (int ) ;
 int DeleteDC (int ) ;
 int DeleteObject (int ) ;
 int GdipCreateFromHDC (int ,int **) ;
 int GdipCreateSolidFill (int ,int **) ;
 int GdipDeleteBrush (int *) ;
 int GdipDeleteGraphics (int *) ;
 int GdipFillRectangleI (int *,int *,int ,int ,int,int) ;
 int GdipFree (int *) ;
 int GdipSetClipRectI (int *,int,int,int,int,int ) ;
 int * GetBitmapPixelBuffer (int ,int ,int,int) ;
 int GetDC (int ) ;
 int Ok ;
 int ReleaseDC (int ,int ) ;
 int SelectObject (int ,int ) ;
 int SetWindowOrgEx (int ,int,int,TYPE_2__*) ;
 int expect (int ,int ) ;
 scalar_t__ get_bitmap_pixel (int,int) ;
 int hwnd ;
 scalar_t__ is_blue_color (scalar_t__) ;
 int ok (int,char*) ;

__attribute__((used)) static void test_GdipFillRectanglesOnMemoryDCSolidBrush(void)
{
    ARGB color[6] = {0,0,0,0,0,0};
    POINT pt = {0,0};
    RECT rect = {100, 100, 180, 180};
    UINT width = rect.right - rect.left;
    UINT height = rect.bottom - rect.top;
    GpStatus status = 0;
    GpSolidFill *brush = ((void*)0);
    GpGraphics *graphics = ((void*)0);
    HDC dc = GetDC( hwnd);
    HDC hdc = CreateCompatibleDC(dc);
    HBITMAP bmp = CreateCompatibleBitmap(dc, width, height);
    HGDIOBJ old = SelectObject(hdc, bmp);
    DWORD* pixel = ((void*)0);


    SetWindowOrgEx(hdc, rect.left, rect.top, &pt);

    status = GdipCreateSolidFill(BLUE_COLOR, &brush);
    expect(Ok, status);

    status = GdipCreateFromHDC(hdc, &graphics);
    expect(Ok, status);

    status = GdipSetClipRectI(graphics, rect.left+width/2, rect.top+height/2,
            width, height, CombineModeReplace);
    expect(Ok, status);

    status = GdipFillRectangleI(graphics, (GpBrush*)brush, 0, 0, rect.right, rect.bottom);
    expect(Ok, status);

    GdipDeleteBrush((GpBrush*)brush);
    GdipDeleteGraphics(graphics);

    pixel = GetBitmapPixelBuffer(hdc, bmp, width, height);
    if (pixel)
    {
       color[0] = get_bitmap_pixel(width/2, height/2);
       color[1] = get_bitmap_pixel(width/2+1, height/2);
       color[2] = get_bitmap_pixel(width/2, height/2+1);
       color[3] = get_bitmap_pixel(width/2-1, height/2-1);
       color[4] = get_bitmap_pixel(width/2-1, height-1);
       color[5] = get_bitmap_pixel(width-1, height/2-1);
    }

    ok(is_blue_color(color[0]) && is_blue_color(color[1]) && is_blue_color(color[2]) &&
       color[3] == 0 && color[4] == 0 && color[5] == 0,
       "Expected GdipFillRectangleI take effect!\n" );
    GdipFree(pixel);

    SelectObject(hdc, old);
    DeleteObject(bmp);
    DeleteDC(hdc);
    ReleaseDC(hwnd, dc);
}
