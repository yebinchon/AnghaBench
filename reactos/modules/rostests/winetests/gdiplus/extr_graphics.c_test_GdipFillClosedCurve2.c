
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int X; int Y; } ;
typedef int * HDC ;
typedef int GpStatus ;
typedef int GpSolidFill ;
typedef TYPE_1__ GpPointF ;
typedef int GpGraphics ;
typedef int GpBrush ;
typedef int ARGB ;


 int FillModeAlternate ;
 int GdipCreateFromHDC (int *,int **) ;
 int GdipCreateSolidFill (int ,int **) ;
 int GdipDeleteBrush (int *) ;
 int GdipDeleteGraphics (int *) ;
 int GdipFillClosedCurve2 (int *,int *,TYPE_1__*,int,double,int ) ;
 int * GetDC (int ) ;
 int InvalidParameter ;
 int Ok ;
 int ReleaseDC (int ,int *) ;
 int expect (int ,int ) ;
 int hwnd ;
 int ok (int ,char*) ;

__attribute__((used)) static void test_GdipFillClosedCurve2(void)
{
    GpStatus status;
    GpGraphics *graphics = ((void*)0);
    GpSolidFill *brush = ((void*)0);
    HDC hdc = GetDC( hwnd );
    GpPointF points[3];

    points[0].X = 0;
    points[0].Y = 0;

    points[1].X = 40;
    points[1].Y = 20;

    points[2].X = 10;
    points[2].Y = 40;


    ok(hdc != ((void*)0), "Expected HDC to be initialized\n");

    status = GdipCreateFromHDC(hdc, &graphics);
    expect(Ok, status);
    ok(graphics != ((void*)0), "Expected graphics to be initialized\n");

    GdipCreateSolidFill((ARGB)0xdeadbeef, &brush);


    status = GdipFillClosedCurve2(((void*)0), ((void*)0), ((void*)0), 3, 0.5, FillModeAlternate);
    expect(InvalidParameter, status);

    status = GdipFillClosedCurve2(graphics, ((void*)0), ((void*)0), 3, 0.5, FillModeAlternate);
    expect(InvalidParameter, status);

    status = GdipFillClosedCurve2(((void*)0), (GpBrush*)brush, ((void*)0), 3, 0.5, FillModeAlternate);
    expect(InvalidParameter, status);

    status = GdipFillClosedCurve2(((void*)0), ((void*)0), points, 3, 0.5, FillModeAlternate);
    expect(InvalidParameter, status);

    status = GdipFillClosedCurve2(graphics, (GpBrush*)brush, ((void*)0), 3, 0.5, FillModeAlternate);
    expect(InvalidParameter, status);

    status = GdipFillClosedCurve2(graphics, ((void*)0), points, 3, 0.5, FillModeAlternate);
    expect(InvalidParameter, status);

    status = GdipFillClosedCurve2(((void*)0), (GpBrush*)brush, points, 3, 0.5, FillModeAlternate);
    expect(InvalidParameter, status);


    status = GdipFillClosedCurve2(graphics, (GpBrush*)brush, points, -1, 0.5, FillModeAlternate);
    expect(InvalidParameter, status);

    status = GdipFillClosedCurve2(graphics, (GpBrush*)brush, points, 0, 0.5, FillModeAlternate);
    expect(InvalidParameter, status);


    status = GdipFillClosedCurve2(graphics, (GpBrush*)brush, points, 1, 0.5, FillModeAlternate);
    expect(Ok, status);

    status = GdipFillClosedCurve2(graphics, (GpBrush*)brush, points, 2, 0.5, FillModeAlternate);
    expect(Ok, status);

    status = GdipFillClosedCurve2(graphics, (GpBrush*)brush, points, 3, 0.5, FillModeAlternate);
    expect(Ok, status);

    GdipDeleteGraphics(graphics);
    GdipDeleteBrush((GpBrush*)brush);

    ReleaseDC(hwnd, hdc);
}
