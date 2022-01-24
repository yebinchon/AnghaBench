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
typedef  int /*<<< orphan*/  GpPathIterator ;
typedef  int /*<<< orphan*/  GpPath ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FillModeAlternate ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,double,double,double,double) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,double,double,double,double) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  InvalidParameter ; 
 int /*<<< orphan*/  Ok ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(void)
{
    GpPath *path;
    GpPathIterator *iter;
    GpStatus stat;
    BOOL hasCurve;

    FUNC2(FillModeAlternate, &path);
    FUNC1(path, 5.0, 5.0, 100.0, 50.0);

    stat = FUNC3(&iter, path);
    FUNC7(Ok, stat);

    /* NULL args
       BOOL out argument is local in wrapper class method,
       so it always has not-NULL address */
    stat = FUNC6(NULL, &hasCurve);
    FUNC7(InvalidParameter, stat);

    /* valid args */
    stat = FUNC6(iter, &hasCurve);
    FUNC7(Ok, stat);
    FUNC7(FALSE, hasCurve);

    FUNC5(iter);

    stat = FUNC0(path, 0.0, 0.0, 35.0, 70.0);
    FUNC7(Ok, stat);

    stat = FUNC3(&iter, path);
    FUNC7(Ok, stat);

    stat = FUNC6(iter, &hasCurve);
    FUNC7(Ok, stat);
    FUNC7(TRUE, hasCurve);

    FUNC5(iter);
    FUNC4(path);
}