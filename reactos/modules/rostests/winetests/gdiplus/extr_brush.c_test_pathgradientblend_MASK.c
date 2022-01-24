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

/* Variables and functions */
 int FUNC0 (TYPE_1__ const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,float*,float*,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,int*) ; 
 int FUNC4 (int /*<<< orphan*/ *,float const*,float const*,int) ; 
 int InsufficientBuffer ; 
 int InvalidParameter ; 
 int Ok ; 
 int /*<<< orphan*/  WrapModeClamp ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 (float const,float) ; 

__attribute__((used)) static void FUNC7(void)
{
    static const GpPointF path_points[] = {{0,0}, {3,0}, {0,4}};
    GpPathGradient *brush;
    GpStatus status;
    INT count, i;
    const REAL factors[5] = {0.0f, 0.1f, 0.5f, 0.9f, 1.0f};
    const REAL positions[5] = {0.0f, 0.2f, 0.5f, 0.8f, 1.0f};
    REAL res_factors[6] = {0.3f, 0.0f, 0.0f, 0.0f, 0.0f};
    REAL res_positions[6] = {0.3f, 0.0f, 0.0f, 0.0f, 0.0f};

    status = FUNC0(path_points, 3, WrapModeClamp, &brush);
    FUNC5(Ok, status);

    status = FUNC3(NULL, &count);
    FUNC5(InvalidParameter, status);

    status = FUNC3(brush, NULL);
    FUNC5(InvalidParameter, status);

    status = FUNC3(brush, &count);
    FUNC5(Ok, status);
    FUNC5(1, count);

    status = FUNC2(NULL, res_factors, res_positions, 1);
    FUNC5(InvalidParameter, status);

    status = FUNC2(brush, NULL, res_positions, 1);
    FUNC5(InvalidParameter, status);

    status = FUNC2(brush, res_factors, NULL, 1);
    FUNC5(InvalidParameter, status);

    status = FUNC2(brush, res_factors, res_positions, 0);
    FUNC5(InvalidParameter, status);

    status = FUNC2(brush, res_factors, res_positions, -1);
    FUNC5(InvalidParameter, status);

    status = FUNC2(brush, res_factors, res_positions, 1);
    FUNC5(Ok, status);

    status = FUNC2(brush, res_factors, res_positions, 2);
    FUNC5(Ok, status);

    status = FUNC4(NULL, factors, positions, 5);
    FUNC5(InvalidParameter, status);

    status = FUNC4(brush, NULL, positions, 5);
    FUNC5(InvalidParameter, status);

    status = FUNC4(brush, factors, NULL, 5);
    FUNC5(InvalidParameter, status);

    status = FUNC4(brush, factors, positions, 0);
    FUNC5(InvalidParameter, status);

    status = FUNC4(brush, factors, positions, -1);
    FUNC5(InvalidParameter, status);

    /* leave off the 0.0 position */
    status = FUNC4(brush, &factors[1], &positions[1], 4);
    FUNC5(InvalidParameter, status);

    /* leave off the 1.0 position */
    status = FUNC4(brush, factors, positions, 4);
    FUNC5(InvalidParameter, status);

    status = FUNC4(brush, factors, positions, 5);
    FUNC5(Ok, status);

    status = FUNC3(brush, &count);
    FUNC5(Ok, status);
    FUNC5(5, count);

    status = FUNC2(brush, res_factors, res_positions, 4);
    FUNC5(InsufficientBuffer, status);

    status = FUNC2(brush, res_factors, res_positions, 5);
    FUNC5(Ok, status);

    for (i=0; i<5; i++)
    {
        FUNC6(factors[i], res_factors[i]);
        FUNC6(positions[i], res_positions[i]);
    }

    status = FUNC2(brush, res_factors, res_positions, 6);
    FUNC5(Ok, status);

    status = FUNC4(brush, factors, positions, 1);
    FUNC5(Ok, status);

    status = FUNC3(brush, &count);
    FUNC5(Ok, status);
    FUNC5(1, count);

    status = FUNC2(brush, res_factors, res_positions, 1);
    FUNC5(Ok, status);

    status = FUNC1((GpBrush*)brush);
    FUNC5(Ok, status);
}