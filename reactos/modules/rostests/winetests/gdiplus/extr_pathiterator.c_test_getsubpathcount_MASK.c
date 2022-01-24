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
typedef  int /*<<< orphan*/  INT ;
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
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int InvalidParameter ; 
 int Ok ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(void)
{
    GpPath *path;
    GpPathIterator *iter;
    GpStatus stat;
    INT count;

    /* NULL args */
    stat = FUNC5(NULL, NULL);
    FUNC7(InvalidParameter, stat);
    stat = FUNC5(NULL, &count);
    FUNC7(InvalidParameter, stat);

    FUNC1(FillModeAlternate, &path);

    /* empty path */
    FUNC2(&iter, path);
    stat = FUNC5(iter, &count);
    FUNC7(Ok, stat);
    FUNC7(0, count);
    FUNC4(iter);

    FUNC0(path, 5.0, 5.0, 100.0, 50.0);

    /* open figure */
    FUNC2(&iter, path);
    stat = FUNC5(iter, &count);
    FUNC7(Ok, stat);
    FUNC7(1, count);
    FUNC4(iter);

    /* manually start new figure */
    FUNC6(path);
    FUNC0(path, 50.0, 50.0, 110.0, 40.0);
    FUNC2(&iter, path);
    stat = FUNC5(iter, &count);
    FUNC7(Ok, stat);
    FUNC7(2, count);
    FUNC4(iter);

    FUNC3(path);
}