
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * HDC ;
typedef int HBRUSH ;
typedef int GpStatus ;
typedef int GpImage ;
typedef int GpGraphics ;
typedef int GpBitmap ;
typedef int ARGB ;


 int CreateSolidBrush (int ) ;
 int DeleteObject (int ) ;
 int GdipBitmapGetPixel (int *,int,int,int *) ;
 int GdipCreateBitmapFromScan0 (int,int,int,int ,int *,int **) ;
 int GdipDeleteGraphics (int *) ;
 int GdipDisposeImage (int *) ;
 int GdipGetDC (int *,int **) ;
 int GdipGetImageGraphicsContext (int *,int **) ;
 int GdipReleaseDC (int *,int *) ;
 int GdipScaleWorldTransform (int *,double,double,int ) ;
 int MatrixOrderPrepend ;
 int Ok ;
 int PixelFormat24bppRGB ;
 int RGB (int,int ,int ) ;
 int Rectangle (int *,int,int,int,int) ;
 int SelectObject (int *,int ) ;
 int expect (int,int ) ;
 int ok (int ,char*) ;

__attribute__((used)) static void test_getdc_scaled(void)
{
    GpStatus status;
    GpGraphics *graphics = ((void*)0);
    GpBitmap *bitmap = ((void*)0);
    HDC hdc=((void*)0);
    HBRUSH hbrush, holdbrush;
    ARGB color;

    status = GdipCreateBitmapFromScan0(10, 10, 12, PixelFormat24bppRGB, ((void*)0), &bitmap);
    expect(Ok, status);

    status = GdipGetImageGraphicsContext((GpImage*)bitmap, &graphics);
    expect(Ok, status);

    status = GdipScaleWorldTransform(graphics, 2.0, 2.0, MatrixOrderPrepend);
    expect(Ok, status);

    status = GdipGetDC(graphics, &hdc);
    expect(Ok, status);
    ok(hdc != ((void*)0), "got NULL hdc\n");

    hbrush = CreateSolidBrush(RGB(255, 0, 0));

    holdbrush = SelectObject(hdc, hbrush);

    Rectangle(hdc, 2, 2, 6, 6);

    SelectObject(hdc, holdbrush);

    DeleteObject(hbrush);

    status = GdipReleaseDC(graphics, hdc);
    expect(Ok, status);

    GdipDeleteGraphics(graphics);

    status = GdipBitmapGetPixel(bitmap, 3, 3, &color);
    expect(Ok, status);
    expect(0xffff0000, color);

    status = GdipBitmapGetPixel(bitmap, 8, 8, &color);
    expect(Ok, status);
    expect(0xff000000, color);

    GdipDisposeImage((GpImage*)bitmap);
}
