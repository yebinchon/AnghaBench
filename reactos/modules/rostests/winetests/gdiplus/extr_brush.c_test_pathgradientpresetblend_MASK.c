#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int member_0; int member_1; } ;
typedef  float REAL ;
typedef  int INT ;
typedef  int GpStatus ;
typedef  TYPE_1__ GpPointF ;
typedef  int /*<<< orphan*/  GpPathGradient ;
typedef  int /*<<< orphan*/  GpBrush ;
typedef  int ARGB ;

/* Variables and functions */
 int FUNC0 (TYPE_1__ const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int*,float*,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,int*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int const*,float const*,int) ; 
 int const GenericError ; 
 int const InvalidParameter ; 
 int const Ok ; 
 int const OutOfMemory ; 
 int /*<<< orphan*/  WrapModeClamp ; 
 int /*<<< orphan*/  FUNC5 (int const,int) ; 
 int /*<<< orphan*/  FUNC6 (float const,float) ; 

__attribute__((used)) static void FUNC7(void)
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

    status = FUNC0(path_points+1, 2, WrapModeClamp, &grad);
    FUNC5(Ok, status);

    status = FUNC3(NULL, &count);
    FUNC5(InvalidParameter, status);

    status = FUNC3(grad, NULL);
    FUNC5(InvalidParameter, status);

    status = FUNC3(grad, &count);
    FUNC5(Ok, status);
    FUNC5(0, count);

    status = FUNC2(NULL, res_colors, res_positions, 1);
    FUNC5(InvalidParameter, status);

    status = FUNC2(grad, NULL, res_positions, 1);
    FUNC5(InvalidParameter, status);

    status = FUNC2(grad, res_colors, NULL, 1);
    FUNC5(InvalidParameter, status);

    status = FUNC2(grad, res_colors, res_positions, 0);
    FUNC5(InvalidParameter, status);

    status = FUNC2(grad, res_colors, res_positions, -1);
    FUNC5(OutOfMemory, status);

    status = FUNC2(grad, res_colors, res_positions, 1);
    FUNC5(InvalidParameter, status);

    status = FUNC2(grad, res_colors, res_positions, 2);
    FUNC5(GenericError, status);

    status = FUNC4(NULL, colors, positions, 5);
    FUNC5(InvalidParameter, status);

    status = FUNC4(grad, NULL, positions, 5);
    FUNC5(InvalidParameter, status);

    if (0)
    {
        /* crashes on windows xp */
        status = FUNC4(grad, colors, NULL, 5);
        FUNC5(InvalidParameter, status);
    }

    status = FUNC4(grad, colors, positions, 0);
    FUNC5(InvalidParameter, status);

    status = FUNC4(grad, colors, positions, -1);
    FUNC5(InvalidParameter, status);

    status = FUNC4(grad, colors, positions, 1);
    FUNC5(InvalidParameter, status);

    /* leave off the 0.0 position */
    status = FUNC4(grad, &colors[1], &positions[1], 4);
    FUNC5(InvalidParameter, status);

    /* leave off the 1.0 position */
    status = FUNC4(grad, colors, positions, 4);
    FUNC5(InvalidParameter, status);

    status = FUNC4(grad, colors, positions, 5);
    FUNC5(Ok, status);

    status = FUNC3(grad, &count);
    FUNC5(Ok, status);
    FUNC5(5, count);

    if (0)
    {
        /* Native GdipGetPathGradientPresetBlend seems to copy starting from
         * the end of each array and do no bounds checking. This is so braindead
         * I'm not going to copy it. */

        res_colors[0] = 0xdeadbeef;
        res_positions[0] = 0.3;

        status = FUNC2(grad, &res_colors[1], &res_positions[1], 4);
        FUNC5(Ok, status);

        FUNC5(0xdeadbeef, res_colors[0]);
        FUNC6(0.3, res_positions[0]);

        for (i=1; i<5; i++)
        {
            FUNC5(colors[i], res_colors[i]);
            FUNC6(positions[i], res_positions[i]);
        }

        status = FUNC2(grad, res_colors, res_positions, 6);
        FUNC5(Ok, status);

        for (i=0; i<5; i++)
        {
            FUNC5(colors[i], res_colors[i+1]);
            FUNC6(positions[i], res_positions[i+1]);
        }
    }

    status = FUNC2(grad, res_colors, res_positions, 5);
    FUNC5(Ok, status);

    for (i=0; i<5; i++)
    {
        FUNC5(colors[i], res_colors[i]);
        FUNC6(positions[i], res_positions[i]);
    }

    status = FUNC2(grad, res_colors, res_positions, 0);
    FUNC5(InvalidParameter, status);

    status = FUNC2(grad, res_colors, res_positions, -1);
    FUNC5(OutOfMemory, status);

    status = FUNC2(grad, res_colors, res_positions, 1);
    FUNC5(InvalidParameter, status);

    status = FUNC4(grad, colors, two_positions, 2);
    FUNC5(Ok, status);

    status = FUNC1((GpBrush*)grad);
    FUNC5(Ok, status);
}