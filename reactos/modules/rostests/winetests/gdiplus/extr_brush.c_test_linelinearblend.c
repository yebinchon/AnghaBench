
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {double X; double Y; } ;
typedef float REAL ;
typedef int INT ;
typedef int GpStatus ;
typedef TYPE_1__ GpPointF ;
typedef int GpLineGradient ;
typedef int GpBrush ;


 int GdipCreateLineBrush (TYPE_1__*,TYPE_1__*,int ,int ,int ,int **) ;
 int GdipDeleteBrush (int *) ;
 int GdipGetLineBlend (int *,float*,float*,int) ;
 int GdipGetLineBlendCount (int *,int*) ;
 int GdipSetLineLinearBlend (int *,double,double) ;
 int InvalidParameter ;
 int Ok ;
 int WrapModeTile ;
 int expect (int,int) ;
 int expectf (double,float) ;

__attribute__((used)) static void test_linelinearblend(void)
{
    GpLineGradient *brush;
    GpStatus status;
    GpPointF pt1, pt2;
    INT count=10;
    REAL res_factors[3] = {0.3f};
    REAL res_positions[3] = {0.3f};

    status = GdipSetLineLinearBlend(((void*)0), 0.6, 0.8);
    expect(InvalidParameter, status);

    pt1.X = pt1.Y = 1.0;
    pt2.X = pt2.Y = 100.0;
    status = GdipCreateLineBrush(&pt1, &pt2, 0, 0, WrapModeTile, &brush);
    expect(Ok, status);


    status = GdipSetLineLinearBlend(brush, 0.6, 0.8);
    expect(Ok, status);

    status = GdipGetLineBlendCount(brush, &count);
    expect(Ok, status);
    expect(3, count);

    status = GdipGetLineBlend(brush, res_factors, res_positions, 3);
    expect(Ok, status);
    expectf(0.0, res_factors[0]);
    expectf(0.0, res_positions[0]);
    expectf(0.8, res_factors[1]);
    expectf(0.6, res_positions[1]);
    expectf(0.0, res_factors[2]);
    expectf(1.0, res_positions[2]);


    status = GdipSetLineLinearBlend(brush, 0.0, 0.8);
    expect(Ok, status);

    status = GdipGetLineBlendCount(brush, &count);
    expect(Ok, status);
    expect(2, count);

    status = GdipGetLineBlend(brush, res_factors, res_positions, 3);
    expect(Ok, status);
    expectf(0.8, res_factors[0]);
    expectf(0.0, res_positions[0]);
    expectf(0.0, res_factors[1]);
    expectf(1.0, res_positions[1]);


    status = GdipSetLineLinearBlend(brush, 1.0, 0.8);
    expect(Ok, status);

    status = GdipGetLineBlendCount(brush, &count);
    expect(Ok, status);
    expect(2, count);

    status = GdipGetLineBlend(brush, res_factors, res_positions, 3);
    expect(Ok, status);
    expectf(0.0, res_factors[0]);
    expectf(0.0, res_positions[0]);
    expectf(0.8, res_factors[1]);
    expectf(1.0, res_positions[1]);

    status = GdipDeleteBrush((GpBrush*)brush);
    expect(Ok, status);
}
