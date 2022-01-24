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
 int /*<<< orphan*/  FillModeAlternate ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int*,int*,int*,int*) ; 
 int Ok ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 

__attribute__((used)) static void FUNC6(void)
{
    GpPath *path;
    GpPathIterator *iter;
    GpStatus stat;
    INT start, end, result;
    BOOL closed;

    /* empty path */
    FUNC0(FillModeAlternate, &path);
    FUNC1(&iter, path);

    result = -2;
    closed = TRUE;
    stat = FUNC4(iter, &result, &start, &end, &closed);
    FUNC5(Ok, stat);
    FUNC5(0, result);
    FUNC5(TRUE, closed);

    FUNC3(iter);
    FUNC2(path);
}