
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
typedef int ARGB ;


 int GdipCreatePathGradient (TYPE_1__ const*,int,int ,int **) ;
 int GdipDeleteBrush (int *) ;
 int GdipGetPathGradientPresetBlend (int *,int*,float*,int) ;
 int GdipGetPathGradientPresetBlendCount (int *,int*) ;
 int GdipSetPathGradientPresetBlend (int *,int const*,float const*,int) ;
 int const GenericError ;
 int const InvalidParameter ;
 int const Ok ;
 int const OutOfMemory ;
 int WrapModeClamp ;
 int expect (int const,int) ;
 int expectf (float const,float) ;

__attribute__((used)) static void test_pathgradientpresetblend(void)
{
    static const GpPointF path_points[] = {{0,0}, {3,0}, {0,4}};
    GpStatus status;
    GpPathGradient *grad;
    INT count;
    int i;
    const REAL positions[5] = {0.0f, 0.2f, 0.5f, 0.8f, 1.0f};
    const REAL two_positions[2] = {0.0f, 1.0f};
    const ARGB colors[5] = {0xff0000ff, 0xff00ff00, 0xff00ffff, 0xffff0000, 0xffffffff};
    REAL res_positions[6] = {0.3f, 0.0f, 0.0f, 0.0f, 0.0f};
    ARGB res_colors[6] = {0xdeadbeef, 0, 0, 0, 0};

    status = GdipCreatePathGradient(path_points+1, 2, WrapModeClamp, &grad);
    expect(Ok, status);

    status = GdipGetPathGradientPresetBlendCount(((void*)0), &count);
    expect(InvalidParameter, status);

    status = GdipGetPathGradientPresetBlendCount(grad, ((void*)0));
    expect(InvalidParameter, status);

    status = GdipGetPathGradientPresetBlendCount(grad, &count);
    expect(Ok, status);
    expect(0, count);

    status = GdipGetPathGradientPresetBlend(((void*)0), res_colors, res_positions, 1);
    expect(InvalidParameter, status);

    status = GdipGetPathGradientPresetBlend(grad, ((void*)0), res_positions, 1);
    expect(InvalidParameter, status);

    status = GdipGetPathGradientPresetBlend(grad, res_colors, ((void*)0), 1);
    expect(InvalidParameter, status);

    status = GdipGetPathGradientPresetBlend(grad, res_colors, res_positions, 0);
    expect(InvalidParameter, status);

    status = GdipGetPathGradientPresetBlend(grad, res_colors, res_positions, -1);
    expect(OutOfMemory, status);

    status = GdipGetPathGradientPresetBlend(grad, res_colors, res_positions, 1);
    expect(InvalidParameter, status);

    status = GdipGetPathGradientPresetBlend(grad, res_colors, res_positions, 2);
    expect(GenericError, status);

    status = GdipSetPathGradientPresetBlend(((void*)0), colors, positions, 5);
    expect(InvalidParameter, status);

    status = GdipSetPathGradientPresetBlend(grad, ((void*)0), positions, 5);
    expect(InvalidParameter, status);

    if (0)
    {

        status = GdipSetPathGradientPresetBlend(grad, colors, ((void*)0), 5);
        expect(InvalidParameter, status);
    }

    status = GdipSetPathGradientPresetBlend(grad, colors, positions, 0);
    expect(InvalidParameter, status);

    status = GdipSetPathGradientPresetBlend(grad, colors, positions, -1);
    expect(InvalidParameter, status);

    status = GdipSetPathGradientPresetBlend(grad, colors, positions, 1);
    expect(InvalidParameter, status);


    status = GdipSetPathGradientPresetBlend(grad, &colors[1], &positions[1], 4);
    expect(InvalidParameter, status);


    status = GdipSetPathGradientPresetBlend(grad, colors, positions, 4);
    expect(InvalidParameter, status);

    status = GdipSetPathGradientPresetBlend(grad, colors, positions, 5);
    expect(Ok, status);

    status = GdipGetPathGradientPresetBlendCount(grad, &count);
    expect(Ok, status);
    expect(5, count);

    if (0)
    {




        res_colors[0] = 0xdeadbeef;
        res_positions[0] = 0.3;

        status = GdipGetPathGradientPresetBlend(grad, &res_colors[1], &res_positions[1], 4);
        expect(Ok, status);

        expect(0xdeadbeef, res_colors[0]);
        expectf(0.3, res_positions[0]);

        for (i=1; i<5; i++)
        {
            expect(colors[i], res_colors[i]);
            expectf(positions[i], res_positions[i]);
        }

        status = GdipGetPathGradientPresetBlend(grad, res_colors, res_positions, 6);
        expect(Ok, status);

        for (i=0; i<5; i++)
        {
            expect(colors[i], res_colors[i+1]);
            expectf(positions[i], res_positions[i+1]);
        }
    }

    status = GdipGetPathGradientPresetBlend(grad, res_colors, res_positions, 5);
    expect(Ok, status);

    for (i=0; i<5; i++)
    {
        expect(colors[i], res_colors[i]);
        expectf(positions[i], res_positions[i]);
    }

    status = GdipGetPathGradientPresetBlend(grad, res_colors, res_positions, 0);
    expect(InvalidParameter, status);

    status = GdipGetPathGradientPresetBlend(grad, res_colors, res_positions, -1);
    expect(OutOfMemory, status);

    status = GdipGetPathGradientPresetBlend(grad, res_colors, res_positions, 1);
    expect(InvalidParameter, status);

    status = GdipSetPathGradientPresetBlend(grad, colors, two_positions, 2);
    expect(Ok, status);

    status = GdipDeleteBrush((GpBrush*)grad);
    expect(Ok, status);
}
