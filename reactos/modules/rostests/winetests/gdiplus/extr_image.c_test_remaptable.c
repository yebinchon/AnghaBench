
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int Argb; } ;
struct TYPE_7__ {int Argb; } ;
struct TYPE_9__ {TYPE_2__ newColor; TYPE_1__ oldColor; } ;
typedef int GpStatus ;
typedef int GpImageAttributes ;
typedef int GpImage ;
typedef int GpGraphics ;
typedef int GpBitmap ;
typedef TYPE_3__ ColorMap ;
typedef int ARGB ;


 int ColorAdjustTypeAny ;
 int ColorAdjustTypeCount ;
 int ColorAdjustTypeDefault ;
 int FALSE ;
 TYPE_3__* GdipAlloc (int) ;
 int GdipBitmapGetPixel (int *,int ,int ,int *) ;
 int GdipBitmapSetPixel (int *,int ,int ,int) ;
 int GdipCreateBitmapFromScan0 (int,int,int ,int ,int *,int **) ;
 int GdipCreateImageAttributes (int **) ;
 int GdipDeleteGraphics (int *) ;
 int GdipDisposeImage (int *) ;
 int GdipDisposeImageAttributes (int *) ;
 int GdipDrawImageRectRectI (int *,int *,int ,int ,int,int,int ,int ,int,int,int ,int *,int *,int *) ;
 int GdipFree (TYPE_3__*) ;
 int GdipGetImageGraphicsContext (int *,int **) ;
 int GdipResetImageAttributes (int *,int ) ;
 int GdipSetImageAttributesRemapTable (int *,int ,int ,int,TYPE_3__*) ;
 int InvalidParameter ;
 int Ok ;
 int PixelFormat32bppRGB ;
 int TRUE ;
 int UnitPixel ;
 int color_match (int,int ,int) ;
 int expect (int ,int ) ;
 int ok (int ,char*,int ) ;

__attribute__((used)) static void test_remaptable(void)
{
    GpStatus stat;
    GpImageAttributes *imageattr;
    GpBitmap *bitmap1, *bitmap2;
    GpGraphics *graphics;
    ARGB color;
    ColorMap *map;

    map = GdipAlloc(sizeof(ColorMap));

    map->oldColor.Argb = 0xff00ff00;
    map->newColor.Argb = 0xffff00ff;

    stat = GdipSetImageAttributesRemapTable(((void*)0), ColorAdjustTypeDefault, TRUE, 1, map);
    expect(InvalidParameter, stat);

    stat = GdipCreateImageAttributes(&imageattr);
    expect(Ok, stat);

    stat = GdipSetImageAttributesRemapTable(imageattr, ColorAdjustTypeDefault, TRUE, 1, ((void*)0));
    expect(InvalidParameter, stat);

    stat = GdipSetImageAttributesRemapTable(imageattr, ColorAdjustTypeCount, TRUE, 1, map);
    expect(InvalidParameter, stat);

    stat = GdipSetImageAttributesRemapTable(imageattr, ColorAdjustTypeAny, TRUE, 1, map);
    expect(InvalidParameter, stat);

    stat = GdipSetImageAttributesRemapTable(imageattr, ColorAdjustTypeDefault, TRUE, 0, map);
    expect(InvalidParameter, stat);

    stat = GdipSetImageAttributesRemapTable(imageattr, ColorAdjustTypeDefault, FALSE, 0, ((void*)0));
    expect(Ok, stat);

    stat = GdipSetImageAttributesRemapTable(imageattr, ColorAdjustTypeDefault, TRUE, 1, map);
    expect(Ok, stat);

    stat = GdipCreateBitmapFromScan0(1, 1, 0, PixelFormat32bppRGB, ((void*)0), &bitmap1);
    expect(Ok, stat);

    stat = GdipCreateBitmapFromScan0(1, 1, 0, PixelFormat32bppRGB, ((void*)0), &bitmap2);
    expect(Ok, stat);

    stat = GdipBitmapSetPixel(bitmap1, 0, 0, 0xff00ff00);
    expect(Ok, stat);

    stat = GdipGetImageGraphicsContext((GpImage*)bitmap2, &graphics);
    expect(Ok, stat);

    stat = GdipDrawImageRectRectI(graphics, (GpImage*)bitmap1, 0,0,1,1, 0,0,1,1,
 UnitPixel, imageattr, ((void*)0), ((void*)0));
    expect(Ok, stat);

    stat = GdipBitmapGetPixel(bitmap2, 0, 0, &color);
    expect(Ok, stat);
    ok(color_match(0xffff00ff, color, 1), "Expected ffff00ff, got %.8x\n", color);

    stat = GdipResetImageAttributes(imageattr, ColorAdjustTypeDefault);
    expect(Ok, stat);

    stat = GdipDrawImageRectRectI(graphics, (GpImage*)bitmap1, 0,0,1,1, 0,0,1,1,
        UnitPixel, imageattr, ((void*)0), ((void*)0));
    expect(Ok, stat);

    stat = GdipBitmapGetPixel(bitmap2, 0, 0, &color);
    expect(Ok, stat);
    ok(color_match(0xff00ff00, color, 1), "Expected ff00ff00, got %.8x\n", color);

    GdipDeleteGraphics(graphics);
    GdipDisposeImage((GpImage*)bitmap1);
    GdipDisposeImage((GpImage*)bitmap2);
    GdipDisposeImageAttributes(imageattr);
    GdipFree(map);
}
