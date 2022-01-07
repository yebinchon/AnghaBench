
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bits ;
typedef int UINT ;
typedef int GpStatus ;
typedef int GpImage ;
typedef int GpBitmap ;
typedef int BYTE ;
typedef int ARGB ;


 int GdipBitmapGetPixel (int *,int,int,int*) ;
 int GdipCreateBitmapFromScan0 (int,int,int,int ,int*,int **) ;
 int GdipDisposeImage (int *) ;
 int GdipGetImageHeight (int *,int*) ;
 int GdipGetImageWidth (int *,int*) ;
 int GdipImageRotateFlip (int *,int ) ;
 int Ok ;
 int PixelFormat24bppRGB ;
 int Rotate90FlipNone ;
 int RotateNoneFlipX ;
 int RotateNoneFlipY ;
 int expect (int,int) ;
 int memcpy (int*,int const*,int) ;

__attribute__((used)) static void test_rotateflip(void)
{
    GpImage *bitmap;
    GpStatus stat;
    BYTE bits[24];
    static const BYTE orig_bits[24] = {
        0,0,0xff, 0,0xff,0, 0xff,0,0, 23,23,23,
        0xff,0xff,0, 0xff,0,0xff, 0,0xff,0xff, 23,23,23};
    UINT width, height;
    ARGB color;

    memcpy(bits, orig_bits, sizeof(bits));
    stat = GdipCreateBitmapFromScan0(3, 2, 12, PixelFormat24bppRGB, bits, (GpBitmap**)&bitmap);
    expect(Ok, stat);

    stat = GdipImageRotateFlip(bitmap, Rotate90FlipNone);
    expect(Ok, stat);

    stat = GdipGetImageWidth(bitmap, &width);
    expect(Ok, stat);
    stat = GdipGetImageHeight(bitmap, &height);
    expect(Ok, stat);
    expect(2, width);
    expect(3, height);

    stat = GdipBitmapGetPixel((GpBitmap*)bitmap, 0, 0, &color);
    expect(Ok, stat);
    expect(0xff00ffff, color);

    stat = GdipBitmapGetPixel((GpBitmap*)bitmap, 1, 0, &color);
    expect(Ok, stat);
    expect(0xffff0000, color);

    stat = GdipBitmapGetPixel((GpBitmap*)bitmap, 0, 2, &color);
    expect(Ok, stat);
    expect(0xffffff00, color);

    stat = GdipBitmapGetPixel((GpBitmap*)bitmap, 1, 2, &color);
    expect(Ok, stat);
    expect(0xff0000ff, color);

    expect(0, bits[0]);
    expect(0, bits[1]);
    expect(0xff, bits[2]);

    GdipDisposeImage(bitmap);

    memcpy(bits, orig_bits, sizeof(bits));
    stat = GdipCreateBitmapFromScan0(3, 2, 12, PixelFormat24bppRGB, bits, (GpBitmap**)&bitmap);
    expect(Ok, stat);

    stat = GdipImageRotateFlip(bitmap, RotateNoneFlipX);
    expect(Ok, stat);

    stat = GdipGetImageWidth(bitmap, &width);
    expect(Ok, stat);
    stat = GdipGetImageHeight(bitmap, &height);
    expect(Ok, stat);
    expect(3, width);
    expect(2, height);

    stat = GdipBitmapGetPixel((GpBitmap*)bitmap, 0, 0, &color);
    expect(Ok, stat);
    expect(0xff0000ff, color);

    stat = GdipBitmapGetPixel((GpBitmap*)bitmap, 2, 0, &color);
    expect(Ok, stat);
    expect(0xffff0000, color);

    stat = GdipBitmapGetPixel((GpBitmap*)bitmap, 0, 1, &color);
    expect(Ok, stat);
    expect(0xffffff00, color);

    stat = GdipBitmapGetPixel((GpBitmap*)bitmap, 2, 1, &color);
    expect(Ok, stat);
    expect(0xff00ffff, color);

    expect(0, bits[0]);
    expect(0, bits[1]);
    expect(0xff, bits[2]);

    GdipDisposeImage(bitmap);

    memcpy(bits, orig_bits, sizeof(bits));
    stat = GdipCreateBitmapFromScan0(3, 2, 12, PixelFormat24bppRGB, bits, (GpBitmap**)&bitmap);
    expect(Ok, stat);

    stat = GdipImageRotateFlip(bitmap, RotateNoneFlipY);
    expect(Ok, stat);

    stat = GdipGetImageWidth(bitmap, &width);
    expect(Ok, stat);
    stat = GdipGetImageHeight(bitmap, &height);
    expect(Ok, stat);
    expect(3, width);
    expect(2, height);

    stat = GdipBitmapGetPixel((GpBitmap*)bitmap, 0, 0, &color);
    expect(Ok, stat);
    expect(0xff00ffff, color);

    stat = GdipBitmapGetPixel((GpBitmap*)bitmap, 2, 0, &color);
    expect(Ok, stat);
    expect(0xffffff00, color);

    stat = GdipBitmapGetPixel((GpBitmap*)bitmap, 0, 1, &color);
    expect(Ok, stat);
    expect(0xffff0000, color);

    stat = GdipBitmapGetPixel((GpBitmap*)bitmap, 2, 1, &color);
    expect(Ok, stat);
    expect(0xff0000ff, color);

    expect(0, bits[0]);
    expect(0, bits[1]);
    expect(0xff, bits[2]);

    GdipDisposeImage(bitmap);
}
