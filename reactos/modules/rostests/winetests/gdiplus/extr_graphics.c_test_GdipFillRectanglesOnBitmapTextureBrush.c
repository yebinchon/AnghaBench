
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_2__ {int member_0; int member_1; int member_2; int member_3; int right; int left; int bottom; int top; } ;
typedef TYPE_1__ RECT ;
typedef int GpTexture ;
typedef int GpStatus ;
typedef int GpImage ;
typedef int GpGraphics ;
typedef int GpBrush ;
typedef int GpBitmap ;
typedef int DWORD ;
typedef int BYTE ;
typedef scalar_t__ ARGB ;


 int BLUE_COLOR ;
 int CombineModeReplace ;
 int * GdipAlloc (int) ;
 int GdipBitmapGetPixel (int *,int,int,scalar_t__*) ;
 int GdipCreateBitmapFromScan0 (int,int,int,int ,int *,int **) ;
 int GdipCreateTexture (int *,int ,int **) ;
 int GdipDeleteBrush (int *) ;
 int GdipDeleteGraphics (int *) ;
 int GdipDisposeImage (int *) ;
 int GdipFillRectangleI (int *,int *,int ,int ,int,int) ;
 int GdipFree (int *) ;
 int GdipGetImageGraphicsContext (int *,int **) ;
 int GdipSetClipRectI (int *,int ,int ,int,int,int ) ;
 int Ok ;
 int PixelFormat32bppARGB ;
 int expect (int ,int ) ;
 scalar_t__ is_blue_color (scalar_t__) ;
 int ok (int,char*) ;

__attribute__((used)) static void test_GdipFillRectanglesOnBitmapTextureBrush(void)
{
    ARGB color[6] = {0,0,0,0,0,0};
    UINT x = 0;
    UINT y = 0;
    RECT rect = {100, 100, 180, 180};
    UINT width = rect.right - rect.left;
    UINT height = rect.bottom - rect.top;
    UINT src_img_width = width/2;
    UINT src_img_height = height/2;

    GpStatus status = 0;
    union
    {
        GpBitmap *bitmap;
        GpImage *image;
    } src_img;
    union
    {
        GpBitmap *bitmap;
        GpImage *image;
    } dst_img;

    GpTexture *brush = ((void*)0);
    GpGraphics *graphics = ((void*)0);
    BYTE *src_img_data = GdipAlloc(src_img_width*src_img_height*4);
    DWORD *pixel = (DWORD *)src_img_data;
    ok(pixel != ((void*)0), "Expected src_img_data is valid\n");

    status = GdipCreateBitmapFromScan0(width, height, width*4,
            PixelFormat32bppARGB, ((void*)0), &dst_img.bitmap);
    expect(Ok, status);


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

    status = GdipCreateTexture(src_img.image, 0, &brush);
    expect(Ok, status);

    status = GdipGetImageGraphicsContext(dst_img.image, &graphics);
    expect(Ok, status);

    status = GdipSetClipRectI(graphics, 0, 0, width, height, CombineModeReplace);
    expect(Ok, status);

    status = GdipFillRectangleI(graphics, (GpBrush*)brush, 0, 0, width/2, height/2);
    expect(Ok, status);

    GdipDeleteBrush((GpBrush*)brush);
    GdipDeleteGraphics(graphics);

    status = GdipBitmapGetPixel(dst_img.bitmap, 0, 0, &color[0]);
    expect(Ok, status);
    status = GdipBitmapGetPixel(dst_img.bitmap, 0, 1, &color[1]);
    expect(Ok, status);
    status = GdipBitmapGetPixel(dst_img.bitmap, 1, 0, &color[2]);
    expect(Ok, status);
    status = GdipBitmapGetPixel(dst_img.bitmap, width/2, 0, &color[3]);
    expect(Ok, status);
    status = GdipBitmapGetPixel(dst_img.bitmap, width/2, height/2, &color[4]);
    expect(Ok, status);
    status = GdipBitmapGetPixel(dst_img.bitmap, 0, height/2, &color[5]);
    expect(Ok, status);

    ok(is_blue_color(color[0]) && is_blue_color(color[1]) && is_blue_color(color[2]) &&
       color[3] == 0 && color[4] == 0 && color[5] == 0,
       "Expected GdipFillRectangleI take effect!\n" );

    GdipDisposeImage(src_img.image);
    GdipDisposeImage(dst_img.image);
    GdipFree(src_img_data);
}
