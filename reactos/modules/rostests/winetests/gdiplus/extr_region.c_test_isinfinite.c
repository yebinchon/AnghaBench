
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HDC ;
typedef int GpStatus ;
typedef int GpRegion ;
typedef int GpMatrix ;
typedef int GpGraphics ;
typedef int BOOL ;


 int FALSE ;
 int GdipCreateFromHDC (int ,int **) ;
 int GdipCreateMatrix2 (double,double,double,double,double,double,int **) ;
 int GdipCreateRegion (int **) ;
 int GdipDeleteGraphics (int *) ;
 int GdipDeleteMatrix (int *) ;
 int GdipDeleteRegion (int *) ;
 int GdipIsInfiniteRegion (int *,int *,int *) ;
 int GdipSetWorldTransform (int *,int *) ;
 int GetDC (int ) ;
 int InvalidParameter ;
 int Ok ;
 int ReleaseDC (int ,int ) ;
 int TRUE ;
 int expect (int ,int ) ;

__attribute__((used)) static void test_isinfinite(void)
{
    GpStatus status;
    GpRegion *region;
    GpGraphics *graphics = ((void*)0);
    GpMatrix *m;
    HDC hdc = GetDC(0);
    BOOL res;

    status = GdipCreateFromHDC(hdc, &graphics);
    expect(Ok, status);
    status = GdipCreateRegion(&region);
    expect(Ok, status);

    GdipCreateMatrix2(3.0, 0.0, 0.0, 1.0, 20.0, 30.0, &m);


    status = GdipIsInfiniteRegion(((void*)0), ((void*)0), ((void*)0));
    expect(InvalidParameter, status);
    status = GdipIsInfiniteRegion(region, ((void*)0), ((void*)0));
    expect(InvalidParameter, status);
    status = GdipIsInfiniteRegion(((void*)0), graphics, ((void*)0));
    expect(InvalidParameter, status);
    status = GdipIsInfiniteRegion(((void*)0), ((void*)0), &res);
    expect(InvalidParameter, status);
    status = GdipIsInfiniteRegion(region, ((void*)0), &res);
    expect(InvalidParameter, status);

    res = FALSE;
    status = GdipIsInfiniteRegion(region, graphics, &res);
    expect(Ok, status);
    expect(TRUE, res);


    status = GdipSetWorldTransform(graphics, m);
    expect(Ok, status);

    res = FALSE;
    status = GdipIsInfiniteRegion(region, graphics, &res);
    expect(Ok, status);
    expect(TRUE, res);

    GdipDeleteMatrix(m);
    GdipDeleteRegion(region);
    GdipDeleteGraphics(graphics);
    ReleaseDC(0, hdc);
}
