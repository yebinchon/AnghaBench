
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT ;
typedef scalar_t__ GpStatus ;
typedef int GpImage ;
typedef int GpBitmap ;


 scalar_t__ GdipCreateBitmapFromScan0 (int,int,int,int ,int *,int **) ;
 int GdipDisposeImage (int *) ;
 scalar_t__ GdipGetImageFlags (int *,scalar_t__*) ;
 scalar_t__ ImageFlagsHasAlpha ;
 scalar_t__ ImageFlagsNone ;
 scalar_t__ InvalidParameter ;
 scalar_t__ Ok ;
 int PixelFormat16bppARGB1555 ;
 int PixelFormat16bppGrayScale ;
 int PixelFormat16bppRGB555 ;
 int PixelFormat16bppRGB565 ;
 int PixelFormat1bppIndexed ;
 int PixelFormat24bppRGB ;
 int PixelFormat32bppARGB ;
 int PixelFormat32bppPARGB ;
 int PixelFormat32bppRGB ;
 int PixelFormat48bppRGB ;
 int PixelFormat4bppIndexed ;
 int PixelFormat64bppARGB ;
 int PixelFormat64bppPARGB ;
 int PixelFormat8bppIndexed ;
 int expect (scalar_t__,scalar_t__) ;

__attribute__((used)) static void test_GdipGetImageFlags(void)
{
    GpImage *img;
    GpStatus stat;
    UINT flags;

    img = (GpImage*)0xdeadbeef;

    stat = GdipGetImageFlags(((void*)0), ((void*)0));
    expect(InvalidParameter, stat);

    stat = GdipGetImageFlags(((void*)0), &flags);
    expect(InvalidParameter, stat);

    stat = GdipGetImageFlags(img, ((void*)0));
    expect(InvalidParameter, stat);

    stat = GdipCreateBitmapFromScan0(10, 10, 10, PixelFormat1bppIndexed, ((void*)0), (GpBitmap**)&img);
    expect(Ok, stat);
    stat = GdipGetImageFlags(img, &flags);
    expect(Ok, stat);
    expect(ImageFlagsHasAlpha, flags);
    GdipDisposeImage(img);

    stat = GdipCreateBitmapFromScan0(10, 10, 10, PixelFormat4bppIndexed, ((void*)0), (GpBitmap**)&img);
    expect(Ok, stat);
    stat = GdipGetImageFlags(img, &flags);
    expect(Ok, stat);
    expect(ImageFlagsHasAlpha, flags);
    GdipDisposeImage(img);

    stat = GdipCreateBitmapFromScan0(10, 10, 10, PixelFormat8bppIndexed, ((void*)0), (GpBitmap**)&img);
    expect(Ok, stat);
    stat = GdipGetImageFlags(img, &flags);
    expect(Ok, stat);
    expect(ImageFlagsHasAlpha, flags);
    GdipDisposeImage(img);

    stat = GdipCreateBitmapFromScan0(10, 10, 10, PixelFormat16bppGrayScale, ((void*)0), (GpBitmap**)&img);
    expect(Ok, stat);
    stat = GdipGetImageFlags(img, &flags);
    expect(Ok, stat);
    expect(ImageFlagsNone, flags);
    GdipDisposeImage(img);

    stat = GdipCreateBitmapFromScan0(10, 10, 10, PixelFormat16bppRGB555, ((void*)0), (GpBitmap**)&img);
    expect(Ok, stat);
    stat = GdipGetImageFlags(img, &flags);
    expect(Ok, stat);
    expect(ImageFlagsNone, flags);
    GdipDisposeImage(img);

    stat = GdipCreateBitmapFromScan0(10, 10, 10, PixelFormat16bppRGB565, ((void*)0), (GpBitmap**)&img);
    expect(Ok, stat);
    stat = GdipGetImageFlags(img, &flags);
    expect(Ok, stat);
    expect(ImageFlagsNone, flags);
    GdipDisposeImage(img);

    stat = GdipCreateBitmapFromScan0(10, 10, 10, PixelFormat16bppARGB1555, ((void*)0), (GpBitmap**)&img);
    expect(Ok, stat);
    stat = GdipGetImageFlags(img, &flags);
    expect(Ok, stat);
    expect(ImageFlagsHasAlpha, flags);
    GdipDisposeImage(img);

    stat = GdipCreateBitmapFromScan0(10, 10, 10, PixelFormat24bppRGB, ((void*)0), (GpBitmap**)&img);
    expect(Ok, stat);
    stat = GdipGetImageFlags(img, &flags);
    expect(Ok, stat);
    expect(ImageFlagsNone, flags);
    GdipDisposeImage(img);

    stat = GdipCreateBitmapFromScan0(10, 10, 10, PixelFormat32bppRGB, ((void*)0), (GpBitmap**)&img);
    expect(Ok, stat);
    stat = GdipGetImageFlags(img, &flags);
    expect(Ok, stat);
    expect(ImageFlagsNone, flags);
    GdipDisposeImage(img);

    stat = GdipCreateBitmapFromScan0(10, 10, 10, PixelFormat32bppARGB, ((void*)0), (GpBitmap**)&img);
    expect(Ok, stat);
    stat = GdipGetImageFlags(img, &flags);
    expect(Ok, stat);
    expect(ImageFlagsHasAlpha, flags);
    GdipDisposeImage(img);

    stat = GdipCreateBitmapFromScan0(10, 10, 10, PixelFormat32bppPARGB, ((void*)0), (GpBitmap**)&img);
    expect(Ok, stat);
    stat = GdipGetImageFlags(img, &flags);
    expect(Ok, stat);
    expect(ImageFlagsHasAlpha, flags);
    GdipDisposeImage(img);

    stat = GdipCreateBitmapFromScan0(10, 10, 10, PixelFormat48bppRGB, ((void*)0), (GpBitmap**)&img);
    expect(Ok, stat);
    if (stat == Ok)
    {
        stat = GdipGetImageFlags(img, &flags);
        expect(Ok, stat);
        expect(ImageFlagsNone, flags);
        GdipDisposeImage(img);
    }

    stat = GdipCreateBitmapFromScan0(10, 10, 10, PixelFormat64bppARGB, ((void*)0), (GpBitmap**)&img);
    expect(Ok, stat);
    if (stat == Ok)
    {
        expect(Ok, stat);
        stat = GdipGetImageFlags(img, &flags);
        expect(Ok, stat);
        expect(ImageFlagsHasAlpha, flags);
        GdipDisposeImage(img);
    }

    stat = GdipCreateBitmapFromScan0(10, 10, 10, PixelFormat64bppPARGB, ((void*)0), (GpBitmap**)&img);
    expect(Ok, stat);
    if (stat == Ok)
    {
        expect(Ok, stat);
        stat = GdipGetImageFlags(img, &flags);
        expect(Ok, stat);
        expect(ImageFlagsHasAlpha, flags);
        GdipDisposeImage(img);
    }
}
