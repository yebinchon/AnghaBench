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
typedef  int cmsUInt32Number ;
typedef  int /*<<< orphan*/  cmsToneCurve ;
typedef  int /*<<< orphan*/  cmsHPROFILE ;
typedef  int /*<<< orphan*/  cmsFloat64Number ;
typedef  int /*<<< orphan*/  cmsContext ;
typedef  int /*<<< orphan*/  cmsBool ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int,int,int const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/  const) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 scalar_t__ cmsSigCmykData ; 
 scalar_t__ cmsSigOutputClass ; 

cmsToneCurve* FUNC6(cmsContext        ContextID,
                                   cmsUInt32Number   nPoints,
                                   cmsUInt32Number   nProfiles,
                                   const cmsUInt32Number Intents[],
                                   const cmsHPROFILE hProfiles[],
                                   const cmsBool     BPC[],
                                   const cmsFloat64Number AdaptationStates[],
                                   cmsUInt32Number   dwFlags)
{
    cmsToneCurve *in, *out, *KTone;

    // Make sure CMYK -> CMYK
    if (FUNC2(ContextID, hProfiles[0]) != cmsSigCmykData ||
        FUNC2(ContextID, hProfiles[nProfiles-1])!= cmsSigCmykData) return NULL;


    // Make sure last is an output profile
    if (FUNC3(ContextID, hProfiles[nProfiles - 1]) != cmsSigOutputClass) return NULL;

    // Create individual curves. BPC works also as each K to L* is
    // computed as a BPC to zero black point in case of L*
    in  = FUNC0(ContextID, nPoints, nProfiles - 1, Intents, hProfiles, BPC, AdaptationStates, dwFlags);
    if (in == NULL) return NULL;

    out = FUNC0(ContextID, nPoints, 1,
                            Intents + (nProfiles - 1),
                            &hProfiles [nProfiles - 1],
                            BPC + (nProfiles - 1),
                            AdaptationStates + (nProfiles - 1),
                            dwFlags);
    if (out == NULL) {
        FUNC1(ContextID, in);
        return NULL;
    }

    // Build the relationship. This effectively limits the maximum accuracy to 16 bits, but
    // since this is used on black-preserving LUTs, we are not losing  accuracy in any case
    KTone = FUNC5(ContextID, in, out, nPoints);

    // Get rid of components
    FUNC1(ContextID, in); FUNC1(ContextID, out);

    // Something went wrong...
    if (KTone == NULL) return NULL;

    // Make sure it is monotonic
    if (!FUNC4(ContextID, KTone)) {
        FUNC1(ContextID, KTone);
        return NULL;
    }

    return KTone;
}