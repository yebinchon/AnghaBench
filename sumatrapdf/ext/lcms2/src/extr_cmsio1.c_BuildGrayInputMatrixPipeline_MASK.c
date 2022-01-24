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
typedef  int cmsUInt16Number ;
typedef  int /*<<< orphan*/  cmsToneCurve ;
typedef  int /*<<< orphan*/  cmsPipeline ;
typedef  int /*<<< orphan*/  cmsHPROFILE ;
typedef  int /*<<< orphan*/  cmsContext ;

/* Variables and functions */
 int /*<<< orphan*/  GrayInputMatrix ; 
 int /*<<< orphan*/  OneToThreeInputMatrix ; 
 int /*<<< orphan*/  cmsAT_END ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cmsSigGrayTRCTag ; 
 scalar_t__ cmsSigLabData ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ **) ; 

__attribute__((used)) static
cmsPipeline* FUNC9(cmsContext ContextID, cmsHPROFILE hProfile)
{
    cmsToneCurve *GrayTRC;
    cmsPipeline* Lut;

    GrayTRC = (cmsToneCurve *) FUNC6(ContextID, hProfile, cmsSigGrayTRCTag);
    if (GrayTRC == NULL) return NULL;

    Lut = FUNC3(ContextID, 1, 3);
    if (Lut == NULL)
        goto Error;

    if (FUNC2(ContextID, hProfile) == cmsSigLabData) {

        // In this case we implement the profile as an  identity matrix plus 3 tone curves
        cmsUInt16Number Zero[2] = { 0x8080, 0x8080 };
        cmsToneCurve* EmptyTab;
        cmsToneCurve* LabCurves[3];

        EmptyTab = FUNC0(ContextID, 2, Zero);

        if (EmptyTab == NULL)
            goto Error;

        LabCurves[0] = GrayTRC;
        LabCurves[1] = EmptyTab;
        LabCurves[2] = EmptyTab;

        if (!FUNC5(ContextID, Lut, cmsAT_END, FUNC7(ContextID, 3,  1, OneToThreeInputMatrix, NULL)) ||
            !FUNC5(ContextID, Lut, cmsAT_END, FUNC8(ContextID, 3, LabCurves))) {
                FUNC1(ContextID, EmptyTab);
                goto Error;
        }

        FUNC1(ContextID, EmptyTab);

    }
    else  {

        if (!FUNC5(ContextID, Lut, cmsAT_END, FUNC8(ContextID, 1, &GrayTRC)) ||
            !FUNC5(ContextID, Lut, cmsAT_END, FUNC7(ContextID, 3,  1, GrayInputMatrix, NULL)))
            goto Error;
    }

    return Lut;

Error:
    FUNC4(ContextID, Lut);
    return NULL;
}