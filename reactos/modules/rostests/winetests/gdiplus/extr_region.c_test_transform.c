
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {double X; double Y; double Width; double Height; } ;
typedef int HDC ;
typedef int GpStatus ;
typedef int GpRegion ;
typedef TYPE_1__ GpRectF ;
typedef int GpPath ;
typedef int GpMatrix ;
typedef int GpGraphics ;
typedef int DWORD ;
typedef int BOOL ;


 int CombineModeReplace ;
 int FALSE ;
 int FillModeAlternate ;
 int GdipAddPathEllipse (int *,double,double,double,double) ;
 int GdipCombineRegionPath (int *,int *,int ) ;
 int GdipCombineRegionRect (int *,TYPE_1__*,int ) ;
 int GdipCreateFromHDC (int ,int **) ;
 int GdipCreateMatrix (int **) ;
 int GdipCreatePath (int ,int **) ;
 int GdipCreateRegion (int **) ;
 int GdipDeleteGraphics (int *) ;
 int GdipDeleteMatrix (int *) ;
 int GdipDeletePath (int *) ;
 int GdipDeleteRegion (int *) ;
 int GdipIsEqualRegion (int *,int *,int *,int *) ;
 int GdipResetPath (int *) ;
 int GdipRotateMatrix (int *,double,int ) ;
 int GdipScaleMatrix (int *,double,double,int ) ;
 int GdipSetEmpty (int *) ;
 int GdipTransformRegion (int *,int *) ;
 int GetDC (int ) ;
 int InvalidParameter ;
 int MatrixOrderAppend ;
 int Ok ;
 int ReleaseDC (int ,int ) ;
 int expect (int,int ) ;
 int get_region_type (int *) ;
 int ok (int ,char*) ;

__attribute__((used)) static void test_transform(void)
{
    GpRegion *region, *region2;
    GpMatrix *matrix;
    GpGraphics *graphics;
    GpPath *path;
    GpRectF rectf;
    GpStatus status;
    HDC hdc = GetDC(0);
    BOOL res;
    DWORD type;

    status = GdipCreateFromHDC(hdc, &graphics);
    expect(Ok, status);

    status = GdipCreatePath(FillModeAlternate, &path);
    expect(Ok, status);

    status = GdipCreateRegion(&region);
    expect(Ok, status);
    status = GdipCreateRegion(&region2);
    expect(Ok, status);

    status = GdipCreateMatrix(&matrix);
    expect(Ok, status);
    status = GdipScaleMatrix(matrix, 2.0, 3.0, MatrixOrderAppend);
    expect(Ok, status);


    status = GdipTransformRegion(((void*)0), matrix);
    expect(InvalidParameter, status);

    status = GdipTransformRegion(region, ((void*)0));
    expect(InvalidParameter, status);


    status = GdipTransformRegion(region, matrix);
    expect(Ok, status);

    res = FALSE;
    status = GdipIsEqualRegion(region, region2, graphics, &res);
    expect(Ok, status);
    ok(res, "Expected to be equal.\n");
    type = get_region_type(region);
    expect(0x10000003 , type);


    status = GdipSetEmpty(region);
    expect(Ok, status);
    status = GdipTransformRegion(region, matrix);
    expect(Ok, status);

    status = GdipSetEmpty(region2);
    expect(Ok, status);

    res = FALSE;
    status = GdipIsEqualRegion(region, region2, graphics, &res);
    expect(Ok, status);
    ok(res, "Expected to be equal.\n");
    type = get_region_type(region);
    expect(0x10000002 , type);


    rectf.X = 10.0;
    rectf.Y = 0.0;
    rectf.Width = rectf.Height = 100.0;
    status = GdipCombineRegionRect(region, &rectf, CombineModeReplace);
    expect(Ok, status);
    rectf.X = 20.0;
    rectf.Y = 0.0;
    rectf.Width = 200.0;
    rectf.Height = 300.0;
    status = GdipCombineRegionRect(region2, &rectf, CombineModeReplace);
    expect(Ok, status);
    status = GdipTransformRegion(region, matrix);
    expect(Ok, status);
    res = FALSE;
    status = GdipIsEqualRegion(region, region2, graphics, &res);
    expect(Ok, status);
    ok(res, "Expected to be equal.\n");
    type = get_region_type(region);
    expect(0x10000000 , type);


    status = GdipAddPathEllipse(path, 0.0, 10.0, 100.0, 150.0);
    expect(Ok, status);
    status = GdipCombineRegionPath(region, path, CombineModeReplace);
    expect(Ok, status);
    status = GdipResetPath(path);
    expect(Ok, status);
    status = GdipAddPathEllipse(path, 0.0, 30.0, 200.0, 450.0);
    expect(Ok, status);
    status = GdipCombineRegionPath(region2, path, CombineModeReplace);
    expect(Ok, status);
    status = GdipTransformRegion(region, matrix);
    expect(Ok, status);
    res = FALSE;
    status = GdipIsEqualRegion(region, region2, graphics, &res);
    expect(Ok, status);
    ok(res, "Expected to be equal.\n");
    type = get_region_type(region);
    expect(0x10000001 , type);


    rectf.X = 10.0;
    rectf.Y = 0.0;
    rectf.Width = rectf.Height = 100.0;
    status = GdipCombineRegionRect(region, &rectf, CombineModeReplace);
    expect(Ok, status);
    status = GdipRotateMatrix(matrix, 45.0, MatrixOrderAppend);
    expect(Ok, status);
    status = GdipTransformRegion(region, matrix);
    expect(Ok, status);
    type = get_region_type(region);
    expect(0x10000001 , type);

    status = GdipDeleteRegion(region);
    expect(Ok, status);
    status = GdipDeleteRegion(region2);
    expect(Ok, status);
    status = GdipDeleteGraphics(graphics);
    expect(Ok, status);
    status = GdipDeletePath(path);
    expect(Ok, status);
    status = GdipDeleteMatrix(matrix);
    expect(Ok, status);
    ReleaseDC(0, hdc);
}
