
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int X; int Y; } ;
typedef int * HDC ;
typedef int GpStatus ;
typedef TYPE_1__ GpPointF ;
typedef int GpPen ;
typedef int GpGraphics ;
typedef int ARGB ;


 int GdipCreateFromHDC (int *,int **) ;
 int GdipCreatePen1 (int ,float,int ,int **) ;
 int GdipDeleteGraphics (int *) ;
 int GdipDeletePen (int *) ;
 int GdipDrawCurve2 (int *,int *,TYPE_1__*,int,int) ;
 int * GetDC (int ) ;
 int InvalidParameter ;
 int Ok ;
 int ReleaseDC (int ,int *) ;
 int UnitPixel ;
 int expect (int ,int ) ;
 int hwnd ;
 int ok (int ,char*) ;

__attribute__((used)) static void test_GdipDrawCurve2(void)
{
    GpStatus status;
    GpGraphics *graphics = ((void*)0);
    GpPen *pen = ((void*)0);
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

    status = GdipCreatePen1((ARGB)0xffff00ff, 10.0f, UnitPixel, &pen);
    expect(Ok, status);
    ok(pen != ((void*)0), "Expected pen to be initialized\n");


    status = GdipDrawCurve2(((void*)0), ((void*)0), points, 3, 1);
    expect(InvalidParameter, status);

    status = GdipDrawCurve2(graphics, ((void*)0), points, 3, 1);
    expect(InvalidParameter, status);

    status = GdipDrawCurve2(((void*)0), pen, points, 3, 1);
    expect(InvalidParameter, status);


    status = GdipDrawCurve2(graphics, pen, points, -1, 1);
    expect(InvalidParameter, status);

    status = GdipDrawCurve2(graphics, pen, points, 0, 1);
    expect(InvalidParameter, status);

    status = GdipDrawCurve2(graphics, pen, points, 1, 1);
    expect(InvalidParameter, status);


    status = GdipDrawCurve2(graphics, pen, points, 2, 1);
    expect(Ok, status);

    status = GdipDrawCurve2(graphics, pen, points, 3, 2);
    expect(Ok, status);

    status = GdipDrawCurve2(graphics, pen, points, 3, -2);
    expect(Ok, status);

    status = GdipDrawCurve2(graphics, pen, points, 3, 0);
    expect(Ok, status);

    GdipDeletePen(pen);
    GdipDeleteGraphics(graphics);

    ReleaseDC(hwnd, hdc);
}
