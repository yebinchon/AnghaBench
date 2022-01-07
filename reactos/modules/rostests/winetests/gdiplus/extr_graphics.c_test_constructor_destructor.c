
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * HDC ;
typedef int GpStatus ;
typedef int GpGraphics ;


 int GdipCreateFromHDC (int *,int **) ;
 int GdipCreateFromHWND (int *,int **) ;
 int GdipCreateFromHWNDICM (int *,int **) ;
 int GdipDeleteGraphics (int *) ;
 int * GetDC (int ) ;
 int InvalidParameter ;
 int Ok ;
 int OutOfMemory ;
 int ReleaseDC (int ,int *) ;
 int expect (int ,int ) ;
 int hwnd ;

__attribute__((used)) static void test_constructor_destructor(void)
{
    GpStatus stat;
    GpGraphics *graphics = ((void*)0);
    HDC hdc = GetDC( hwnd );

    stat = GdipCreateFromHDC(((void*)0), &graphics);
    expect(OutOfMemory, stat);
    stat = GdipDeleteGraphics(graphics);
    expect(InvalidParameter, stat);

    stat = GdipCreateFromHDC(hdc, &graphics);
    expect(Ok, stat);
    stat = GdipDeleteGraphics(graphics);
    expect(Ok, stat);

    stat = GdipCreateFromHWND(((void*)0), &graphics);
    expect(Ok, stat);
    stat = GdipDeleteGraphics(graphics);
    expect(Ok, stat);

    stat = GdipCreateFromHWNDICM(((void*)0), &graphics);
    expect(Ok, stat);
    stat = GdipDeleteGraphics(graphics);
    expect(Ok, stat);

    stat = GdipDeleteGraphics(((void*)0));
    expect(InvalidParameter, stat);
    ReleaseDC(hwnd, hdc);
}
