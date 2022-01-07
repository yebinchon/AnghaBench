
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HDC ;
typedef int GpWrapMode ;
typedef int GpTexture ;
typedef int GpStatus ;
typedef int GpImage ;
typedef int GpGraphics ;
typedef int GpBrush ;
typedef int GpBitmap ;


 int GdipCreateBitmapFromGraphics (int,int,int *,int **) ;
 int GdipCreateFromHDC (int ,int **) ;
 int GdipCreateTexture (int *,int ,int **) ;
 int GdipDeleteBrush (int *) ;
 int GdipDeleteGraphics (int *) ;
 int GdipDisposeImage (int *) ;
 int GdipGetTextureWrapMode (int *,int *) ;
 int GdipSetTextureWrapMode (int *,int ) ;
 int GetDC (int ) ;
 int InvalidParameter ;
 int Ok ;
 int ReleaseDC (int ,int ) ;
 int WrapModeClamp ;
 int WrapModeTile ;
 int expect (int ,int ) ;

__attribute__((used)) static void test_texturewrap(void)
{
    GpStatus status;
    GpTexture *texture;
    GpGraphics *graphics = ((void*)0);
    GpBitmap *bitmap;
    HDC hdc = GetDC(0);
    GpWrapMode wrap;

    status = GdipCreateFromHDC(hdc, &graphics);
    expect(Ok, status);
    status = GdipCreateBitmapFromGraphics(1, 1, graphics, &bitmap);
    expect(Ok, status);

    status = GdipCreateTexture((GpImage*)bitmap, WrapModeTile, &texture);
    expect(Ok, status);


    status = GdipGetTextureWrapMode(((void*)0), ((void*)0));
    expect(InvalidParameter, status);
    status = GdipGetTextureWrapMode(texture, ((void*)0));
    expect(InvalidParameter, status);
    status = GdipGetTextureWrapMode(((void*)0), &wrap);
    expect(InvalidParameter, status);


    wrap = WrapModeClamp;
    status = GdipGetTextureWrapMode(texture, &wrap);
    expect(Ok, status);
    expect(WrapModeTile, wrap);

    wrap = WrapModeClamp;
    status = GdipSetTextureWrapMode(texture, wrap);
    expect(Ok, status);
    wrap = WrapModeTile;
    status = GdipGetTextureWrapMode(texture, &wrap);
    expect(Ok, status);
    expect(WrapModeClamp, wrap);

    status = GdipDeleteBrush((GpBrush*)texture);
    expect(Ok, status);
    status = GdipDisposeImage((GpImage*)bitmap);
    expect(Ok, status);
    status = GdipDeleteGraphics(graphics);
    expect(Ok, status);
    ReleaseDC(0, hdc);
}
