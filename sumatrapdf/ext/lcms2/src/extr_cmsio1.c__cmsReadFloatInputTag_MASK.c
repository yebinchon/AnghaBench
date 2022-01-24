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
typedef  int /*<<< orphan*/  cmsTagSignature ;
typedef  int /*<<< orphan*/  cmsPipeline ;
typedef  int /*<<< orphan*/  cmsHPROFILE ;
typedef  int /*<<< orphan*/  cmsContext ;
typedef  scalar_t__ cmsColorSpaceSignature ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cmsAT_BEGIN ; 
 int /*<<< orphan*/  cmsAT_END ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ cmsSigLabData ; 
 scalar_t__ cmsSigXYZData ; 

__attribute__((used)) static
cmsPipeline* FUNC10(cmsContext ContextID, cmsHPROFILE hProfile, cmsTagSignature tagFloat)
{
    cmsPipeline* Lut           = FUNC6(ContextID, (cmsPipeline*) FUNC9(ContextID, hProfile, tagFloat));
    cmsColorSpaceSignature spc = FUNC4(ContextID, hProfile);
    cmsColorSpaceSignature PCS = FUNC5(ContextID, hProfile);

    if (Lut == NULL) return NULL;

    // input and output of transform are in lcms 0..1 encoding.  If XYZ or Lab spaces are used,
    //  these need to be normalized into the appropriate ranges (Lab = 100,0,0, XYZ=1.0,1.0,1.0)
    if ( spc == cmsSigLabData)
    {
        if (!FUNC8(ContextID, Lut, cmsAT_BEGIN, FUNC2(ContextID)))
            goto Error;
    }
    else if (spc == cmsSigXYZData)
    {
        if (!FUNC8(ContextID, Lut, cmsAT_BEGIN, FUNC3(ContextID)))
            goto Error;
    }

    if ( PCS == cmsSigLabData)
    {
        if (!FUNC8(ContextID, Lut, cmsAT_END, FUNC0(ContextID)))
            goto Error;
    }
    else if( PCS == cmsSigXYZData)
    {
        if (!FUNC8(ContextID, Lut, cmsAT_END, FUNC1(ContextID)))
            goto Error;
    }

    return Lut;

Error:
    FUNC7(ContextID, Lut);
    return NULL;
}