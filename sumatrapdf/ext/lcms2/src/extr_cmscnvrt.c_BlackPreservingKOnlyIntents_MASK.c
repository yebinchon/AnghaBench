#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int cmsUInt32Number ;
typedef  int /*<<< orphan*/  cmsStage ;
typedef  int /*<<< orphan*/  cmsPipeline ;
typedef  int /*<<< orphan*/  cmsHPROFILE ;
typedef  int /*<<< orphan*/  cmsFloat64Number ;
typedef  int /*<<< orphan*/  cmsContext ;
typedef  int /*<<< orphan*/  cmsBool ;
typedef  int /*<<< orphan*/  bp ;
struct TYPE_3__ {int /*<<< orphan*/ * KTone; int /*<<< orphan*/ * cmyk2cmyk; } ;
typedef  TYPE_1__ GrayOnlyParams ;

/* Variables and functions */
 int /*<<< orphan*/  BlackPreservingGrayOnlySampler ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int,int,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  cmsAT_BEGIN ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ cmsSigCmykData ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static
cmsPipeline*  FUNC12(cmsContext     ContextID,
                                          cmsUInt32Number nProfiles,
                                          cmsUInt32Number TheIntents[],
                                          cmsHPROFILE     hProfiles[],
                                          cmsBool         BPC[],
                                          cmsFloat64Number AdaptationStates[],
                                          cmsUInt32Number dwFlags)
{
    GrayOnlyParams  bp;
    cmsPipeline*    Result;
    cmsUInt32Number ICCIntents[256];
    cmsStage*         CLUT;
    cmsUInt32Number i, nGridPoints;


    // Sanity check
    if (nProfiles < 1 || nProfiles > 255) return NULL;

    // Translate black-preserving intents to ICC ones
    for (i=0; i < nProfiles; i++)
        ICCIntents[i] = FUNC1(TheIntents[i]);

    // Check for non-cmyk profiles
    if (FUNC5(ContextID, hProfiles[0]) != cmsSigCmykData ||
        FUNC5(ContextID, hProfiles[nProfiles-1]) != cmsSigCmykData)
           return FUNC0(ContextID, nProfiles, ICCIntents, hProfiles, BPC, AdaptationStates, dwFlags);

    FUNC11(&bp, 0, sizeof(bp));

    // Allocate an empty LUT for holding the result
    Result = FUNC6(ContextID, 4, 4);
    if (Result == NULL) return NULL;

    // Create a LUT holding normal ICC transform
    bp.cmyk2cmyk = FUNC0(ContextID,
        nProfiles,
        ICCIntents,
        hProfiles,
        BPC,
        AdaptationStates,
        dwFlags);

    if (bp.cmyk2cmyk == NULL) goto Error;

    // Now, compute the tone curve
    bp.KTone = FUNC2(ContextID,
        4096,
        nProfiles,
        ICCIntents,
        hProfiles,
        BPC,
        AdaptationStates,
        dwFlags);

    if (bp.KTone == NULL) goto Error;


    // How many gridpoints are we going to use?
    nGridPoints = FUNC3(ContextID, cmsSigCmykData, dwFlags);

    // Create the CLUT. 16 bits
    CLUT = FUNC9(ContextID, nGridPoints, 4, 4, NULL);
    if (CLUT == NULL) goto Error;

    // This is the one and only MPE in this LUT
    if (!FUNC8(ContextID, Result, cmsAT_BEGIN, CLUT))
        goto Error;

    // Sample it. We cannot afford pre/post linearization this time.
    if (!FUNC10(ContextID, CLUT, BlackPreservingGrayOnlySampler, (void*) &bp, 0))
        goto Error;

    // Get rid of xform and tone curve
    FUNC7(ContextID, bp.cmyk2cmyk);
    FUNC4(ContextID, bp.KTone);

    return Result;

Error:

    if (bp.cmyk2cmyk != NULL) FUNC7(ContextID, bp.cmyk2cmyk);
    if (bp.KTone != NULL)  FUNC4(ContextID, bp.KTone);
    if (Result != NULL) FUNC7(ContextID, Result);
    return NULL;

}