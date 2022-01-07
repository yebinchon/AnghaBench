
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HDC ;
typedef int GpStatus ;
typedef int GpPath ;
typedef int GpGraphics ;
typedef int BOOL ;


 int CombineModeReplace ;
 int FALSE ;
 int FillModeAlternate ;
 int GdipAddPathRectangle (int *,double,double,double,double) ;
 int GdipCreateFromHDC (int ,int **) ;
 int GdipCreatePath (int ,int **) ;
 int GdipDeleteGraphics (int *) ;
 int GdipDeletePath (int *) ;
 int GdipIsVisiblePathPoint (int *,double,double,int *,int *) ;
 int GdipSetClipRect (int *,double,double,double,double,int ) ;
 int GetDC (int ) ;
 int InvalidParameter ;
 int Ok ;
 int ReleaseDC (int ,int ) ;
 int TRUE ;
 int expect (int ,int ) ;

__attribute__((used)) static void test_isvisible(void)
{
    GpPath *path;
    GpGraphics *graphics = ((void*)0);
    HDC hdc = GetDC(0);
    BOOL result;
    GpStatus status;

    status = GdipCreateFromHDC(hdc, &graphics);
    expect(Ok, status);
    status = GdipCreatePath(FillModeAlternate, &path);
    expect(Ok, status);


    status = GdipIsVisiblePathPoint(((void*)0), 0.0, 0.0, ((void*)0), ((void*)0));
    expect(InvalidParameter, status);
    status = GdipIsVisiblePathPoint(path, 0.0, 0.0, ((void*)0), ((void*)0));
    expect(InvalidParameter, status);
    status = GdipIsVisiblePathPoint(path, 0.0, 0.0, ((void*)0), ((void*)0));
    expect(InvalidParameter, status);
    status = GdipIsVisiblePathPoint(path, 0.0, 0.0, graphics, ((void*)0));
    expect(InvalidParameter, status);


    result = TRUE;
    status = GdipIsVisiblePathPoint(path, 0.0, 0.0, ((void*)0), &result);
    expect(Ok, status);
    expect(FALSE, result);

    status = GdipAddPathRectangle(path, 0.0, 0.0, 10.0, 10.0);
    expect(Ok, status);
    result = FALSE;
    status = GdipIsVisiblePathPoint(path, 0.0, 0.0, ((void*)0), &result);
    expect(Ok, status);
    expect(TRUE, result);
    result = TRUE;
    status = GdipIsVisiblePathPoint(path, 11.0, 11.0, ((void*)0), &result);
    expect(Ok, status);
    expect(FALSE, result);

    status = GdipSetClipRect(graphics, 5.0, 5.0, 5.0, 5.0, CombineModeReplace);
    expect(Ok, status);
    result = FALSE;
    status = GdipIsVisiblePathPoint(path, 0.0, 0.0, graphics, &result);
    expect(Ok, status);
    expect(TRUE, result);

    GdipDeletePath(path);
    GdipDeleteGraphics(graphics);
    ReleaseDC(0, hdc);
}
