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
typedef  int /*<<< orphan*/  cmsHPROFILE ;
typedef  int /*<<< orphan*/  cmsCIEXYZ ;
typedef  int /*<<< orphan*/  cmsCIELab ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  INTENT_PERCEPTUAL ; 
 int /*<<< orphan*/  INTENT_RELATIVE_COLORIMETRIC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static
cmsInt32Number FUNC5(void)
{
    cmsHPROFILE hProfile;
    cmsCIEXYZ Black;
    cmsCIELab Lab;

    hProfile  = FUNC3(FUNC0(), "test5.icc", "r");
    FUNC2(FUNC0(), &Black, hProfile, INTENT_RELATIVE_COLORIMETRIC, 0);
    FUNC1(FUNC0(), hProfile);


    hProfile = FUNC3(FUNC0(), "test1.icc", "r");
    FUNC2(FUNC0(), &Black, hProfile, INTENT_RELATIVE_COLORIMETRIC, 0);
    FUNC4(FUNC0(), NULL, &Lab, &Black);
    FUNC1(FUNC0(), hProfile);

    hProfile = FUNC3(FUNC0(), "lcms2cmyk.icc", "r");
    FUNC2(FUNC0(), &Black, hProfile, INTENT_RELATIVE_COLORIMETRIC, 0);
    FUNC4(FUNC0(), NULL, &Lab, &Black);
    FUNC1(FUNC0(), hProfile);

    hProfile = FUNC3(FUNC0(), "test2.icc", "r");
    FUNC2(FUNC0(), &Black, hProfile, INTENT_RELATIVE_COLORIMETRIC, 0);
    FUNC4(FUNC0(), NULL, &Lab, &Black);
    FUNC1(FUNC0(), hProfile);

    hProfile = FUNC3(FUNC0(), "test1.icc", "r");
    FUNC2(FUNC0(), &Black, hProfile, INTENT_PERCEPTUAL, 0);
    FUNC4(FUNC0(), NULL, &Lab, &Black);
    FUNC1(FUNC0(), hProfile);

    return 1;
}