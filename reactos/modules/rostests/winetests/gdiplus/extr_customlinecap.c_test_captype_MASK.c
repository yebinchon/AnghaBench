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
typedef  int GpStatus ;
typedef  int /*<<< orphan*/  GpPath ;
typedef  int /*<<< orphan*/  GpCustomLineCap ;
typedef  int /*<<< orphan*/  GpAdjustableArrowCap ;
typedef  int CustomLineCapType ;

/* Variables and functions */
 int CustomLineCapTypeAdjustableArrow ; 
 int CustomLineCapTypeDefault ; 
 int /*<<< orphan*/  FillModeAlternate ; 
 int FUNC0 (int /*<<< orphan*/ *,double,double,double,double) ; 
 int FUNC1 (double,double,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,double,int /*<<< orphan*/ **) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,int*) ; 
 int InvalidParameter ; 
 int /*<<< orphan*/  LineCapFlat ; 
 int Ok ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC7 (int,char*,int) ; 

__attribute__((used)) static void FUNC8(void)
{
    GpAdjustableArrowCap *arrowcap;
    GpCustomLineCap *custom;
    CustomLineCapType type;
    GpStatus stat;
    GpPath *path;

    stat = FUNC6(NULL, NULL);
    FUNC7(stat == InvalidParameter, "Unexpected return code, %d\n", stat);

    type = 10;
    stat = FUNC6(NULL, &type);
    FUNC7(stat == InvalidParameter, "Unexpected return code, %d\n", stat);
    FUNC7(type == 10, "Unexpected cap type, %d\n", type);

    /* default cap */
    stat = FUNC3(FillModeAlternate, &path);
    FUNC7(stat == Ok, "Failed to create path, %d\n", stat);
    stat = FUNC0(path, 5.0, 5.0, 10.0, 10.0);
    FUNC7(stat == Ok, "AddPathRectangle failed, %d\n", stat);

    stat = FUNC2(NULL, path, LineCapFlat, 0.0, &custom);
    FUNC7(stat == Ok, "Failed to create cap, %d\n", stat);
    stat = FUNC6(custom, &type);
    FUNC7(stat == Ok, "Failed to get cap type, %d\n", stat);
    FUNC7(type == CustomLineCapTypeDefault, "Unexpected cap type %d\n", stat);
    FUNC4(custom);
    FUNC5(path);

    /* arrow cap */
    stat = FUNC1(17.0, 15.0, TRUE, &arrowcap);
    FUNC7(stat == Ok, "Failed to create adjustable cap, %d\n", stat);

    stat = FUNC6((GpCustomLineCap*)arrowcap, &type);
    FUNC7(stat == Ok, "Failed to get cap type, %d\n", stat);
    FUNC7(type == CustomLineCapTypeAdjustableArrow, "Unexpected cap type %d\n", stat);

    FUNC4((GpCustomLineCap*)arrowcap);
}