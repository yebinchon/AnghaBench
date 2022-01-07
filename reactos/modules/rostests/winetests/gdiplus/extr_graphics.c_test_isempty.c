
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HDC ;
typedef int GpStatus ;
typedef int GpRegion ;
typedef int GpGraphics ;
typedef int BOOL ;


 int FALSE ;
 int GdipCreateFromHDC (int ,int **) ;
 int GdipCreateRegion (int **) ;
 int GdipDeleteGraphics (int *) ;
 int GdipDeleteRegion (int *) ;
 int GdipIsClipEmpty (int *,int *) ;
 int GetDC (int ) ;
 int InvalidParameter ;
 int Ok ;
 int ReleaseDC (int ,int ) ;
 int TRUE ;
 int expect (int ,int ) ;
 int hwnd ;

__attribute__((used)) static void test_isempty(void)
{
    GpStatus status;
    GpGraphics *graphics = ((void*)0);
    HDC hdc = GetDC( hwnd );
    GpRegion *clip;
    BOOL res;

    status = GdipCreateFromHDC(hdc, &graphics);
    expect(Ok, status);

    status = GdipCreateRegion(&clip);
    expect(Ok, status);


    status = GdipIsClipEmpty(((void*)0), ((void*)0));
    expect(InvalidParameter, status);
    status = GdipIsClipEmpty(graphics, ((void*)0));
    expect(InvalidParameter, status);
    status = GdipIsClipEmpty(((void*)0), &res);
    expect(InvalidParameter, status);


    res = TRUE;
    status = GdipIsClipEmpty(graphics, &res);
    expect(Ok, status);
    expect(FALSE, res);

    GdipDeleteRegion(clip);

    GdipDeleteGraphics(graphics);
    ReleaseDC(hwnd, hdc);
}
