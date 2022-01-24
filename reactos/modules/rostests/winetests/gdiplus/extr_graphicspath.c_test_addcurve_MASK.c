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
typedef  int /*<<< orphan*/  GpStatus ;
typedef  TYPE_1__ GpPointF ;
typedef  int /*<<< orphan*/  GpPath ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FillModeAlternate ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*,int,double) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*,int,int,int,double) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,double,double,double,double) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  InvalidParameter ; 
 int /*<<< orphan*/  Ok ; 
 int /*<<< orphan*/  addcurve_path ; 
 int /*<<< orphan*/  addcurve_path2 ; 
 int /*<<< orphan*/  addcurve_path3 ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(void)
{
    GpStatus status;
    GpPath *path;
    GpPointF points[4];

    points[0].X = 0.0;
    points[0].Y = 0.0;
    points[1].X = 10.0;
    points[1].Y = 10.0;
    points[2].X = 10.0;
    points[2].Y = 20.0;
    points[3].X = 30.0;
    points[3].Y = 10.0;

    FUNC4(FillModeAlternate, &path);

    /* NULL args */
    status = FUNC1(NULL, NULL, 0, 0.0);
    FUNC7(InvalidParameter, status);
    status = FUNC1(path, NULL, 0, 0.0);
    FUNC7(InvalidParameter, status);
    status = FUNC1(path, points, -1, 0.0);
    FUNC7(InvalidParameter, status);
    status = FUNC1(path, points, 1, 1.0);
    FUNC7(InvalidParameter, status);

    /* add to empty path */
    status = FUNC1(path, points, 4, 1.0);
    FUNC7(Ok, status);
    FUNC8(path, addcurve_path, FUNC0(addcurve_path), FALSE);
    FUNC5(path);

    /* add to notempty path and opened figure */
    FUNC4(FillModeAlternate, &path);
    FUNC3(path, 100.0, 120.0, 123.0, 10.0);
    status = FUNC1(path, points, 4, 1.0);
    FUNC7(Ok, status);
    FUNC8(path, addcurve_path2, FUNC0(addcurve_path2), FALSE);

    /* NULL args */
    FUNC6(path);
    status = FUNC2(NULL, NULL, 0, 0, 0, 0.0);
    FUNC7(InvalidParameter, status);
    status = FUNC2(path, NULL, 0, 0, 0, 0.0);
    FUNC7(InvalidParameter, status);
    /* wrong count, offset.. */
    status = FUNC2(path, points, 0, 0, 0, 0.0);
    FUNC7(InvalidParameter, status);
    status = FUNC2(path, points, 4, 0, 0, 0.0);
    FUNC7(InvalidParameter, status);
    status = FUNC2(path, points, 4, 0, 4, 0.0);
    FUNC7(InvalidParameter, status);
    status = FUNC2(path, points, 4, 1, 3, 0.0);
    FUNC7(InvalidParameter, status);
    status = FUNC2(path, points, 4, 1, 0, 0.0);
    FUNC7(InvalidParameter, status);
    status = FUNC2(path, points, 4, 3, 1, 0.0);
    FUNC7(InvalidParameter, status);

    /* use all points */
    status = FUNC2(path, points, 4, 0, 3, 1.0);
    FUNC7(Ok, status);
    FUNC8(path, addcurve_path, FUNC0(addcurve_path), FALSE);
    FUNC6(path);

    status = FUNC2(path, points, 4, 1, 2, 1.0);
    FUNC7(Ok, status);
    FUNC8(path, addcurve_path3, FUNC0(addcurve_path3), FALSE);

    FUNC5(path);
}