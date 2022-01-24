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
typedef  double cmsFloat64Number ;
typedef  int /*<<< orphan*/ * cmsContext ;

/* Variables and functions */
 int /*<<< orphan*/  CurvePluginSample ; 
 int /*<<< orphan*/  CurvePluginSample2 ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,double,double) ; 
 double M_PI ; 
 int /*<<< orphan*/  TYPE_COS ; 
 int /*<<< orphan*/  TYPE_SIN ; 
 int /*<<< orphan*/  TYPE_TAN ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 double FUNC3 (double) ; 
 double FUNC4 (double) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,double*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,float) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 double FUNC11 (double) ; 
 double FUNC12 (double) ; 
 double FUNC13 (double) ; 

cmsInt32Number FUNC14(void)
{
    cmsContext ctx = NULL;
    cmsContext cpy = NULL;
    cmsToneCurve* sinus;
    cmsToneCurve* cosinus;
    cmsToneCurve* tangent;
    cmsToneCurve* reverse_sinus;
    cmsToneCurve* reverse_cosinus;
    cmsFloat64Number scale = 1.0;

    ctx = FUNC2(NULL);

    FUNC9(ctx, &CurvePluginSample);

    cpy = FUNC0(ctx, NULL);

    FUNC9(cpy, &CurvePluginSample2);

    sinus = FUNC5(cpy, TYPE_SIN, &scale);
    cosinus = FUNC5(cpy, TYPE_COS, &scale);
    tangent = FUNC5(cpy, TYPE_TAN, &scale);
    reverse_sinus = FUNC10(cpy, sinus);
    reverse_cosinus = FUNC10(cpy, cosinus);


     if (!FUNC1("0.10", FUNC7(cpy, sinus, 0.10f), FUNC12(0.10 * M_PI) , 0.001)) goto Error;
     if (!FUNC1("0.60", FUNC7(cpy, sinus, 0.60f), FUNC12(0.60* M_PI), 0.001)) goto Error;
     if (!FUNC1("0.90", FUNC7(cpy, sinus, 0.90f), FUNC12(0.90* M_PI), 0.001)) goto Error;

     if (!FUNC1("0.10", FUNC7(cpy, cosinus, 0.10f), FUNC11(0.10* M_PI), 0.001)) goto Error;
     if (!FUNC1("0.60", FUNC7(cpy, cosinus, 0.60f), FUNC11(0.60* M_PI), 0.001)) goto Error;
     if (!FUNC1("0.90", FUNC7(cpy, cosinus, 0.90f), FUNC11(0.90* M_PI), 0.001)) goto Error;

     if (!FUNC1("0.10", FUNC7(cpy, tangent, 0.10f), FUNC13(0.10* M_PI), 0.001)) goto Error;
     if (!FUNC1("0.60", FUNC7(cpy, tangent, 0.60f), FUNC13(0.60* M_PI), 0.001)) goto Error;
     if (!FUNC1("0.90", FUNC7(cpy, tangent, 0.90f), FUNC13(0.90* M_PI), 0.001)) goto Error;


     if (!FUNC1("0.10", FUNC7(cpy, reverse_sinus, 0.10f), FUNC4(0.10)/M_PI, 0.001)) goto Error;
     if (!FUNC1("0.60", FUNC7(cpy, reverse_sinus, 0.60f), FUNC4(0.60)/M_PI, 0.001)) goto Error;
     if (!FUNC1("0.90", FUNC7(cpy, reverse_sinus, 0.90f), FUNC4(0.90)/M_PI, 0.001)) goto Error;

     if (!FUNC1("0.10", FUNC7(cpy, reverse_cosinus, 0.10f), FUNC3(0.10)/M_PI, 0.001)) goto Error;
     if (!FUNC1("0.60", FUNC7(cpy, reverse_cosinus, 0.60f), FUNC3(0.60)/M_PI, 0.001)) goto Error;
     if (!FUNC1("0.90", FUNC7(cpy, reverse_cosinus, 0.90f), FUNC3(0.90)/M_PI, 0.001)) goto Error;

     FUNC8(cpy, sinus);
     FUNC8(cpy, cosinus);
     FUNC8(cpy, tangent);
     FUNC8(cpy, reverse_sinus);
     FUNC8(cpy, reverse_cosinus);

     FUNC6(ctx);
     FUNC6(cpy);

     return 1;

Error:

     FUNC8(cpy, sinus);
     FUNC8(cpy, reverse_sinus);
     FUNC8(cpy, cosinus);
     FUNC8(cpy, reverse_cosinus);

     if (ctx != NULL) FUNC6(ctx);
     if (cpy != NULL) FUNC6(cpy);
     return 0;
}