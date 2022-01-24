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
typedef  int /*<<< orphan*/  cmsToneCurve ;
typedef  int cmsInt32Number ;
typedef  float cmsFloat32Number ;
typedef  int /*<<< orphan*/ * cmsContext ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  InterpPluginSample ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,double,double) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int,float const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,float) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

cmsInt32Number FUNC9(void)
{
    cmsToneCurve* Sampled1D = NULL;
    cmsContext ctx = NULL;
    cmsContext cpy = NULL;
    const cmsFloat32Number tab[] = { 0.0f, 0.10f, 0.20f, 0.30f, 0.40f, 0.50f, 0.60f, 0.70f, 0.80f, 0.90f, 1.00f };  // A straight line

    // 1st level context
    ctx = FUNC3(NULL);
    if (ctx == NULL) {
        FUNC1("Cannot create context");
        goto Error;
    }

    FUNC8(ctx, &InterpPluginSample);

    cpy = FUNC0(ctx, NULL);
     if (cpy == NULL) {
        FUNC1("Cannot create context (2)");
        goto Error;
    }

    Sampled1D = FUNC4(cpy, 11, tab);
    if (Sampled1D == NULL) {
        FUNC1("Cannot create tone curve (1)");
        goto Error;
    }

    // Do some interpolations with the plugin
    if (!FUNC2("0.10", FUNC6(cpy, Sampled1D, 0.10f), 0.10, 0.01)) goto Error;
    if (!FUNC2("0.13", FUNC6(cpy, Sampled1D, 0.13f), 0.10, 0.01)) goto Error;
    if (!FUNC2("0.55", FUNC6(cpy, Sampled1D, 0.55f), 0.50, 0.01)) goto Error;
    if (!FUNC2("0.9999", FUNC6(cpy, Sampled1D, 0.9999f), 0.90, 0.01)) goto Error;

    FUNC7(cpy, Sampled1D);
    FUNC5(ctx);
    FUNC5(cpy);

    // Now in global context
    Sampled1D = FUNC4(NULL, 11, tab);
    if (Sampled1D == NULL) {
        FUNC1("Cannot create tone curve (2)");
        goto Error;
    }

    // Now without the plug-in
    if (!FUNC2("0.10", FUNC6(NULL, Sampled1D, 0.10f), 0.10, 0.001)) goto Error;
    if (!FUNC2("0.13", FUNC6(NULL, Sampled1D, 0.13f), 0.13, 0.001)) goto Error;
    if (!FUNC2("0.55", FUNC6(NULL, Sampled1D, 0.55f), 0.55, 0.001)) goto Error;
    if (!FUNC2("0.9999", FUNC6(NULL, Sampled1D, 0.9999f), 0.9999, 0.001)) goto Error;

    FUNC7(NULL, Sampled1D);
    return 1;

Error:
    if (ctx != NULL) FUNC5(ctx);
     if (cpy != NULL) FUNC5(ctx);
    if (Sampled1D != NULL) FUNC7(NULL, Sampled1D);
    return 0;

}