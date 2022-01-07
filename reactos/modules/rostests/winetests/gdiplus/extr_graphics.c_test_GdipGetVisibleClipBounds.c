
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HDC ;
typedef int GpStatus ;
typedef int GpRectF ;
typedef int GpRect ;
typedef int GpGraphics ;


 int GdipCreateFromHDC (int ,int **) ;
 int GdipDeleteGraphics (int *) ;
 int GdipGetVisibleClipBounds (int *,int *) ;
 int GdipGetVisibleClipBoundsI (int *,int *) ;
 int GetDC (int ) ;
 int InvalidParameter ;
 int Ok ;
 int ReleaseDC (int ,int ) ;
 int expect (int ,int ) ;
 int hwnd ;
 int ok (int ,char*) ;
 int test_GdipGetVisibleClipBounds_screen () ;
 int test_GdipGetVisibleClipBounds_window () ;

__attribute__((used)) static void test_GdipGetVisibleClipBounds(void)
{
    GpGraphics* graphics = ((void*)0);
    GpRectF rectf;
    GpRect rect;
    HDC hdc = GetDC( hwnd );
    GpStatus status;

    status = GdipCreateFromHDC(hdc, &graphics);
    expect(Ok, status);
    ok(graphics != ((void*)0), "Expected graphics to be initialized\n");


    status = GdipGetVisibleClipBounds(graphics, ((void*)0));
    expect(InvalidParameter, status);

    status = GdipGetVisibleClipBounds(((void*)0), &rectf);
    expect(InvalidParameter, status);

    status = GdipGetVisibleClipBoundsI(graphics, ((void*)0));
    expect(InvalidParameter, status);

    status = GdipGetVisibleClipBoundsI(((void*)0), &rect);
    expect(InvalidParameter, status);

    GdipDeleteGraphics(graphics);
    ReleaseDC(hwnd, hdc);

    test_GdipGetVisibleClipBounds_screen();
    test_GdipGetVisibleClipBounds_window();
}
