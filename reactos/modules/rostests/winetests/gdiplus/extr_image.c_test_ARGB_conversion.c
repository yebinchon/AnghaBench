
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int rgb32_xp ;
typedef int rgb24 ;
typedef int pargb ;
typedef int argb ;
struct TYPE_4__ {int Width; int Height; int Stride; int* Scan0; int PixelFormat; } ;
typedef int GpStatus ;
typedef int GpImage ;
typedef int GpBitmap ;
typedef TYPE_1__ BitmapData ;
typedef int BYTE ;


 int GdipBitmapLockBits (int *,int *,int ,int ,TYPE_1__*) ;
 int GdipBitmapUnlockBits (int *,TYPE_1__*) ;
 int GdipCreateBitmapFromScan0 (int,int,int,int ,int*,int **) ;
 int GdipDisposeImage (int *) ;
 int ImageLockModeRead ;
 int Ok ;
 int PixelFormat24bppRGB ;
 int PixelFormat32bppARGB ;
 int PixelFormat32bppPARGB ;
 int PixelFormat32bppRGB ;
 int expect (int ,int ) ;
 int memcmp (int*,int*,int) ;
 int ok (int,char*,...) ;
 int trace (char*,int ,int,int,int,int,int,int,int,int) ;

__attribute__((used)) static void test_ARGB_conversion(void)
{
    BYTE argb[8] = { 0x11,0x22,0x33,0x80, 0xff,0xff,0xff,0 };
    BYTE pargb[8] = { 0x09,0x11,0x1a,0x80, 0,0,0,0 };
    BYTE rgb32_xp[8] = { 0x11,0x22,0x33,0xff, 0xff,0xff,0xff,0xff };
    BYTE rgb24[6] = { 0x11,0x22,0x33, 0xff,0xff,0xff };
    BYTE *bits;
    GpBitmap *bitmap;
    BitmapData data;
    GpStatus status;
    int match;

    status = GdipCreateBitmapFromScan0(2, 1, 8, PixelFormat32bppARGB, argb, &bitmap);
    expect(Ok, status);

    status = GdipBitmapLockBits(bitmap, ((void*)0), ImageLockModeRead, PixelFormat32bppPARGB, &data);
    expect(Ok, status);
    ok(data.Width == 2, "expected 2, got %d\n", data.Width);
    ok(data.Height == 1, "expected 1, got %d\n", data.Height);
    ok(data.Stride == 8, "expected 8, got %d\n", data.Stride);
    ok(data.PixelFormat == PixelFormat32bppPARGB, "expected PixelFormat32bppPARGB, got %d\n", data.PixelFormat);
    match = !memcmp(data.Scan0, pargb, sizeof(pargb));
    ok(match, "bits don't match\n");
    if (!match)
    {
        bits = data.Scan0;
        trace("format %#x, bits %02x,%02x,%02x,%02x %02x,%02x,%02x,%02x\n", PixelFormat32bppPARGB,
               bits[0], bits[1], bits[2], bits[3], bits[4], bits[5], bits[6], bits[7]);
    }
    status = GdipBitmapUnlockBits(bitmap, &data);
    expect(Ok, status);

    status = GdipBitmapLockBits(bitmap, ((void*)0), ImageLockModeRead, PixelFormat32bppRGB, &data);
    expect(Ok, status);
    ok(data.Width == 2, "expected 2, got %d\n", data.Width);
    ok(data.Height == 1, "expected 1, got %d\n", data.Height);
    ok(data.Stride == 8, "expected 8, got %d\n", data.Stride);
    ok(data.PixelFormat == PixelFormat32bppRGB, "expected PixelFormat32bppRGB, got %d\n", data.PixelFormat);
    match = !memcmp(data.Scan0, argb, sizeof(argb)) ||
            !memcmp(data.Scan0, rgb32_xp, sizeof(rgb32_xp));
    ok(match, "bits don't match\n");
    if (!match)
    {
        bits = data.Scan0;
        trace("format %#x, bits %02x,%02x,%02x,%02x %02x,%02x,%02x,%02x\n", PixelFormat32bppRGB,
               bits[0], bits[1], bits[2], bits[3], bits[4], bits[5], bits[6], bits[7]);
    }
    status = GdipBitmapUnlockBits(bitmap, &data);
    expect(Ok, status);

    status = GdipBitmapLockBits(bitmap, ((void*)0), ImageLockModeRead, PixelFormat24bppRGB, &data);
    expect(Ok, status);
    ok(data.Width == 2, "expected 2, got %d\n", data.Width);
    ok(data.Height == 1, "expected 1, got %d\n", data.Height);
    ok(data.Stride == 8, "expected 8, got %d\n", data.Stride);
    ok(data.PixelFormat == PixelFormat24bppRGB, "expected PixelFormat24bppRGB, got %d\n", data.PixelFormat);
    match = !memcmp(data.Scan0, rgb24, sizeof(rgb24));
    ok(match, "bits don't match\n");
    if (!match)
    {
        bits = data.Scan0;
        trace("format %#x, bits %02x,%02x,%02x,%02x %02x,%02x,%02x,%02x\n", PixelFormat24bppRGB,
               bits[0], bits[1], bits[2], bits[3], bits[4], bits[5], bits[6], bits[7]);
    }
    status = GdipBitmapUnlockBits(bitmap, &data);
    expect(Ok, status);

    GdipDisposeImage((GpImage *)bitmap);
}
