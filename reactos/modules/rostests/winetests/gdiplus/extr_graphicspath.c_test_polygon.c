
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
 int GdipAddPathLine (int *,double,double,double,double) ;
 int GdipAddPathPolygon (int *,TYPE_1__*,int) ;
 int GdipCreatePath (int ,int **) ;
 int GdipDeletePath (int *) ;
 int InvalidParameter ;
 int Ok ;
 int expect (int ,int ) ;
 int ok_path (int *,int ,int ,int ) ;
 int poly_path ;

__attribute__((used)) static void test_polygon(void)
{
    GpStatus status;
    GpPath *path;
    GpPointF points[5];

    points[0].X = 0.0;
    points[0].Y = 0.0;
    points[1].X = 10.0;
    points[1].Y = 10.0;
    points[2].X = 10.0;
    points[2].Y = 20.0;
    points[3].X = 30.0;
    points[3].Y = 10.0;
    points[4].X = 20.0;
    points[4].Y = 0.0;

    GdipCreatePath(FillModeAlternate, &path);


    status = GdipAddPathPolygon(((void*)0), points, 5);
    expect(InvalidParameter, status);
    status = GdipAddPathPolygon(path, ((void*)0), 5);
    expect(InvalidParameter, status);

    status = GdipAddPathPolygon(path, points, 2);
    expect(InvalidParameter, status);


    status = GdipAddPathLine(path, 5.0, 5.0, 6.0, 8.0);
    expect(Ok, status);
    status = GdipAddPathPolygon(path, points, 5);
    expect(Ok, status);

    ok_path(path, poly_path, ARRAY_SIZE(poly_path), FALSE);

    GdipDeletePath(path);
}
