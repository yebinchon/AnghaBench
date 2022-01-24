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
typedef  int INT ;
typedef  int GpStatus ;
typedef  int /*<<< orphan*/  GpPathIterator ;
typedef  int /*<<< orphan*/  GpPath ;
typedef  int BOOL ;

/* Variables and functions */
 int FALSE ; 
 int /*<<< orphan*/  FillModeAlternate ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,double,double,double,double) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int*) ; 
 int FUNC7 (int /*<<< orphan*/ *,int*,int /*<<< orphan*/ *,int*) ; 
 int InvalidParameter ; 
 int Ok ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC8 (int,int) ; 

__attribute__((used)) static void FUNC9(void)
{
    GpPath *path, *retpath;
    GpPathIterator *iter;
    GpStatus stat;
    BOOL closed;
    INT count, result;

    FUNC2(FillModeAlternate, &path);

    /* NULL args */
    FUNC2(FillModeAlternate, &retpath);
    FUNC3(&iter, path);
    stat = FUNC7(NULL, NULL, NULL, NULL);
    FUNC8(InvalidParameter, stat);
    stat = FUNC7(iter, NULL, NULL, NULL);
    FUNC8(InvalidParameter, stat);
    stat = FUNC7(NULL, &result, NULL, NULL);
    FUNC8(InvalidParameter, stat);
    stat = FUNC7(iter, &result, NULL, &closed);
    FUNC8(Ok, stat);
    stat = FUNC7(iter, NULL, NULL, &closed);
    FUNC8(InvalidParameter, stat);
    stat = FUNC7(iter, NULL, retpath, NULL);
    FUNC8(InvalidParameter, stat);
    stat = FUNC7(iter, &result, retpath, NULL);
    FUNC8(InvalidParameter, stat);
    FUNC5(iter);
    FUNC4(retpath);

    /* empty path */
    FUNC2(FillModeAlternate, &retpath);
    FUNC3(&iter, path);
    result = -2;
    closed = TRUE;
    stat = FUNC7(iter, &result, retpath, &closed);
    FUNC8(Ok, stat);
    FUNC8(0, result);
    FUNC8(TRUE, closed);
    count = -1;
    FUNC6(retpath, &count);
    FUNC8(0, count);
    FUNC5(iter);
    FUNC4(retpath);

    /* open figure */
    FUNC0(path, 5.0, 5.0, 100.0, 50.0);

    FUNC2(FillModeAlternate, &retpath);
    FUNC3(&iter, path);
    result = -2;
    closed = TRUE;
    stat = FUNC7(iter, &result, retpath, &closed);
    FUNC8(Ok, stat);
    FUNC8(2, result);
    FUNC8(FALSE, closed);
    count = -1;
    FUNC6(retpath, &count);
    FUNC8(2, count);
    /* subsequent call */
    result = -2;
    closed = TRUE;
    stat = FUNC7(iter, &result, retpath, &closed);
    FUNC8(Ok, stat);
    FUNC8(0, result);
    FUNC8(TRUE, closed);
    count = -1;
    FUNC6(retpath, &count);
    FUNC8(2, count);
    FUNC5(iter);

    /* closed figure, check does it extend retpath or reset it */
    FUNC0(retpath, 50.0, 55.0, 200.0, 150.0);

    FUNC1(path);
    FUNC0(path, 50.0, 55.0, 200.0, 150.0);
    FUNC1(path);

    FUNC3(&iter, path);
    result = -2;
    closed = FALSE;
    stat = FUNC7(iter, &result, retpath, &closed);
    FUNC8(Ok, stat);
    FUNC8(2, result);
    FUNC8(TRUE, closed);
    count = -1;
    FUNC6(retpath, &count);
    FUNC8(2, count);
    /* subsequent call */
    result = -2;
    closed = FALSE;
    stat = FUNC7(iter, &result, retpath, &closed);
    FUNC8(Ok, stat);
    FUNC8(2, result);
    FUNC8(TRUE, closed);
    count = -1;
    FUNC6(retpath, &count);
    FUNC8(2, count);
    result = -2;
    closed = FALSE;
    stat = FUNC7(iter, &result, retpath, &closed);
    FUNC8(Ok, stat);
    FUNC8(0, result);
    FUNC8(TRUE, closed);
    count = -1;
    FUNC6(retpath, &count);
    FUNC8(2, count);
    FUNC5(iter);

    FUNC4(retpath);
    FUNC4(path);
}