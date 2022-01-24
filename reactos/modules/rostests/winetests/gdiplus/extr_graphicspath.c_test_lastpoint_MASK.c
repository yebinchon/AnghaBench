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
typedef  int GpStatus ;
typedef  TYPE_1__ GpPointF ;
typedef  int /*<<< orphan*/  GpPath ;

/* Variables and functions */
 int /*<<< orphan*/  FillModeAlternate ; 
 int FUNC0 (int /*<<< orphan*/ *,double,double,double,double) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  InvalidParameter ; 
 int /*<<< orphan*/  Ok ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC5(void)
{
    GpStatus status;
    GpPath *path;
    GpPointF ptf;

    FUNC1(FillModeAlternate, &path);
    status = FUNC0(path, 5.0, 5.0, 100.0, 50.0);
    FUNC4(Ok, status);

    /* invalid args */
    status = FUNC3(NULL, &ptf);
    FUNC4(InvalidParameter, status);
    status = FUNC3(path, NULL);
    FUNC4(InvalidParameter, status);
    status = FUNC3(NULL, NULL);
    FUNC4(InvalidParameter, status);

    status = FUNC3(path, &ptf);
    FUNC4(Ok, status);
    FUNC4(TRUE, (ptf.X == 5.0) && (ptf.Y == 55.0));

    FUNC2(path);
}