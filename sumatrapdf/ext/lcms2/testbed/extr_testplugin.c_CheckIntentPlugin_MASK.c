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
 int /*<<< orphan*/  INTENT_DECEPTIVE ; 
 int /*<<< orphan*/  IntentPluginSample ; 
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
    cmsHPROFILE h1, h2;
    cmsToneCurve* Linear1;
    cmsToneCurve* Linear2;
    cmsUInt8Number In[]= { 10, 20, 30, 40 };
    cmsUInt8Number Out[4];
    int i;

    FUNC10(ctx, &IntentPluginSample);

    cpy  = FUNC0(ctx, NULL);

    Linear1 = FUNC2(cpy, 3.0);
    Linear2 = FUNC2(cpy, 0.1);
    h1 = FUNC4(cpy, cmsSigGrayData, &Linear1);
    h2 = FUNC4(cpy, cmsSigGrayData, &Linear2);

    FUNC9(cpy, Linear1);
    FUNC9(cpy, Linear2);

    xform = FUNC5(cpy, h1, TYPE_GRAY_8, h2, TYPE_GRAY_8, INTENT_DECEPTIVE, 0);
    FUNC3(cpy,h1); FUNC3(cpy, h2);

    FUNC8(cpy, xform, In, Out, 4);

    FUNC7(cpy, xform);
    FUNC6(cpy);
    FUNC6(ctx);

    for (i=0; i < 4; i++)
        if (Out[i] != In[i]) return 0;

    return 1;
}