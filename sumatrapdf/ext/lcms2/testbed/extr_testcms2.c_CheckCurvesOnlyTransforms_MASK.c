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
typedef  int /*<<< orphan*/  cmsHTRANSFORM ;
typedef  int /*<<< orphan*/ * cmsHPROFILE ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  INTENT_PERCEPTUAL ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  TYPE_GRAY_16 ; 
 int /*<<< orphan*/  TYPE_GRAY_8 ; 
 int /*<<< orphan*/  TYPE_GRAY_FLT ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ,double) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  cmsSigGrayData ; 

__attribute__((used)) static
cmsInt32Number FUNC14(void)
{

    cmsHTRANSFORM xform1, xform2;
    cmsHPROFILE h1, h2, h3;
    cmsToneCurve* c1, *c2, *c3;
    cmsInt32Number rc = 1;


    c1 = FUNC8(FUNC6(), 2.2);
    c2 = FUNC8(FUNC6(), 1/2.2);
    c3 = FUNC8(FUNC6(), 4.84);

    h1 = FUNC10(FUNC6(), cmsSigGrayData, &c1);
    h2 = FUNC10(FUNC6(), cmsSigGrayData, &c2);
    h3 = FUNC10(FUNC6(), cmsSigGrayData, &c3);

    FUNC7("Gray float optimizeable transform");
    xform1 = FUNC11(FUNC6(), h1, TYPE_GRAY_FLT, h2, TYPE_GRAY_FLT, INTENT_PERCEPTUAL, 0);
    rc &= FUNC2(xform1, 1);
    FUNC12(FUNC6(), xform1);
    if (rc == 0) goto Error;

    FUNC7("Gray 8 optimizeable transform");
    xform1 = FUNC11(FUNC6(), h1, TYPE_GRAY_8, h2, TYPE_GRAY_8, INTENT_PERCEPTUAL, 0);
    rc &= FUNC1(xform1, 1);
    FUNC12(FUNC6(), xform1);
    if (rc == 0) goto Error;

    FUNC7("Gray 16 optimizeable transform");
    xform1 = FUNC11(FUNC6(), h1, TYPE_GRAY_16, h2, TYPE_GRAY_16, INTENT_PERCEPTUAL, 0);
    rc &= FUNC0(xform1, 1);
    FUNC12(FUNC6(), xform1);
    if (rc == 0) goto Error;

    FUNC7("Gray float non-optimizeable transform");
    xform1 = FUNC11(FUNC6(), h1, TYPE_GRAY_FLT, h1, TYPE_GRAY_FLT, INTENT_PERCEPTUAL, 0);
    xform2 = FUNC11(FUNC6(), h3, TYPE_GRAY_FLT, NULL, TYPE_GRAY_FLT, INTENT_PERCEPTUAL, 0);

    rc &= FUNC5(xform1, xform2, 1);
    FUNC12(FUNC6(), xform1);
    FUNC12(FUNC6(), xform2);
    if (rc == 0) goto Error;

    FUNC7("Gray 8 non-optimizeable transform");
    xform1 = FUNC11(FUNC6(), h1, TYPE_GRAY_8, h1, TYPE_GRAY_8, INTENT_PERCEPTUAL, 0);
    xform2 = FUNC11(FUNC6(), h3, TYPE_GRAY_8, NULL, TYPE_GRAY_8, INTENT_PERCEPTUAL, 0);

    rc &= FUNC4(xform1, xform2, 1);
    FUNC12(FUNC6(), xform1);
    FUNC12(FUNC6(), xform2);
    if (rc == 0) goto Error;


    FUNC7("Gray 16 non-optimizeable transform");
    xform1 = FUNC11(FUNC6(), h1, TYPE_GRAY_16, h1, TYPE_GRAY_16, INTENT_PERCEPTUAL, 0);
    xform2 = FUNC11(FUNC6(), h3, TYPE_GRAY_16, NULL, TYPE_GRAY_16, INTENT_PERCEPTUAL, 0);

    rc &= FUNC3(xform1, xform2, 1);
    FUNC12(FUNC6(), xform1);
    FUNC12(FUNC6(), xform2);
    if (rc == 0) goto Error;

Error:

    FUNC9(FUNC6(), h1); FUNC9(FUNC6(), h2); FUNC9(FUNC6(), h3);
    FUNC13(FUNC6(), c1); FUNC13(FUNC6(), c2); FUNC13(FUNC6(), c3);

    return rc;
}