
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int member_0; int member_1; int member_2; int member_3; } ;
typedef int * HDC ;
typedef int GpStatus ;
typedef int GpSolidFill ;
typedef TYPE_1__ GpRectF ;
typedef int GpGraphics ;
typedef int GpBrush ;
typedef int ARGB ;


 int GdipCreateFromHDC (int *,int **) ;
 int GdipCreateSolidFill (int ,int **) ;
 int GdipDeleteBrush (int *) ;
 int GdipDeleteGraphics (int *) ;
 int GdipFillRectangles (int *,int *,TYPE_1__*,int) ;
 int * GetDC (int ) ;
 int InvalidParameter ;
 int Ok ;
 int ReleaseDC (int ,int *) ;
 int expect (int ,int ) ;
 int hwnd ;
 int ok (int ,char*) ;

__attribute__((used)) static void test_GdipFillRectangles(void)
{
    GpStatus status;
    GpGraphics *graphics = ((void*)0);
    GpBrush *brush = ((void*)0);
    HDC hdc = GetDC( hwnd );
    GpRectF rects[2] = {{0,0,10,10}, {10,10,10,10}};

    ok(hdc != ((void*)0), "Expected HDC to be initialized\n");

    status = GdipCreateFromHDC(hdc, &graphics);
    expect(Ok, status);
    ok(graphics != ((void*)0), "Expected graphics to be initialized\n");

    status = GdipCreateSolidFill((ARGB)0xffff00ff, (GpSolidFill**)&brush);
    expect(Ok, status);
    ok(brush != ((void*)0), "Expected brush to be initialized\n");

    status = GdipFillRectangles(((void*)0), brush, rects, 2);
    expect(InvalidParameter, status);

    status = GdipFillRectangles(graphics, ((void*)0), rects, 2);
    expect(InvalidParameter, status);

    status = GdipFillRectangles(graphics, brush, ((void*)0), 2);
    expect(InvalidParameter, status);

    status = GdipFillRectangles(graphics, brush, rects, 0);
    expect(InvalidParameter, status);

    status = GdipFillRectangles(graphics, brush, rects, -1);
    expect(InvalidParameter, status);

    status = GdipFillRectangles(graphics, brush, rects, 1);
    expect(Ok, status);

    status = GdipFillRectangles(graphics, brush, rects, 2);
    expect(Ok, status);

    GdipDeleteBrush(brush);
    GdipDeleteGraphics(graphics);

    ReleaseDC(hwnd, hdc);
}
