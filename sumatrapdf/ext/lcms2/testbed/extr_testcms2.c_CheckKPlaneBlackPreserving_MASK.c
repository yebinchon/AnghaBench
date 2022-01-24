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
typedef  int cmsInt32Number ;
typedef  int /*<<< orphan*/  cmsHTRANSFORM ;
typedef  int /*<<< orphan*/  cmsHPROFILE ;
typedef  double cmsFloat64Number ;
typedef  int cmsFloat32Number ;
typedef  int cmsCIELab ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  INTENT_PERCEPTUAL ; 
 int /*<<< orphan*/  INTENT_PRESERVE_K_PLANE_PERCEPTUAL ; 
 int /*<<< orphan*/  TYPE_CMYK_FLT ; 
 int /*<<< orphan*/  TYPE_Lab_DBL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 double FUNC5 (int /*<<< orphan*/ ,int*,int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,char*) ; 

__attribute__((used)) static
cmsInt32Number FUNC8(void)
{
    cmsHPROFILE hSWOP  = FUNC7(FUNC0(), "test1.icc", "r");
    cmsHPROFILE hFOGRA = FUNC7(FUNC0(), "test2.icc", "r");
    cmsHTRANSFORM xform, swop_lab, fogra_lab;
    cmsFloat32Number CMYK1[4], CMYK2[4];
    cmsCIELab Lab1, Lab2;
    cmsHPROFILE hLab;
    cmsFloat64Number DeltaE, Max;
    cmsInt32Number i;

    hLab = FUNC2(FUNC0(), NULL);

    xform = FUNC3(FUNC0(), hSWOP, TYPE_CMYK_FLT, hFOGRA, TYPE_CMYK_FLT, INTENT_PERCEPTUAL, 0);

    swop_lab = FUNC3(FUNC0(), hSWOP,  TYPE_CMYK_FLT, hLab, TYPE_Lab_DBL, INTENT_PERCEPTUAL, 0);
    fogra_lab = FUNC3(FUNC0(), hFOGRA, TYPE_CMYK_FLT, hLab, TYPE_Lab_DBL, INTENT_PERCEPTUAL, 0);

    Max = 0;

    for (i=0; i <= 100; i++) {
        CMYK1[0] = 0;
        CMYK1[1] = 0;
        CMYK1[2] = 0;
        CMYK1[3] = (cmsFloat32Number) i;

        FUNC6(FUNC0(), swop_lab, CMYK1, &Lab1, 1);
        FUNC6(FUNC0(), xform, CMYK1, CMYK2, 1);
        FUNC6(FUNC0(), fogra_lab, CMYK2, &Lab2, 1);

        DeltaE = FUNC5(FUNC0(), &Lab1, &Lab2);

        if (DeltaE > Max) Max = DeltaE;
    }


    FUNC4(FUNC0(), xform);

    xform = FUNC3(FUNC0(),  hFOGRA, TYPE_CMYK_FLT, hSWOP, TYPE_CMYK_FLT, INTENT_PRESERVE_K_PLANE_PERCEPTUAL, 0);

    for (i=0; i <= 100; i++) {
        CMYK1[0] = 30;
        CMYK1[1] = 20;
        CMYK1[2] = 10;
        CMYK1[3] = (cmsFloat32Number) i;

        FUNC6(FUNC0(), fogra_lab, CMYK1, &Lab1, 1);
        FUNC6(FUNC0(), xform, CMYK1, CMYK2, 1);
        FUNC6(FUNC0(), swop_lab, CMYK2, &Lab2, 1);

        DeltaE = FUNC5(FUNC0(), &Lab1, &Lab2);

        if (DeltaE > Max) Max = DeltaE;
    }

    FUNC4(FUNC0(), xform);



    FUNC1(FUNC0(), hSWOP);
    FUNC1(FUNC0(), hFOGRA);
    FUNC1(FUNC0(), hLab);


    FUNC4(FUNC0(), swop_lab);
    FUNC4(FUNC0(), fogra_lab);

    return Max < 30.0;
}