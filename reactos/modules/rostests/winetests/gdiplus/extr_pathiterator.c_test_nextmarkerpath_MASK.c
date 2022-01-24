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

/* Variables and functions */
 int /*<<< orphan*/  FillModeAlternate ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,double,double,double,double) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,double,double,double,double) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int*) ; 
 int FUNC7 (int /*<<< orphan*/ *,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int InvalidParameter ; 
 int Ok ; 
 int /*<<< orphan*/  FUNC9 (int,int) ; 

__attribute__((used)) static void FUNC10(void)
{
    GpPath *path, *retpath;
    GpPathIterator *iter;
    GpStatus stat;
    INT result, count;

    FUNC2(FillModeAlternate, &path);

    /* NULL */
    stat = FUNC7(NULL, NULL, NULL);
    FUNC9(InvalidParameter, stat);
    stat = FUNC7(NULL, &result, NULL);
    FUNC9(InvalidParameter, stat);
    stat = FUNC7(NULL, &result, path);
    FUNC9(InvalidParameter, stat);

    FUNC1(path, 5.0, 5.0, 100.0, 50.0);

    /* no markers */
    FUNC2(FillModeAlternate, &retpath);
    FUNC3(&iter, path);
    result = -1;
    stat = FUNC7(iter, &result, retpath);
    FUNC9(Ok, stat);
    FUNC9(4, result);
    count = -1;
    FUNC6(retpath, &count);
    FUNC9(4, count);
    result = -1;
    stat = FUNC7(iter, &result, retpath);
    FUNC9(Ok, stat);
    FUNC9(0, result);
    count = -1;
    FUNC6(retpath, &count);
    FUNC9(4, count);
    FUNC5(iter);
    FUNC4(retpath);

    /* one marker */
    FUNC8(path);
    FUNC2(FillModeAlternate, &retpath);
    FUNC3(&iter, path);
    result = -1;
    stat = FUNC7(iter, &result, retpath);
    FUNC9(Ok, stat);
    FUNC9(4, result);
    count = -1;
    FUNC6(retpath, &count);
    FUNC9(4, count);
    result = -1;
    stat = FUNC7(iter, &result, retpath);
    FUNC9(Ok, stat);
    FUNC9(0, result);
    count = -1;
    FUNC6(retpath, &count);
    FUNC9(4, count);
    FUNC5(iter);
    FUNC4(retpath);

    /* two markers */
    FUNC0(path, 0.0, 0.0, 10.0, 30.0);
    FUNC8(path);
    FUNC2(FillModeAlternate, &retpath);
    FUNC3(&iter, path);
    result = -1;
    stat = FUNC7(iter, &result, retpath);
    FUNC9(Ok, stat);
    FUNC9(4, result);
    result = -1;
    stat = FUNC7(iter, &result, retpath);
    FUNC9(Ok, stat);
    FUNC9(2, result);
    result = -1;
    stat = FUNC7(iter, &result, retpath);
    FUNC9(Ok, stat);
    FUNC9(0, result);
    FUNC5(iter);
    FUNC4(retpath);

    FUNC4(path);
}