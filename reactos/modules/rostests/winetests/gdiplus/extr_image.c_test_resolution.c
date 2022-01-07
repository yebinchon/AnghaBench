
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int REAL ;
typedef int HDC ;
typedef int GpStatus ;
typedef int GpImage ;
typedef int GpGraphics ;
typedef int GpBitmap ;


 int GdipBitmapSetResolution (int *,int,int) ;
 int GdipCreateBitmapFromScan0 (int,int,int,int ,int *,int **) ;
 int GdipDeleteGraphics (int *) ;
 int GdipDisposeImage (int *) ;
 int GdipGetDpiX (int *,int*) ;
 int GdipGetDpiY (int *,int*) ;
 int GdipGetImageGraphicsContext (int *,int **) ;
 int GdipGetImageHorizontalResolution (int *,int*) ;
 int GdipGetImageVerticalResolution (int *,int*) ;
 int GetDC (int ) ;
 int GetDeviceCaps (int ,int ) ;
 int InvalidParameter ;
 int LOGPIXELSX ;
 int LOGPIXELSY ;
 int Ok ;
 int PixelFormat24bppRGB ;
 int ReleaseDC (int ,int ) ;
 int expect (int ,int ) ;
 int expectf (int,int) ;

__attribute__((used)) static void test_resolution(void)
{
    GpStatus stat;
    GpBitmap *bitmap;
    GpGraphics *graphics;
    REAL res=-1.0;
    HDC screendc;
    int screenxres, screenyres;


    stat = GdipCreateBitmapFromScan0(1, 1, 32, PixelFormat24bppRGB, ((void*)0), &bitmap);
    expect(Ok, stat);


    stat = GdipGetImageHorizontalResolution(((void*)0), &res);
    expect(InvalidParameter, stat);

    stat = GdipGetImageHorizontalResolution((GpImage*)bitmap, ((void*)0));
    expect(InvalidParameter, stat);

    stat = GdipGetImageVerticalResolution(((void*)0), &res);
    expect(InvalidParameter, stat);

    stat = GdipGetImageVerticalResolution((GpImage*)bitmap, ((void*)0));
    expect(InvalidParameter, stat);

    stat = GdipBitmapSetResolution(((void*)0), 96.0, 96.0);
    expect(InvalidParameter, stat);

    stat = GdipBitmapSetResolution(bitmap, 0.0, 0.0);
    expect(InvalidParameter, stat);


    screendc = GetDC(0);

    screenxres = GetDeviceCaps(screendc, LOGPIXELSX);
    screenyres = GetDeviceCaps(screendc, LOGPIXELSY);

    ReleaseDC(0, screendc);

    stat = GdipGetImageHorizontalResolution((GpImage*)bitmap, &res);
    expect(Ok, stat);
    expectf((REAL)screenxres, res);

    stat = GdipGetImageVerticalResolution((GpImage*)bitmap, &res);
    expect(Ok, stat);
    expectf((REAL)screenyres, res);

    stat = GdipGetImageGraphicsContext((GpImage*)bitmap, &graphics);
    expect(Ok, stat);
    stat = GdipGetDpiX(graphics, &res);
    expect(Ok, stat);
    expectf((REAL)screenxres, res);
    stat = GdipGetDpiY(graphics, &res);
    expect(Ok, stat);
    expectf((REAL)screenyres, res);


    stat = GdipBitmapSetResolution(bitmap, screenxres*2.0, screenyres*3.0);
    expect(Ok, stat);

    stat = GdipGetImageHorizontalResolution((GpImage*)bitmap, &res);
    expect(Ok, stat);
    expectf(screenxres*2.0, res);

    stat = GdipGetImageVerticalResolution((GpImage*)bitmap, &res);
    expect(Ok, stat);
    expectf(screenyres*3.0, res);

    stat = GdipGetDpiX(graphics, &res);
    expect(Ok, stat);
    expectf((REAL)screenxres, res);
    stat = GdipGetDpiY(graphics, &res);
    expect(Ok, stat);
    expectf((REAL)screenyres, res);

    stat = GdipDeleteGraphics(graphics);
    expect(Ok, stat);

    stat = GdipGetImageGraphicsContext((GpImage*)bitmap, &graphics);
    expect(Ok, stat);
    stat = GdipGetDpiX(graphics, &res);
    expect(Ok, stat);
    expectf(screenxres*2.0, res);
    stat = GdipGetDpiY(graphics, &res);
    expect(Ok, stat);
    expectf(screenyres*3.0, res);
    stat = GdipDeleteGraphics(graphics);
    expect(Ok, stat);

    stat = GdipDisposeImage((GpImage*)bitmap);
    expect(Ok, stat);
}
