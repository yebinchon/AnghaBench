
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GpStatus ;
typedef int GpImageAttributes ;
typedef int GpImage ;
typedef int GpGraphics ;
typedef int GpBitmap ;
typedef int ARGB ;


 int ColorAdjustTypeAny ;
 int ColorAdjustTypeDefault ;
 int FALSE ;
 int GdipBitmapGetPixel (int *,int ,int ,int *) ;
 int GdipBitmapSetPixel (int *,int ,int ,int) ;
 int GdipCreateBitmapFromScan0 (int,int,int ,int ,int *,int **) ;
 int GdipCreateImageAttributes (int **) ;
 int GdipDeleteGraphics (int *) ;
 int GdipDisposeImage (int *) ;
 int GdipDisposeImageAttributes (int *) ;
 int GdipDrawImageRectRectI (int *,int *,int ,int ,int,int,int ,int ,int,int,int ,int *,int *,int *) ;
 int GdipGetImageGraphicsContext (int *,int **) ;
 int GdipResetImageAttributes (int *,int ) ;
 int GdipSetImageAttributesGamma (int *,int ,int ,double) ;
 int InvalidParameter ;
 int Ok ;
 int PixelFormat32bppRGB ;
 int TRUE ;
 int UnitPixel ;
 int color_match (int,int ,int) ;
 int expect (int ,int ) ;
 int ok (int ,char*,int ) ;

__attribute__((used)) static void test_gamma(void)
{
    GpStatus stat;
    GpImageAttributes *imageattr;
    GpBitmap *bitmap1, *bitmap2;
    GpGraphics *graphics;
    ARGB color;

    stat = GdipSetImageAttributesGamma(((void*)0), ColorAdjustTypeDefault, TRUE, 1.0);
    expect(InvalidParameter, stat);

    stat = GdipCreateImageAttributes(&imageattr);
    expect(Ok, stat);

    stat = GdipSetImageAttributesGamma(imageattr, ColorAdjustTypeDefault, TRUE, 1.0);
    expect(Ok, stat);

    stat = GdipSetImageAttributesGamma(imageattr, ColorAdjustTypeAny, TRUE, 1.0);
    expect(InvalidParameter, stat);

    stat = GdipSetImageAttributesGamma(imageattr, ColorAdjustTypeDefault, TRUE, -1.0);
    expect(InvalidParameter, stat);

    stat = GdipSetImageAttributesGamma(imageattr, ColorAdjustTypeDefault, TRUE, 0.0);
    expect(InvalidParameter, stat);

    stat = GdipSetImageAttributesGamma(imageattr, ColorAdjustTypeDefault, TRUE, 0.5);
    expect(Ok, stat);

    stat = GdipSetImageAttributesGamma(imageattr, ColorAdjustTypeDefault, FALSE, 0.0);
    expect(Ok, stat);


    stat = GdipSetImageAttributesGamma(imageattr, ColorAdjustTypeDefault, TRUE, 3.0);
    expect(Ok, stat);

    stat = GdipCreateBitmapFromScan0(1, 1, 0, PixelFormat32bppRGB, ((void*)0), &bitmap1);
    expect(Ok, stat);

    stat = GdipCreateBitmapFromScan0(1, 1, 0, PixelFormat32bppRGB, ((void*)0), &bitmap2);
    expect(Ok, stat);

    stat = GdipBitmapSetPixel(bitmap1, 0, 0, 0xff80ffff);
    expect(Ok, stat);

    stat = GdipGetImageGraphicsContext((GpImage*)bitmap2, &graphics);
    expect(Ok, stat);

    stat = GdipDrawImageRectRectI(graphics, (GpImage*)bitmap1, 0,0,1,1, 0,0,1,1,
        UnitPixel, imageattr, ((void*)0), ((void*)0));
    expect(Ok, stat);

    stat = GdipBitmapGetPixel(bitmap2, 0, 0, &color);
    expect(Ok, stat);
    ok(color_match(0xff20ffff, color, 1), "Expected ff20ffff, got %.8x\n", color);

    stat = GdipResetImageAttributes(imageattr, ColorAdjustTypeDefault);
    expect(Ok, stat);

    stat = GdipDrawImageRectRectI(graphics, (GpImage*)bitmap1, 0,0,1,1, 0,0,1,1,
        UnitPixel, imageattr, ((void*)0), ((void*)0));
    expect(Ok, stat);

    stat = GdipBitmapGetPixel(bitmap2, 0, 0, &color);
    expect(Ok, stat);
    ok(color_match(0xff80ffff, color, 1), "Expected ff80ffff, got %.8x\n", color);

    GdipDeleteGraphics(graphics);
    GdipDisposeImage((GpImage*)bitmap1);
    GdipDisposeImage((GpImage*)bitmap2);
    GdipDisposeImageAttributes(imageattr);
}
