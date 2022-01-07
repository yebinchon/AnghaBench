
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int X; int Y; } ;
struct TYPE_5__ {int X; int Y; int Width; int Height; } ;
typedef int REAL ;
typedef int GpStatus ;
typedef TYPE_1__ GpRectF ;
typedef TYPE_2__ GpPointF ;
typedef int GpMatrix ;


 int GdipCreateMatrix3 (TYPE_1__*,TYPE_2__*,int **) ;
 int GdipDeleteMatrix (int *) ;
 int GdipGetMatrixElements (int *,int *) ;
 int Ok ;
 int expect (int ,int ) ;
 int expectf (double,int ) ;

__attribute__((used)) static void test_constructor3(void)
{


    GpMatrix *matrix;
    REAL values[6];
    GpRectF rc;
    GpPointF pt[3];
    GpStatus stat;

    rc.X = 10;
    rc.Y = 10;
    rc.Width = 10;
    rc.Height = 10;

    pt[0].X = 10;
    pt[0].Y = 10;
    pt[1].X = 20;
    pt[1].Y = 10;
    pt[2].X = 10;
    pt[2].Y = 20;

    stat = GdipCreateMatrix3(&rc, pt, &matrix);
    expect(Ok, stat);

    stat = GdipGetMatrixElements(matrix, values);
    expect(Ok, stat);

    expectf(1.0, values[0]);
    expectf(0.0, values[1]);
    expectf(0.0, values[2]);
    expectf(1.0, values[3]);
    expectf(0.0, values[4]);
    expectf(0.0, values[5]);

    GdipDeleteMatrix(matrix);

    pt[0].X = 20;
    pt[0].Y = 10;
    pt[1].X = 40;
    pt[1].Y = 10;
    pt[2].X = 20;
    pt[2].Y = 20;

    stat = GdipCreateMatrix3(&rc, pt, &matrix);
    expect(Ok, stat);

    stat = GdipGetMatrixElements(matrix, values);
    expect(Ok, stat);

    expectf(2.0, values[0]);
    expectf(0.0, values[1]);
    expectf(0.0, values[2]);
    expectf(1.0, values[3]);
    expectf(0.0, values[4]);
    expectf(0.0, values[5]);

    GdipDeleteMatrix(matrix);

    pt[0].X = 10;
    pt[0].Y = 20;
    pt[1].X = 20;
    pt[1].Y = 30;
    pt[2].X = 10;
    pt[2].Y = 30;

    stat = GdipCreateMatrix3(&rc, pt, &matrix);
    expect(Ok, stat);

    stat = GdipGetMatrixElements(matrix, values);
    expect(Ok, stat);

    expectf(1.0, values[0]);
    expectf(1.0, values[1]);
    expectf(0.0, values[2]);
    expectf(1.0, values[3]);
    expectf(0.0, values[4]);
    expectf(0.0, values[5]);

    GdipDeleteMatrix(matrix);
}
