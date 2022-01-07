
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {double X; double Y; } ;
typedef int GpStatus ;
typedef TYPE_1__ GpPointF ;
typedef int GpPath ;


 int ARRAY_SIZE (int ) ;
 int FALSE ;
 int FillModeAlternate ;
 int GdipAddPathClosedCurve2 (int *,TYPE_1__*,int,double) ;
 int GdipCreatePath (int ,int **) ;
 int GdipDeletePath (int *) ;
 int InvalidParameter ;
 int Ok ;
 int addclosedcurve_path ;
 int expect (int ,int ) ;
 int ok_path (int *,int ,int ,int ) ;

__attribute__((used)) static void test_addclosedcurve(void)
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


    status = GdipAddPathClosedCurve2(((void*)0), ((void*)0), 0, 0.0);
    expect(InvalidParameter, status);
    status = GdipAddPathClosedCurve2(path, ((void*)0), 0, 0.0);
    expect(InvalidParameter, status);
    status = GdipAddPathClosedCurve2(path, points, -1, 0.0);
    expect(InvalidParameter, status);
    status = GdipAddPathClosedCurve2(path, points, 1, 1.0);
    expect(InvalidParameter, status);


    status = GdipAddPathClosedCurve2(path, points, 4, 1.0);
    expect(Ok, status);
    ok_path(path, addclosedcurve_path, ARRAY_SIZE(addclosedcurve_path), FALSE);
    GdipDeletePath(path);
}
