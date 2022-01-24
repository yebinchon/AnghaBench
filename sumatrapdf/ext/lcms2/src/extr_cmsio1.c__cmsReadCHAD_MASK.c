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
typedef  int /*<<< orphan*/  cmsMAT3 ;
typedef  int /*<<< orphan*/  cmsHPROFILE ;
typedef  int /*<<< orphan*/  cmsContext ;
typedef  int /*<<< orphan*/  cmsCIEXYZ ;
typedef  int /*<<< orphan*/  cmsBool ;

/* Variables and functions */
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cmsSigChromaticAdaptationTag ; 
 scalar_t__ cmsSigDisplayClass ; 
 int /*<<< orphan*/  cmsSigMediaWhitePointTag ; 

cmsBool  FUNC7(cmsContext ContextID, cmsMAT3* Dest, cmsHPROFILE hProfile)
{
    cmsMAT3* Tag;

    FUNC1(Dest != NULL);

    Tag = (cmsMAT3*) FUNC6(ContextID, hProfile, cmsSigChromaticAdaptationTag);

    if (Tag != NULL) {
        *Dest = *Tag;
        return TRUE;
    }

    // No CHAD available, default it to identity
    FUNC2(ContextID, Dest);

    // V2 display profiles should give D50
    if (FUNC5(ContextID, hProfile) < 0x4000000) {

        if (FUNC4(ContextID, hProfile) == cmsSigDisplayClass) {

            cmsCIEXYZ* White = (cmsCIEXYZ*) FUNC6(ContextID, hProfile, cmsSigMediaWhitePointTag);

            if (White == NULL) {

                FUNC2(ContextID, Dest);
                return TRUE;
            }

            return FUNC0(ContextID, Dest, NULL, White, FUNC3(ContextID));
        }
    }

    return TRUE;
}