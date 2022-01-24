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
 int FUNC6 (int /*<<< orphan*/ *,int*,int*,int*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int InvalidParameter ; 
 int Ok ; 
 int /*<<< orphan*/  FUNC8 (int,int) ; 

__attribute__((used)) static void FUNC9(void)
{
    GpPath *path;
    GpPathIterator *iter;
    GpStatus stat;
    INT start, end;
    INT result;

    /* NULL args
       BOOL out argument is local in wrapper class method,
       so it always has not-NULL address */
    stat = FUNC6(NULL, &result, NULL, NULL);
    FUNC8(InvalidParameter, stat);
    stat = FUNC6(NULL, &result, &start, NULL);
    FUNC8(InvalidParameter, stat);
    stat = FUNC6(NULL, &result, NULL, &end);
    FUNC8(InvalidParameter, stat);

    FUNC2(FillModeAlternate, &path);
    FUNC1(path, 5.0, 5.0, 100.0, 50.0);

    /* no markers */
    FUNC3(&iter, path);
    start = end = result = (INT)0xdeadbeef;
    stat = FUNC6(iter, &result, &start, &end);
    FUNC8(Ok, stat);
    FUNC8(0, start);
    FUNC8(3, end);
    FUNC8(4, result);
    start = end = result = (INT)0xdeadbeef;
    stat = FUNC6(iter, &result, &start, &end);
    FUNC8(Ok, stat);
    /* start/end remain unchanged */
    FUNC8((INT)0xdeadbeef, start);
    FUNC8((INT)0xdeadbeef, end);
    FUNC8(0, result);
    FUNC5(iter);

    /* one marker */
    FUNC7(path);
    FUNC3(&iter, path);
    start = end = result = (INT)0xdeadbeef;
    stat = FUNC6(iter, &result, &start, &end);
    FUNC8(Ok, stat);
    FUNC8(0, start);
    FUNC8(3, end);
    FUNC8(4, result);
    start = end = result = (INT)0xdeadbeef;
    stat = FUNC6(iter, &result, &start, &end);
    FUNC8(Ok, stat);
    FUNC8((INT)0xdeadbeef, start);
    FUNC8((INT)0xdeadbeef, end);
    FUNC8(0, result);
    FUNC5(iter);

    /* two markers */
    FUNC0(path, 0.0, 0.0, 10.0, 30.0);
    FUNC7(path);
    FUNC3(&iter, path);
    start = end = result = (INT)0xdeadbeef;
    stat = FUNC6(iter, &result, &start, &end);
    FUNC8(Ok, stat);
    FUNC8(0, start);
    FUNC8(3, end);
    FUNC8(4, result);
    start = end = result = (INT)0xdeadbeef;
    stat = FUNC6(iter, &result, &start, &end);
    FUNC8(Ok, stat);
    FUNC8(4, start);
    FUNC8(5, end);
    FUNC8(2, result);
    start = end = result = (INT)0xdeadbeef;
    stat = FUNC6(iter, &result, &start, &end);
    FUNC8(Ok, stat);
    FUNC8((INT)0xdeadbeef, start);
    FUNC8((INT)0xdeadbeef, end);
    FUNC8(0, result);
    FUNC5(iter);

    FUNC4(path);
}