
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int white_2x2 ;
typedef int black_2x2 ;
typedef size_t UINT ;
typedef int GpStatus ;
typedef int GpImage ;
typedef int GpGraphics ;
typedef int GpBitmap ;
typedef int BYTE ;


 int GdipBitmapSetResolution (int *,double,double) ;
 int GdipCreateBitmapFromScan0 (int,int,int,int ,int*,int **) ;
 int GdipDeleteGraphics (int *) ;
 int GdipDisposeImage (int *) ;
 int GdipDrawImagePointRectI (int *,int *,int ,int ,int ,int ,int,int,int ) ;
 int GdipGetImageGraphicsContext (int *,int **) ;
 int GdipSetInterpolationMode (int *,int ) ;
 int InterpolationModeNearestNeighbor ;
 int Ok ;
 int PixelFormat24bppRGB ;
 int UnitPixel ;
 int expect (int ,int ) ;
 scalar_t__ memcmp (int*,int*,int) ;
 int ok (int,char*) ;
 int trace (char*,...) ;

__attribute__((used)) static void test_GdipDrawImagePointRect(void)
{
    BYTE black_1x1[4] = { 0,0,0,0 };
    BYTE white_2x2[16] = { 0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,
                           0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff };
    BYTE black_2x2[16] = { 0,0,0,0,0,0,0xff,0xff,
                           0,0,0,0,0,0,0xff,0xff };
    GpStatus status;
    union
    {
        GpBitmap *bitmap;
        GpImage *image;
    } u1, u2;
    GpGraphics *graphics;
    int match;

    status = GdipCreateBitmapFromScan0(1, 1, 4, PixelFormat24bppRGB, black_1x1, &u1.bitmap);
    expect(Ok, status);
    status = GdipBitmapSetResolution(u1.bitmap, 100.0, 100.0);
    expect(Ok, status);

    status = GdipCreateBitmapFromScan0(2, 2, 8, PixelFormat24bppRGB, white_2x2, &u2.bitmap);
    expect(Ok, status);
    status = GdipBitmapSetResolution(u2.bitmap, 300.0, 300.0);
    expect(Ok, status);
    status = GdipGetImageGraphicsContext(u2.image, &graphics);
    expect(Ok, status);
    status = GdipSetInterpolationMode(graphics, InterpolationModeNearestNeighbor);
    expect(Ok, status);

    status = GdipDrawImagePointRectI(graphics, u1.image, 0, 0, 0, 0, 1, 1, UnitPixel);
    expect(Ok, status);

    match = memcmp(white_2x2, black_2x2, sizeof(black_2x2)) == 0;
    ok(match, "data should match\n");
    if (!match)
    {
        UINT i, size = sizeof(white_2x2);
        BYTE *bits = white_2x2;
        for (i = 0; i < size; i++)
            trace(" %02x", bits[i]);
        trace("\n");
    }

    status = GdipDeleteGraphics(graphics);
    expect(Ok, status);
    status = GdipDisposeImage(u1.image);
    expect(Ok, status);
    status = GdipDisposeImage(u2.image);
    expect(Ok, status);
}
