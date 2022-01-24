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
struct TYPE_3__ {double X; double Y; } ;
typedef  int /*<<< orphan*/  GpStatus ;
typedef  TYPE_1__ GpPointF ;
typedef  int /*<<< orphan*/  GpPath ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FillModeAlternate ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,double,double,double,double) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  InvalidParameter ; 
 int /*<<< orphan*/  Ok ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  poly_path ; 

__attribute__((used)) static void FUNC7(void)
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

    FUNC3(FillModeAlternate, &path);

    /* NULL args */
    status = FUNC2(NULL, points, 5);
    FUNC5(InvalidParameter, status);
    status = FUNC2(path, NULL, 5);
    FUNC5(InvalidParameter, status);
    /* Polygon should have 3 points at least */
    status = FUNC2(path, points, 2);
    FUNC5(InvalidParameter, status);

    /* to test how it prolongs not empty path */
    status = FUNC1(path, 5.0, 5.0, 6.0, 8.0);
    FUNC5(Ok, status);
    status = FUNC2(path, points, 5);
    FUNC5(Ok, status);
    /* check resulting path */
    FUNC6(path, poly_path, FUNC0(poly_path), FALSE);

    FUNC4(path);
}