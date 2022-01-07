
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int X; double Y; } ;
typedef int REAL ;
typedef int GpStatus ;
typedef TYPE_1__ GpPointF ;
typedef int GpPath ;


 int ARRAY_SIZE (int ) ;
 int FALSE ;
 int FillModeAlternate ;
 int GdipAddPathLine2 (int *,TYPE_1__*,int) ;
 int GdipClosePathFigure (int *) ;
 int GdipCreatePath (int ,int **) ;
 int GdipDeletePath (int *) ;
 int Ok ;
 int expect (int ,int ) ;
 int line2_path ;
 int ok_path (int *,int ,int ,int ) ;

__attribute__((used)) static void test_line2(void)
{
    GpStatus status;
    GpPath* path;
    int i;
    GpPointF line2_points[9];

    for(i = 0; i < 9; i ++){
        line2_points[i].X = i * 5.0 * (REAL)(i % 2);
        line2_points[i].Y = 50.0 - i * 5.0;
    }

    GdipCreatePath(FillModeAlternate, &path);
    status = GdipAddPathLine2(path, line2_points, 3);
    expect(Ok, status);
    status = GdipAddPathLine2(path, &(line2_points[3]), 3);
    expect(Ok, status);
    status = GdipClosePathFigure(path);
    expect(Ok, status);
    status = GdipAddPathLine2(path, &(line2_points[6]), 3);
    expect(Ok, status);

    ok_path(path, line2_path, ARRAY_SIZE(line2_path), FALSE);

    GdipDeletePath(path);
}
