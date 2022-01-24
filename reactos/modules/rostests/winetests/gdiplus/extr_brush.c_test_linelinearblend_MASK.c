#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {double X; double Y; } ;
typedef  float REAL ;
typedef  int INT ;
typedef  int GpStatus ;
typedef  TYPE_1__ GpPointF ;
typedef  int /*<<< orphan*/  GpLineGradient ;
typedef  int /*<<< orphan*/  GpBrush ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,float*,float*,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,int*) ; 
 int FUNC4 (int /*<<< orphan*/ *,double,double) ; 
 int InvalidParameter ; 
 int Ok ; 
 int /*<<< orphan*/  WrapModeTile ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 (double,float) ; 

__attribute__((used)) static void FUNC7(void)
{
    GpLineGradient *brush;
    GpStatus status;
    GpPointF pt1, pt2;
    INT count=10;
    REAL res_factors[3] = {0.3f};
    REAL res_positions[3] = {0.3f};

    status = FUNC4(NULL, 0.6, 0.8);
    FUNC5(InvalidParameter, status);

    pt1.X = pt1.Y = 1.0;
    pt2.X = pt2.Y = 100.0;
    status = FUNC0(&pt1, &pt2, 0, 0, WrapModeTile, &brush);
    FUNC5(Ok, status);


    status = FUNC4(brush, 0.6, 0.8);
    FUNC5(Ok, status);

    status = FUNC3(brush, &count);
    FUNC5(Ok, status);
    FUNC5(3, count);

    status = FUNC2(brush, res_factors, res_positions, 3);
    FUNC5(Ok, status);
    FUNC6(0.0, res_factors[0]);
    FUNC6(0.0, res_positions[0]);
    FUNC6(0.8, res_factors[1]);
    FUNC6(0.6, res_positions[1]);
    FUNC6(0.0, res_factors[2]);
    FUNC6(1.0, res_positions[2]);


    status = FUNC4(brush, 0.0, 0.8);
    FUNC5(Ok, status);

    status = FUNC3(brush, &count);
    FUNC5(Ok, status);
    FUNC5(2, count);

    status = FUNC2(brush, res_factors, res_positions, 3);
    FUNC5(Ok, status);
    FUNC6(0.8, res_factors[0]);
    FUNC6(0.0, res_positions[0]);
    FUNC6(0.0, res_factors[1]);
    FUNC6(1.0, res_positions[1]);


    status = FUNC4(brush, 1.0, 0.8);
    FUNC5(Ok, status);

    status = FUNC3(brush, &count);
    FUNC5(Ok, status);
    FUNC5(2, count);

    status = FUNC2(brush, res_factors, res_positions, 3);
    FUNC5(Ok, status);
    FUNC6(0.0, res_factors[0]);
    FUNC6(0.0, res_positions[0]);
    FUNC6(0.8, res_factors[1]);
    FUNC6(1.0, res_positions[1]);

    status = FUNC1((GpBrush*)brush);
    FUNC5(Ok, status);
}