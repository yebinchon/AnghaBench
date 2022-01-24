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
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FillModeAlternate ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,double,double,double,double) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  InvalidParameter ; 
 int /*<<< orphan*/  Ok ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(void)
{
    GpPath *path;
    GpPathIterator *iter;
    GpStatus stat;
    BOOL isvalid;
    INT start, end, result;

    FUNC1(FillModeAlternate, &path);

    /* NULL args */
    FUNC2(&iter, path);
    stat = FUNC5(NULL, NULL);
    FUNC7(InvalidParameter, stat);
    stat = FUNC5(iter, NULL);
    FUNC7(InvalidParameter, stat);
    stat = FUNC5(NULL, &isvalid);
    FUNC7(InvalidParameter, stat);
    FUNC4(iter);

    /* on empty path */
    FUNC2(&iter, path);
    isvalid = FALSE;
    stat = FUNC5(iter, &isvalid);
    FUNC7(Ok, stat);
    FUNC7(TRUE, isvalid);
    FUNC4(iter);

    /* no markers */
    stat = FUNC0(path, 50.0, 50.0, 110.0, 40.0);
    FUNC7(Ok, stat);
    stat = FUNC2(&iter, path);
    FUNC7(Ok, stat);
    stat = FUNC6(iter, &result, &start, &end);
    FUNC7(Ok, stat);
    isvalid = FALSE;
    stat = FUNC5(iter, &isvalid);
    FUNC7(Ok, stat);
    FUNC7(TRUE, isvalid);
    FUNC4(iter);

    FUNC3(path);
}