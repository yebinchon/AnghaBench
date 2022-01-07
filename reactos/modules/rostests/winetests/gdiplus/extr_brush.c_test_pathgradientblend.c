
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int member_0; int member_1; } ;
typedef float REAL ;
typedef int INT ;
typedef int GpStatus ;
typedef TYPE_1__ GpPointF ;
typedef int GpPathGradient ;
typedef int GpBrush ;


 int GdipCreatePathGradient (TYPE_1__ const*,int,int ,int **) ;
 int GdipDeleteBrush (int *) ;
 int GdipGetPathGradientBlend (int *,float*,float*,int) ;
 int GdipGetPathGradientBlendCount (int *,int*) ;
 int GdipSetPathGradientBlend (int *,float const*,float const*,int) ;
 int InsufficientBuffer ;
 int InvalidParameter ;
 int Ok ;
 int WrapModeClamp ;
 int expect (int,int) ;
 int expectf (float const,float) ;

__attribute__((used)) static void test_pathgradientblend(void)
{
    static const GpPointF path_points[] = {{0,0}, {3,0}, {0,4}};
    GpPathGradient *brush;
    GpStatus status;
    INT count, i;
    const REAL factors[5] = {0.0f, 0.1f, 0.5f, 0.9f, 1.0f};
    const REAL positions[5] = {0.0f, 0.2f, 0.5f, 0.8f, 1.0f};
    REAL res_factors[6] = {0.3f, 0.0f, 0.0f, 0.0f, 0.0f};
    REAL res_positions[6] = {0.3f, 0.0f, 0.0f, 0.0f, 0.0f};

    status = GdipCreatePathGradient(path_points, 3, WrapModeClamp, &brush);
    expect(Ok, status);

    status = GdipGetPathGradientBlendCount(((void*)0), &count);
    expect(InvalidParameter, status);

    status = GdipGetPathGradientBlendCount(brush, ((void*)0));
    expect(InvalidParameter, status);

    status = GdipGetPathGradientBlendCount(brush, &count);
    expect(Ok, status);
    expect(1, count);

    status = GdipGetPathGradientBlend(((void*)0), res_factors, res_positions, 1);
    expect(InvalidParameter, status);

    status = GdipGetPathGradientBlend(brush, ((void*)0), res_positions, 1);
    expect(InvalidParameter, status);

    status = GdipGetPathGradientBlend(brush, res_factors, ((void*)0), 1);
    expect(InvalidParameter, status);

    status = GdipGetPathGradientBlend(brush, res_factors, res_positions, 0);
    expect(InvalidParameter, status);

    status = GdipGetPathGradientBlend(brush, res_factors, res_positions, -1);
    expect(InvalidParameter, status);

    status = GdipGetPathGradientBlend(brush, res_factors, res_positions, 1);
    expect(Ok, status);

    status = GdipGetPathGradientBlend(brush, res_factors, res_positions, 2);
    expect(Ok, status);

    status = GdipSetPathGradientBlend(((void*)0), factors, positions, 5);
    expect(InvalidParameter, status);

    status = GdipSetPathGradientBlend(brush, ((void*)0), positions, 5);
    expect(InvalidParameter, status);

    status = GdipSetPathGradientBlend(brush, factors, ((void*)0), 5);
    expect(InvalidParameter, status);

    status = GdipSetPathGradientBlend(brush, factors, positions, 0);
    expect(InvalidParameter, status);

    status = GdipSetPathGradientBlend(brush, factors, positions, -1);
    expect(InvalidParameter, status);


    status = GdipSetPathGradientBlend(brush, &factors[1], &positions[1], 4);
    expect(InvalidParameter, status);


    status = GdipSetPathGradientBlend(brush, factors, positions, 4);
    expect(InvalidParameter, status);

    status = GdipSetPathGradientBlend(brush, factors, positions, 5);
    expect(Ok, status);

    status = GdipGetPathGradientBlendCount(brush, &count);
    expect(Ok, status);
    expect(5, count);

    status = GdipGetPathGradientBlend(brush, res_factors, res_positions, 4);
    expect(InsufficientBuffer, status);

    status = GdipGetPathGradientBlend(brush, res_factors, res_positions, 5);
    expect(Ok, status);

    for (i=0; i<5; i++)
    {
        expectf(factors[i], res_factors[i]);
        expectf(positions[i], res_positions[i]);
    }

    status = GdipGetPathGradientBlend(brush, res_factors, res_positions, 6);
    expect(Ok, status);

    status = GdipSetPathGradientBlend(brush, factors, positions, 1);
    expect(Ok, status);

    status = GdipGetPathGradientBlendCount(brush, &count);
    expect(Ok, status);
    expect(1, count);

    status = GdipGetPathGradientBlend(brush, res_factors, res_positions, 1);
    expect(Ok, status);

    status = GdipDeleteBrush((GpBrush*)brush);
    expect(Ok, status);
}
