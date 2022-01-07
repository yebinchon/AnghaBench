
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int X; int Y; } ;
typedef int * HDC ;
typedef int GpStatus ;
typedef int GpPointF ;
typedef TYPE_1__ GpPoint ;
typedef int GpPen ;
typedef int GpGraphics ;
typedef int ARGB ;


 TYPE_1__* GdipAlloc (int) ;
 int GdipCreateFromHDC (int *,int **) ;
 int GdipCreatePen1 (int ,float,int ,int **) ;
 int GdipDeleteGraphics (int *) ;
 int GdipDeletePen (int *) ;
 int GdipDrawLinesI (int *,int *,TYPE_1__*,int) ;
 int GdipFree (TYPE_1__*) ;
 int * GetDC (int ) ;
 int InvalidParameter ;
 int Ok ;
 int ReleaseDC (int ,int *) ;
 int UnitPixel ;
 int expect (int ,int ) ;
 int hwnd ;
 int ok (int ,char*) ;

__attribute__((used)) static void test_GdipDrawLinesI(void)
{
    GpStatus status;
    GpGraphics *graphics = ((void*)0);
    GpPen *pen = ((void*)0);
    GpPoint *ptf = ((void*)0);
    HDC hdc = GetDC( hwnd );


    ok(hdc != ((void*)0), "Expected HDC to be initialized\n");

    status = GdipCreateFromHDC(hdc, &graphics);
    expect(Ok, status);
    ok(graphics != ((void*)0), "Expected graphics to be initialized\n");

    status = GdipCreatePen1((ARGB)0xffff00ff, 10.0f, UnitPixel, &pen);
    expect(Ok, status);
    ok(pen != ((void*)0), "Expected pen to be initialized\n");


    ptf = GdipAlloc(2 * sizeof(GpPointF));

    ptf[0].X = 1;
    ptf[0].Y = 1;

    ptf[1].X = 2;
    ptf[1].Y = 2;


    status = GdipDrawLinesI(((void*)0), ((void*)0), ((void*)0), 0);
    expect(InvalidParameter, status);

    status = GdipDrawLinesI(graphics, pen, ptf, 0);
    expect(InvalidParameter, status);

    status = GdipDrawLinesI(graphics, ((void*)0), ptf, 2);
    expect(InvalidParameter, status);

    status = GdipDrawLinesI(((void*)0), pen, ptf, 2);
    expect(InvalidParameter, status);


    status = GdipDrawLinesI(graphics, pen, ptf, 2);
    expect(Ok, status);

    GdipFree(ptf);
    GdipDeletePen(pen);
    GdipDeleteGraphics(graphics);

    ReleaseDC(hwnd, hdc);
}
