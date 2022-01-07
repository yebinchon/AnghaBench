
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ GpStatus ;
typedef int GpImage ;
typedef int GpBitmap ;
typedef int BYTE ;
typedef scalar_t__ ARGB ;


 scalar_t__ GdipBitmapGetPixel (int *,int,int,scalar_t__*) ;
 scalar_t__ GdipBitmapSetPixel (int *,int,int,int) ;
 scalar_t__ GdipCreateBitmapFromScan0 (int,int,int,int ,int*,int **) ;
 scalar_t__ GdipDisposeImage (int *) ;
 scalar_t__ InvalidParameter ;
 scalar_t__ Ok ;
 int PixelFormat32bppRGB ;
 scalar_t__ broken (int) ;
 int expect (scalar_t__,scalar_t__) ;
 int ok (int,char*,scalar_t__) ;

__attribute__((used)) static void test_getsetpixel(void)
{
    GpStatus stat;
    GpBitmap *bitmap;
    ARGB color;
    BYTE bits[16] = {0x00,0x00,0x00,0x00, 0x00,0xff,0xff,0x00,
                     0xff,0x00,0x00,0x00, 0xff,0xff,0xff,0x00};

    stat = GdipCreateBitmapFromScan0(2, 2, 8, PixelFormat32bppRGB, bits, &bitmap);
    expect(Ok, stat);


    stat = GdipBitmapGetPixel(((void*)0), 1, 1, &color);
    expect(InvalidParameter, stat);

    stat = GdipBitmapGetPixel(bitmap, 1, 1, ((void*)0));
    expect(InvalidParameter, stat);

    stat = GdipBitmapSetPixel(((void*)0), 1, 1, 0);
    expect(InvalidParameter, stat);


    stat = GdipBitmapGetPixel(bitmap, -1, 1, &color);
    expect(InvalidParameter, stat);

    stat = GdipBitmapSetPixel(bitmap, -1, 1, 0);
    expect(InvalidParameter, stat);

    stat = GdipBitmapGetPixel(bitmap, 1, -1, &color);
    ok(stat == InvalidParameter ||
       broken(stat == Ok),
       "Expected InvalidParameter, got %.8x\n", stat);

if (0)
{
    stat = GdipBitmapSetPixel(bitmap, 1, -1, 0);
    ok(stat == InvalidParameter ||
       broken(stat == Ok),
       "Expected InvalidParameter, got %.8x\n", stat);
}

    stat = GdipBitmapGetPixel(bitmap, 2, 1, &color);
    expect(InvalidParameter, stat);

    stat = GdipBitmapSetPixel(bitmap, 2, 1, 0);
    expect(InvalidParameter, stat);

    stat = GdipBitmapGetPixel(bitmap, 1, 2, &color);
    expect(InvalidParameter, stat);

    stat = GdipBitmapSetPixel(bitmap, 1, 2, 0);
    expect(InvalidParameter, stat);


    stat = GdipBitmapGetPixel(bitmap, 1, 1, &color);
    expect(Ok, stat);
    expect(0xffffffff, color);

    stat = GdipBitmapGetPixel(bitmap, 0, 1, &color);
    expect(Ok, stat);
    expect(0xff0000ff, color);

    stat = GdipBitmapSetPixel(bitmap, 1, 1, 0xff676869);
    expect(Ok, stat);

    stat = GdipBitmapSetPixel(bitmap, 0, 0, 0xff474849);
    expect(Ok, stat);

    stat = GdipBitmapGetPixel(bitmap, 1, 1, &color);
    expect(Ok, stat);
    expect(0xff676869, color);

    stat = GdipBitmapGetPixel(bitmap, 0, 0, &color);
    expect(Ok, stat);
    expect(0xff474849, color);

    stat = GdipDisposeImage((GpImage*)bitmap);
    expect(Ok, stat);
}
