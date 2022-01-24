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

/* Variables and functions */
 int /*<<< orphan*/  FillModeAlternate ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,double,double,double,double) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  InvalidParameter ; 
 int /*<<< orphan*/  Ok ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC7(void)
{
    GpPath *path;
    GpPathIterator *iter;
    GpStatus stat;

    FUNC1(FillModeAlternate, &path);
    FUNC0(path, 5.0, 5.0, 100.0, 50.0);

    /* NULL args */
    stat = FUNC2(NULL, NULL);
    FUNC5(InvalidParameter, stat);
    iter = NULL;
    stat = FUNC2(&iter, NULL);
    FUNC5(Ok, stat);
    FUNC6(iter != NULL, "Expected iterator to be created\n");
    FUNC4(iter);
    stat = FUNC2(NULL, path);
    FUNC5(InvalidParameter, stat);
    stat = FUNC4(NULL);
    FUNC5(InvalidParameter, stat);

    /* valid args */
    stat = FUNC2(&iter, path);
    FUNC5(Ok, stat);

    FUNC4(iter);
    FUNC3(path);
}