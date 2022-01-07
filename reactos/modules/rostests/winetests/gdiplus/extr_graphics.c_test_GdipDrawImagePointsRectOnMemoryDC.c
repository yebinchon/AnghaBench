
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
typedef int GpImage ;
typedef int GpGraphics ;
typedef int GpBitmap ;
typedef int DWORD ;
typedef int BYTE ;
typedef scalar_t__ ARGB ;


 int BLUE_COLOR ;
 int CreateCompatibleBitmap (int ,int,int) ;
 int CreateCompatibleDC (int ) ;
 int DeleteDC (int ) ;
 int DeleteObject (int ) ;
 int * GdipAlloc (int) ;
 int GdipCreateBitmapFromScan0 (int,int,int,int ,int *,int **) ;
 int GdipCreateFromHDC (int ,int **) ;
 int GdipDeleteGraphics (int *) ;
 int GdipDisposeImage (int *) ;
 int GdipDrawImageRectRectI (int *,int *,int,int,int,int,int ,int ,int,int,int ,int *,int *,int *) ;
 int GdipFree (int *) ;
 int * GetBitmapPixelBuffer (int ,int ,int,int) ;
 int GetDC (int ) ;
 int Ok ;
 int PixelFormat32bppARGB ;
 int ReleaseDC (int ,int ) ;
 int SelectObject (int ,int ) ;
 int SetWindowOrgEx (int ,int,int,TYPE_2__*) ;
 int UnitPixel ;
 int expect (int ,int ) ;
 scalar_t__ get_bitmap_pixel (int,int) ;
 int hwnd ;
 scalar_t__ is_blue_color (scalar_t__) ;
 int ok (int,char*) ;

__attribute__((used)) static void test_GdipDrawImagePointsRectOnMemoryDC(void)
{
    ARGB color[6] = {0,0,0,0,0,0};
    POINT pt = {0,0};
    RECT rect = {100, 100, 180, 180};
    UINT width = rect.right - rect.left;
    UINT height = rect.bottom - rect.top;
    GpStatus status = 0;
    union
    {
        GpBitmap *bitmap;
        GpImage *image;
    } src_img;
    GpGraphics *graphics = ((void*)0);
    HDC dc = GetDC( hwnd);
    HDC hdc = CreateCompatibleDC(dc);
    HBITMAP bmp = CreateCompatibleBitmap(dc, width, height);
    HGDIOBJ old = SelectObject(hdc, bmp);

    UINT x = 0;
    UINT y = 0;
    UINT src_img_width = width/2;
    UINT src_img_height = height/2;
    BYTE *src_img_data = GdipAlloc(src_img_width*src_img_height*4);
    DWORD *pixel = (DWORD *)src_img_data;
    ok(pixel != ((void*)0), "Expected src_img_data is valid\n");


    SetWindowOrgEx(hdc, rect.left, rect.top, &pt);


    for(y = 0; y < src_img_height; ++y)
    {
        for(x = 0; x < src_img_width; ++x)
        {
            pixel[x] = BLUE_COLOR;
        }

        pixel += src_img_width;
    }

    status = GdipCreateBitmapFromScan0(src_img_width, src_img_height, src_img_width*4,
            PixelFormat32bppARGB, src_img_data, &src_img.bitmap);
    expect(Ok, status);

    status = GdipCreateFromHDC(hdc, &graphics);
    expect(Ok, status);

    status = GdipDrawImageRectRectI(graphics, src_img.image,
            rect.left+width/2, rect.top+height/2, width/2, height/2,
            0, 0, src_img_width, src_img_height, UnitPixel, ((void*)0), ((void*)0), ((void*)0));
    expect(Ok, status);

    GdipDisposeImage(src_img.image);
    GdipDeleteGraphics(graphics);
    GdipFree(src_img_data);

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
       "Expected GdipDrawImageRectRectI take effect!\n" );
    GdipFree(pixel);

    SelectObject(hdc, old);
    DeleteObject(bmp);
    DeleteDC(hdc);
    ReleaseDC(hwnd, dc);
}
