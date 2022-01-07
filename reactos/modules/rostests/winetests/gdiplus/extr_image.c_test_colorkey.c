
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
 int ColorAdjustTypeCount ;
 int ColorAdjustTypeDefault ;
 int GdipBitmapGetPixel (int *,int,int,int *) ;
 int GdipBitmapSetPixel (int *,int,int,int) ;
 int GdipCreateBitmapFromScan0 (int,int,int ,int ,int *,int **) ;
 int GdipCreateImageAttributes (int **) ;
 int GdipDeleteGraphics (int *) ;
 int GdipDisposeImage (int *) ;
 int GdipDisposeImageAttributes (int *) ;
 int GdipDrawImageRectRectI (int *,int *,int ,int ,int,int,int ,int ,int,int,int ,int *,int *,int *) ;
 int GdipGetImageGraphicsContext (int *,int **) ;
 int GdipResetImageAttributes (int *,int ) ;
 int GdipSetImageAttributesColorKeys (int *,int ,int ,int,int) ;
 int InvalidParameter ;
 int Ok ;
 int PixelFormat32bppARGB ;
 int TRUE ;
 int UnitPixel ;
 int color_match (int,int ,int) ;
 int expect (int ,int ) ;
 int ok (int ,char*,int ) ;

__attribute__((used)) static void test_colorkey(void)
{
    GpStatus stat;
    GpImageAttributes *imageattr;
    GpBitmap *bitmap1, *bitmap2;
    GpGraphics *graphics;
    ARGB color;

    stat = GdipSetImageAttributesColorKeys(((void*)0), ColorAdjustTypeDefault, TRUE, 0xff405060, 0xff708090);
    expect(InvalidParameter, stat);

    stat = GdipCreateImageAttributes(&imageattr);
    expect(Ok, stat);

    stat = GdipSetImageAttributesColorKeys(imageattr, ColorAdjustTypeCount, TRUE, 0xff405060, 0xff708090);
    expect(InvalidParameter, stat);

    stat = GdipSetImageAttributesColorKeys(imageattr, ColorAdjustTypeAny, TRUE, 0xff405060, 0xff708090);
    expect(InvalidParameter, stat);

    stat = GdipSetImageAttributesColorKeys(imageattr, ColorAdjustTypeDefault, TRUE, 0xff405060, 0xff708090);
    expect(Ok, stat);

    stat = GdipCreateBitmapFromScan0(2, 2, 0, PixelFormat32bppARGB, ((void*)0), &bitmap1);
    expect(Ok, stat);

    stat = GdipCreateBitmapFromScan0(2, 2, 0, PixelFormat32bppARGB, ((void*)0), &bitmap2);
    expect(Ok, stat);

    stat = GdipBitmapSetPixel(bitmap1, 0, 0, 0x20405060);
    expect(Ok, stat);

    stat = GdipBitmapSetPixel(bitmap1, 0, 1, 0x40506070);
    expect(Ok, stat);

    stat = GdipBitmapSetPixel(bitmap1, 1, 0, 0x60708090);
    expect(Ok, stat);

    stat = GdipBitmapSetPixel(bitmap1, 1, 1, 0xffffffff);
    expect(Ok, stat);

    stat = GdipGetImageGraphicsContext((GpImage*)bitmap2, &graphics);
    expect(Ok, stat);

    stat = GdipDrawImageRectRectI(graphics, (GpImage*)bitmap1, 0,0,2,2, 0,0,2,2,
 UnitPixel, imageattr, ((void*)0), ((void*)0));
    expect(Ok, stat);

    stat = GdipBitmapGetPixel(bitmap2, 0, 0, &color);
    expect(Ok, stat);
    ok(color_match(0x00000000, color, 1), "Expected 00000000, got %.8x\n", color);

    stat = GdipBitmapGetPixel(bitmap2, 0, 1, &color);
    expect(Ok, stat);
    ok(color_match(0x00000000, color, 1), "Expected 00000000, got %.8x\n", color);

    stat = GdipBitmapGetPixel(bitmap2, 1, 0, &color);
    expect(Ok, stat);
    ok(color_match(0x00000000, color, 1), "Expected 00000000, got %.8x\n", color);

    stat = GdipBitmapGetPixel(bitmap2, 1, 1, &color);
    expect(Ok, stat);
    ok(color_match(0xffffffff, color, 1), "Expected ffffffff, got %.8x\n", color);

    stat = GdipResetImageAttributes(imageattr, ColorAdjustTypeDefault);
    expect(Ok, stat);

    stat = GdipDrawImageRectRectI(graphics, (GpImage*)bitmap1, 0,0,2,2, 0,0,2,2,
 UnitPixel, imageattr, ((void*)0), ((void*)0));
    expect(Ok, stat);

    stat = GdipBitmapGetPixel(bitmap2, 0, 0, &color);
    expect(Ok, stat);
    ok(color_match(0x20405060, color, 1), "Expected 20405060, got %.8x\n", color);

    stat = GdipBitmapGetPixel(bitmap2, 0, 1, &color);
    expect(Ok, stat);
    ok(color_match(0x40506070, color, 1), "Expected 40506070, got %.8x\n", color);

    stat = GdipBitmapGetPixel(bitmap2, 1, 0, &color);
    expect(Ok, stat);
    ok(color_match(0x60708090, color, 1), "Expected 60708090, got %.8x\n", color);

    stat = GdipBitmapGetPixel(bitmap2, 1, 1, &color);
    expect(Ok, stat);
    ok(color_match(0xffffffff, color, 1), "Expected ffffffff, got %.8x\n", color);


    GdipDeleteGraphics(graphics);
    GdipDisposeImage((GpImage*)bitmap1);
    GdipDisposeImage((GpImage*)bitmap2);
    GdipDisposeImageAttributes(imageattr);
}
