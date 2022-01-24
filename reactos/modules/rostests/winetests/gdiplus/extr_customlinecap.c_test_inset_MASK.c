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
typedef  scalar_t__ REAL ;
typedef  int /*<<< orphan*/  GpStatus ;
typedef  int /*<<< orphan*/  GpPath ;
typedef  int /*<<< orphan*/  GpCustomLineCap ;

/* Variables and functions */
 int /*<<< orphan*/  FillModeAlternate ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,double,double,double,double) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,double,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  InvalidParameter ; 
 int /*<<< orphan*/  LineCapFlat ; 
 int /*<<< orphan*/  Ok ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (double,scalar_t__) ; 

__attribute__((used)) static void FUNC8(void)
{
    GpCustomLineCap *custom;
    GpPath *path;
    REAL inset;
    GpStatus stat;

    stat = FUNC2(FillModeAlternate, &path);
    FUNC6(Ok, stat);
    stat = FUNC0(path, 5.0, 5.0, 10.0, 10.0);
    FUNC6(Ok, stat);

    stat = FUNC1(NULL, path, LineCapFlat, 0.0, &custom);
    FUNC6(Ok, stat);

    /* NULL args */
    stat = FUNC5(NULL, NULL);
    FUNC6(InvalidParameter, stat);
    stat = FUNC5(NULL, &inset);
    FUNC6(InvalidParameter, stat);
    stat = FUNC5(custom, NULL);
    FUNC6(InvalidParameter, stat);
    /* valid args */
    inset = (REAL)0xdeadbeef;
    stat = FUNC5(custom, &inset);
    FUNC6(Ok, stat);
    FUNC7(0.0, inset);

    FUNC3(custom);
    FUNC4(path);
}