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
typedef  int /*<<< orphan*/  GpPath ;
typedef  int /*<<< orphan*/  GpLineJoin ;
typedef  int /*<<< orphan*/  GpCustomLineCap ;

/* Variables and functions */
 int /*<<< orphan*/  FillModeAlternate ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,double,double,double,double) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,double,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  InvalidParameter ; 
 int /*<<< orphan*/  LineCapFlat ; 
 int /*<<< orphan*/  LineJoinBevel ; 
 int /*<<< orphan*/  LineJoinMiter ; 
 int /*<<< orphan*/  LineJoinMiterClipped ; 
 int /*<<< orphan*/  LineJoinRound ; 
 int /*<<< orphan*/  Ok ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(void)
{
    GpCustomLineCap *custom;
    GpPath *path;
    GpLineJoin join;
    GpStatus stat;

    stat = FUNC2(FillModeAlternate, &path);
    FUNC7(Ok, stat);
    stat = FUNC0(path, 5.0, 5.0, 10.0, 10.0);
    FUNC7(Ok, stat);

    stat = FUNC1(NULL, path, LineCapFlat, 0.0, &custom);
    FUNC7(Ok, stat);

    /* NULL args */
    stat = FUNC5(NULL, NULL);
    FUNC7(InvalidParameter, stat);
    stat = FUNC5(custom, NULL);
    FUNC7(InvalidParameter, stat);
    stat = FUNC5(NULL, &join);
    FUNC7(InvalidParameter, stat);
    stat = FUNC6(NULL, LineJoinBevel);
    FUNC7(InvalidParameter, stat);

    /* LineJoinMiter is default */
    stat = FUNC5(custom, &join);
    FUNC7(Ok, stat);
    FUNC7(LineJoinMiter, join);

    /* set/get */
    stat = FUNC6(custom, LineJoinBevel);
    FUNC7(Ok, stat);
    stat = FUNC5(custom, &join);
    FUNC7(Ok, stat);
    FUNC7(LineJoinBevel, join);
    stat = FUNC6(custom, LineJoinRound);
    FUNC7(Ok, stat);
    stat = FUNC5(custom, &join);
    FUNC7(Ok, stat);
    FUNC7(LineJoinRound, join);
    stat = FUNC6(custom, LineJoinMiterClipped);
    FUNC7(Ok, stat);
    stat = FUNC5(custom, &join);
    FUNC7(Ok, stat);
    FUNC7(LineJoinMiterClipped, join);

    FUNC3(custom);
    FUNC4(path);
}