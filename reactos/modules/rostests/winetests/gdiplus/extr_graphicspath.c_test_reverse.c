
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int X; double Y; } ;
typedef int REAL ;
typedef int INT ;
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
 int GdipReversePath (int *) ;
 int InvalidParameter ;
 int Ok ;
 int expect (int ,int ) ;
 int ok_path (int *,int ,int ,int ) ;
 int reverse_path ;

__attribute__((used)) static void test_reverse(void)
{
    GpStatus status;
    GpPath *path;
    GpPointF pts[7];
    INT i;

    for(i = 0; i < 7; i++){
        pts[i].X = i * 5.0 * (REAL)(i % 2);
        pts[i].Y = 50.0 - i * 5.0;
    }

    GdipCreatePath(FillModeAlternate, &path);


    status = GdipReversePath(((void*)0));
    expect(InvalidParameter, status);


    status = GdipReversePath(path);
    expect(Ok, status);

    GdipAddPathLine2(path, pts, 4);
    GdipClosePathFigure(path);
    GdipAddPathLine2(path, &(pts[4]), 3);

    status = GdipReversePath(path);
    expect(Ok, status);
    ok_path(path, reverse_path, ARRAY_SIZE(reverse_path), FALSE);

    GdipDeletePath(path);
}
