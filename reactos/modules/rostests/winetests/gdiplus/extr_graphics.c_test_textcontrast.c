
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int HDC ;
typedef int GpStatus ;
typedef int GpGraphics ;


 int GdipCreateFromHDC (int ,int **) ;
 int GdipDeleteGraphics (int *) ;
 int GdipGetTextContrast (int *,int *) ;
 int GetDC (int ) ;
 int InvalidParameter ;
 int Ok ;
 int ReleaseDC (int ,int ) ;
 int expect (int,int ) ;
 int hwnd ;

__attribute__((used)) static void test_textcontrast(void)
{
    GpStatus status;
    HDC hdc = GetDC( hwnd );
    GpGraphics *graphics;
    UINT contrast;

    status = GdipGetTextContrast(((void*)0), ((void*)0));
    expect(InvalidParameter, status);

    status = GdipCreateFromHDC(hdc, &graphics);
    expect(Ok, status);

    status = GdipGetTextContrast(graphics, ((void*)0));
    expect(InvalidParameter, status);
    status = GdipGetTextContrast(graphics, &contrast);
    expect(Ok, status);
    expect(4, contrast);

    GdipDeleteGraphics(graphics);
    ReleaseDC(hwnd, hdc);
}
