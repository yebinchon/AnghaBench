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
typedef  int cmsUInt8Number ;
typedef  int /*<<< orphan*/  cmsToneCurve ;
typedef  int cmsInt32Number ;
typedef  int /*<<< orphan*/  cmsHTRANSFORM ;
typedef  int /*<<< orphan*/  cmsHPROFILE ;
typedef  int /*<<< orphan*/  cmsContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  INTENT_PERCEPTUAL ; 
 int /*<<< orphan*/  OptimizationPluginSample ; 
 int /*<<< orphan*/  TYPE_GRAY_8 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,double) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  cmsSigGrayData ; 

cmsInt32Number FUNC11(void)
{
    cmsContext ctx = FUNC1(NULL);
    cmsContext cpy;
    cmsHTRANSFORM xform;
    cmsUInt8Number In[]= { 10, 20, 30, 40 };
    cmsUInt8Number Out[4];
    cmsToneCurve* Linear[1];
    cmsHPROFILE h;
    int i;

    FUNC10(ctx, &OptimizationPluginSample);

    cpy = FUNC0(ctx, NULL);

    Linear[0] = FUNC2(cpy, 1.0);
    h = FUNC4(cpy, cmsSigGrayData, Linear);
    FUNC9(cpy, Linear[0]);

    xform = FUNC5(cpy, h, TYPE_GRAY_8, h, TYPE_GRAY_8, INTENT_PERCEPTUAL, 0);
    FUNC3(cpy, h);

    FUNC8(cpy, xform, In, Out, 4);

    FUNC7(cpy, xform);
    FUNC6(ctx);
    FUNC6(cpy);

    for (i=0; i < 4; i++)
        if (In[i] != Out[i]) return 0;

    return 1;
}