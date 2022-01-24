#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  GpStatus ;
typedef  int /*<<< orphan*/  GpPath ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FillModeAlternate ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,double,double,double,double,double,double) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  Ok ; 
 int /*<<< orphan*/  arc_path ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(void)
{
    GpStatus status;
    GpPath* path;

    FUNC2(FillModeAlternate, &path);
    /* Exactly 90 degrees */
    status = FUNC1(path, 100.0, 100.0, 500.0, 700.0, 0.0, 90.0);
    FUNC4(Ok, status);
    /* Over 90 degrees */
    status = FUNC1(path, 100.0, 100.0, 500.0, 700.0, 0.0, 100.0);
    FUNC4(Ok, status);
    /* Negative start angle */
    status = FUNC1(path, 100.0, 100.0, 500.0, 700.0, -80.0, 100.0);
    FUNC4(Ok, status);
    /* Negative sweep angle */
    status = FUNC1(path, 100.0, 100.0, 500.0, 700.0, 80.0, -100.0);
    FUNC4(Ok, status);
    /* More than a full revolution */
    status = FUNC1(path, 100.0, 100.0, 500.0, 700.0, 50.0, -400.0);
    FUNC4(Ok, status);
    /* 0 sweep angle */
    status = FUNC1(path, 100.0, 100.0, 500.0, 700.0, 50.0, 0.0);
    FUNC4(Ok, status);

    FUNC5(path, arc_path, FUNC0(arc_path), FALSE);

    FUNC3(path);
}