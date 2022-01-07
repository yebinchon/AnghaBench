
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * HDC ;
typedef int GpStatus ;
typedef int GpPen ;
typedef int GpGraphics ;
typedef int ARGB ;


 int GdipCreateFromHDC (int *,int **) ;
 int GdipCreatePen1 (int ,float,int ,int **) ;
 int GdipDeleteGraphics (int *) ;
 int GdipDeletePen (int *) ;
 int GdipDrawArcI (int *,int *,int ,int ,int,int,int ,int ) ;
 int * GetDC (int ) ;
 int InvalidParameter ;
 int Ok ;
 int ReleaseDC (int ,int *) ;
 int UnitPixel ;
 int expect (int ,int ) ;
 int hwnd ;
 int ok (int ,char*) ;

__attribute__((used)) static void test_GdipDrawArcI(void)
{
    GpStatus status;
    GpGraphics *graphics = ((void*)0);
    GpPen *pen = ((void*)0);
    HDC hdc = GetDC( hwnd );


    ok(hdc != ((void*)0), "Expected HDC to be initialized\n");

    status = GdipCreateFromHDC(hdc, &graphics);
    expect(Ok, status);
    ok(graphics != ((void*)0), "Expected graphics to be initialized\n");

    status = GdipCreatePen1((ARGB)0xffff00ff, 10.0f, UnitPixel, &pen);
    expect(Ok, status);
    ok(pen != ((void*)0), "Expected pen to be initialized\n");


    status = GdipDrawArcI(((void*)0), ((void*)0), 0, 0, 0, 0, 0, 0);
    expect(InvalidParameter, status);

    status = GdipDrawArcI(graphics, ((void*)0), 0, 0, 1, 1, 0, 0);
    expect(InvalidParameter, status);

    status = GdipDrawArcI(((void*)0), pen, 0, 0, 1, 1, 0, 0);
    expect(InvalidParameter, status);

    status = GdipDrawArcI(graphics, pen, 0, 0, 1, 0, 0, 0);
    expect(InvalidParameter, status);

    status = GdipDrawArcI(graphics, pen, 0, 0, 0, 1, 0, 0);
    expect(InvalidParameter, status);


    status = GdipDrawArcI(graphics, pen, 0, 0, 1, 1, 0, 0);
    expect(Ok, status);

    GdipDeletePen(pen);
    GdipDeleteGraphics(graphics);

    ReleaseDC(hwnd, hdc);
}
