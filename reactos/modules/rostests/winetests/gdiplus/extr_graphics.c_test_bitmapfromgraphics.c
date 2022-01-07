
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int REAL ;
typedef int PixelFormat ;
typedef int HDC ;
typedef int GpStatus ;
typedef int GpImage ;
typedef int GpGraphics ;
typedef int GpBitmap ;


 int GdipCreateBitmapFromGraphics (int,int,int *,int **) ;
 int GdipCreateFromHDC (int ,int **) ;
 int GdipDeleteGraphics (int *) ;
 int GdipDisposeImage (int *) ;
 int GdipGetDpiX (int *,int *) ;
 int GdipGetDpiY (int *,int *) ;
 int GdipGetImageHeight (int *,int *) ;
 int GdipGetImageHorizontalResolution (int *,int *) ;
 int GdipGetImagePixelFormat (int *,int *) ;
 int GdipGetImageVerticalResolution (int *,int *) ;
 int GdipGetImageWidth (int *,int *) ;
 int GetDC (int ) ;
 int InvalidParameter ;
 int Ok ;
 int PixelFormat32bppPARGB ;
 int expect (int,int ) ;
 int expectf (int ,int ) ;
 int hwnd ;

__attribute__((used)) static void test_bitmapfromgraphics(void)
{
    GpStatus stat;
    GpGraphics *graphics = ((void*)0);
    HDC hdc = GetDC( hwnd );
    GpBitmap *bitmap = ((void*)0);
    PixelFormat format;
    REAL imageres, graphicsres;
    UINT width, height;

    stat = GdipCreateFromHDC(hdc, &graphics);
    expect(Ok, stat);

    stat = GdipCreateBitmapFromGraphics(12, 13, ((void*)0), &bitmap);
    expect(InvalidParameter, stat);

    stat = GdipCreateBitmapFromGraphics(12, 13, graphics, ((void*)0));
    expect(InvalidParameter, stat);

    stat = GdipCreateBitmapFromGraphics(12, 13, graphics, &bitmap);
    expect(Ok, stat);

    stat = GdipGetImagePixelFormat((GpImage*)bitmap, &format);
    expect(Ok, stat);
    expect(PixelFormat32bppPARGB, format);

    stat = GdipGetDpiX(graphics, &graphicsres);
    expect(Ok, stat);

    stat = GdipGetImageHorizontalResolution((GpImage*)bitmap, &imageres);
    expect(Ok, stat);
    expectf(graphicsres, imageres);

    stat = GdipGetDpiY(graphics, &graphicsres);
    expect(Ok, stat);

    stat = GdipGetImageVerticalResolution((GpImage*)bitmap, &imageres);
    expect(Ok, stat);
    expectf(graphicsres, imageres);

    stat = GdipGetImageWidth((GpImage*)bitmap, &width);
    expect(Ok, stat);
    expect(12, width);

    stat = GdipGetImageHeight((GpImage*)bitmap, &height);
    expect(Ok, stat);
    expect(13, height);

    GdipDeleteGraphics(graphics);
    GdipDisposeImage((GpImage*)bitmap);
}
