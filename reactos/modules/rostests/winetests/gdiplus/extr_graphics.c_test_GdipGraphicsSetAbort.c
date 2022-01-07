
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HDC ;
typedef int GpStatus ;
typedef int GpGraphics ;


 int GdipCreateFromHDC (int ,int **) ;
 int GdipDeleteGraphics (int *) ;
 int GetDC (int ) ;
 int InvalidParameter ;
 int Ok ;
 int ReleaseDC (int ,int ) ;
 int expect (int ,int ) ;
 int hwnd ;
 int pGdipGraphicsSetAbort (int *,int *) ;
 int win_skip (char*) ;

__attribute__((used)) static void test_GdipGraphicsSetAbort(void)
{
    HDC hdc;
    GpStatus status;
    GpGraphics *graphics;

    if (!pGdipGraphicsSetAbort)
    {
        win_skip("GdipGraphicsSetAbort() is not supported.\n");
        return;
    }

    hdc = GetDC(hwnd);

    status = GdipCreateFromHDC(hdc, &graphics);
    expect(Ok, status);

    status = pGdipGraphicsSetAbort(((void*)0), ((void*)0));
    expect(InvalidParameter, status);

    status = pGdipGraphicsSetAbort(graphics, ((void*)0));
    expect(Ok, status);

    GdipDeleteGraphics(graphics);

    ReleaseDC(hwnd, hdc);
}
