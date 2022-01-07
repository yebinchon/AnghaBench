
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
 int GdipIsEmptyRegion (int *,int *,int *) ;
 int GdipSetEmpty (int *) ;
 int GetDC (int ) ;
 int InvalidParameter ;
 int Ok ;
 int ReleaseDC (int ,int ) ;
 int TRUE ;
 int expect (int ,int ) ;

__attribute__((used)) static void test_isempty(void)
{
    GpStatus status;
    GpRegion *region;
    GpGraphics *graphics = ((void*)0);
    HDC hdc = GetDC(0);
    BOOL res;

    status = GdipCreateFromHDC(hdc, &graphics);
    expect(Ok, status);
    status = GdipCreateRegion(&region);
    expect(Ok, status);


    status = GdipIsEmptyRegion(((void*)0), ((void*)0), ((void*)0));
    expect(InvalidParameter, status);
    status = GdipIsEmptyRegion(region, ((void*)0), ((void*)0));
    expect(InvalidParameter, status);
    status = GdipIsEmptyRegion(((void*)0), graphics, ((void*)0));
    expect(InvalidParameter, status);
    status = GdipIsEmptyRegion(((void*)0), ((void*)0), &res);
    expect(InvalidParameter, status);
    status = GdipIsEmptyRegion(region, ((void*)0), &res);
    expect(InvalidParameter, status);


    res = TRUE;
    status = GdipIsEmptyRegion(region, graphics, &res);
    expect(Ok, status);
    expect(FALSE, res);

    status = GdipSetEmpty(region);
    expect(Ok, status);

    res = FALSE;
    status = GdipIsEmptyRegion(region, graphics, &res);
    expect(Ok, status);
    expect(TRUE, res);

    GdipDeleteRegion(region);
    GdipDeleteGraphics(graphics);
    ReleaseDC(0, hdc);
}
