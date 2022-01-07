
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int InterpolationMode ;
typedef int * HDC ;
typedef int GpStatus ;
typedef int GpGraphics ;


 int GdipCreateFromHDC (int *,int **) ;
 int GdipDeleteGraphics (int *) ;
 int GdipGetInterpolationMode (int *,int *) ;
 int GdipSetInterpolationMode (int *,scalar_t__) ;
 int * GetDC (int ) ;
 scalar_t__ InterpolationModeBilinear ;
 scalar_t__ InterpolationModeDefault ;
 scalar_t__ InterpolationModeHighQuality ;
 scalar_t__ InterpolationModeHighQualityBicubic ;
 scalar_t__ InterpolationModeInvalid ;
 scalar_t__ InterpolationModeLowQuality ;
 scalar_t__ InterpolationModeNearestNeighbor ;
 scalar_t__ InvalidParameter ;
 scalar_t__ Ok ;
 int ReleaseDC (int ,int *) ;
 int expect (scalar_t__,int ) ;
 int hwnd ;
 int ok (int ,char*) ;

__attribute__((used)) static void test_get_set_interpolation(void)
{
    GpGraphics *graphics;
    HDC hdc = GetDC( hwnd );
    GpStatus status;
    InterpolationMode mode;

    ok(hdc != ((void*)0), "Expected HDC to be initialized\n");
    status = GdipCreateFromHDC(hdc, &graphics);
    expect(Ok, status);
    ok(graphics != ((void*)0), "Expected graphics to be initialized\n");

    status = GdipGetInterpolationMode(((void*)0), &mode);
    expect(InvalidParameter, status);

    if (0)
    {

        status = GdipGetInterpolationMode(graphics, ((void*)0));
        expect(InvalidParameter, status);
    }

    status = GdipSetInterpolationMode(((void*)0), InterpolationModeNearestNeighbor);
    expect(InvalidParameter, status);


    status = GdipSetInterpolationMode(graphics, InterpolationModeHighQualityBicubic+1);
    expect(InvalidParameter, status);

    status = GdipSetInterpolationMode(graphics, InterpolationModeInvalid);
    expect(InvalidParameter, status);

    status = GdipGetInterpolationMode(graphics, &mode);
    expect(Ok, status);
    expect(InterpolationModeBilinear, mode);

    status = GdipSetInterpolationMode(graphics, InterpolationModeNearestNeighbor);
    expect(Ok, status);

    status = GdipGetInterpolationMode(graphics, &mode);
    expect(Ok, status);
    expect(InterpolationModeNearestNeighbor, mode);

    status = GdipSetInterpolationMode(graphics, InterpolationModeDefault);
    expect(Ok, status);

    status = GdipGetInterpolationMode(graphics, &mode);
    expect(Ok, status);
    expect(InterpolationModeBilinear, mode);

    status = GdipSetInterpolationMode(graphics, InterpolationModeLowQuality);
    expect(Ok, status);

    status = GdipGetInterpolationMode(graphics, &mode);
    expect(Ok, status);
    expect(InterpolationModeBilinear, mode);

    status = GdipSetInterpolationMode(graphics, InterpolationModeHighQuality);
    expect(Ok, status);

    status = GdipGetInterpolationMode(graphics, &mode);
    expect(Ok, status);
    expect(InterpolationModeHighQualityBicubic, mode);

    GdipDeleteGraphics(graphics);

    ReleaseDC(hwnd, hdc);
}
