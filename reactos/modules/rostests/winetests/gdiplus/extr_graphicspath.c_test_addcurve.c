
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {double X; double Y; } ;
typedef int GpStatus ;
typedef TYPE_1__ GpPointF ;
typedef int GpPath ;


 int ARRAY_SIZE (int ) ;
 int FALSE ;
 int FillModeAlternate ;
 int GdipAddPathCurve2 (int *,TYPE_1__*,int,double) ;
 int GdipAddPathCurve3 (int *,TYPE_1__*,int,int,int,double) ;
 int GdipAddPathLine (int *,double,double,double,double) ;
 int GdipCreatePath (int ,int **) ;
 int GdipDeletePath (int *) ;
 int GdipResetPath (int *) ;
 int InvalidParameter ;
 int Ok ;
 int addcurve_path ;
 int addcurve_path2 ;
 int addcurve_path3 ;
 int expect (int ,int ) ;
 int ok_path (int *,int ,int ,int ) ;

__attribute__((used)) static void test_addcurve(void)
{
    GpStatus status;
    GpPath *path;
    GpPointF points[4];

    points[0].X = 0.0;
    points[0].Y = 0.0;
    points[1].X = 10.0;
    points[1].Y = 10.0;
    points[2].X = 10.0;
    points[2].Y = 20.0;
    points[3].X = 30.0;
    points[3].Y = 10.0;

    GdipCreatePath(FillModeAlternate, &path);


    status = GdipAddPathCurve2(((void*)0), ((void*)0), 0, 0.0);
    expect(InvalidParameter, status);
    status = GdipAddPathCurve2(path, ((void*)0), 0, 0.0);
    expect(InvalidParameter, status);
    status = GdipAddPathCurve2(path, points, -1, 0.0);
    expect(InvalidParameter, status);
    status = GdipAddPathCurve2(path, points, 1, 1.0);
    expect(InvalidParameter, status);


    status = GdipAddPathCurve2(path, points, 4, 1.0);
    expect(Ok, status);
    ok_path(path, addcurve_path, ARRAY_SIZE(addcurve_path), FALSE);
    GdipDeletePath(path);


    GdipCreatePath(FillModeAlternate, &path);
    GdipAddPathLine(path, 100.0, 120.0, 123.0, 10.0);
    status = GdipAddPathCurve2(path, points, 4, 1.0);
    expect(Ok, status);
    ok_path(path, addcurve_path2, ARRAY_SIZE(addcurve_path2), FALSE);


    GdipResetPath(path);
    status = GdipAddPathCurve3(((void*)0), ((void*)0), 0, 0, 0, 0.0);
    expect(InvalidParameter, status);
    status = GdipAddPathCurve3(path, ((void*)0), 0, 0, 0, 0.0);
    expect(InvalidParameter, status);

    status = GdipAddPathCurve3(path, points, 0, 0, 0, 0.0);
    expect(InvalidParameter, status);
    status = GdipAddPathCurve3(path, points, 4, 0, 0, 0.0);
    expect(InvalidParameter, status);
    status = GdipAddPathCurve3(path, points, 4, 0, 4, 0.0);
    expect(InvalidParameter, status);
    status = GdipAddPathCurve3(path, points, 4, 1, 3, 0.0);
    expect(InvalidParameter, status);
    status = GdipAddPathCurve3(path, points, 4, 1, 0, 0.0);
    expect(InvalidParameter, status);
    status = GdipAddPathCurve3(path, points, 4, 3, 1, 0.0);
    expect(InvalidParameter, status);


    status = GdipAddPathCurve3(path, points, 4, 0, 3, 1.0);
    expect(Ok, status);
    ok_path(path, addcurve_path, ARRAY_SIZE(addcurve_path), FALSE);
    GdipResetPath(path);

    status = GdipAddPathCurve3(path, points, 4, 1, 2, 1.0);
    expect(Ok, status);
    ok_path(path, addcurve_path3, ARRAY_SIZE(addcurve_path3), FALSE);

    GdipDeletePath(path);
}
