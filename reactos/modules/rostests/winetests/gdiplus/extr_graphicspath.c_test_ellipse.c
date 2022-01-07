
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
 int GdipAddPathEllipse (int *,double,double,double,double) ;
 int GdipAddPathLine2 (int *,TYPE_1__*,int) ;
 int GdipClosePathFigure (int *) ;
 int GdipCreatePath (int ,int **) ;
 int GdipDeletePath (int *) ;
 int Ok ;
 int ellipse_path ;
 int expect (int ,int ) ;
 int ok_path (int *,int ,int ,int ) ;

__attribute__((used)) static void test_ellipse(void)
{
    GpStatus status;
    GpPath *path;
    GpPointF points[2];

    points[0].X = 7.0;
    points[0].Y = 11.0;
    points[1].X = 13.0;
    points[1].Y = 17.0;

    GdipCreatePath(FillModeAlternate, &path);
    status = GdipAddPathEllipse(path, 10.0, 100.0, 20.0, 50.5);
    expect(Ok, status);
    GdipAddPathLine2(path, points, 2);
    status = GdipAddPathEllipse(path, 10.0, 200.0, -5.0, -10.0);
    expect(Ok, status);
    GdipClosePathFigure(path);
    status = GdipAddPathEllipse(path, 10.0, 300.0, 0.0, 1.0);
    expect(Ok, status);

    ok_path(path, ellipse_path, ARRAY_SIZE(ellipse_path), FALSE);

    GdipDeletePath(path);
}
