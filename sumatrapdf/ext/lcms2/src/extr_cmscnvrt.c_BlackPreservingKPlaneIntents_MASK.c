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
struct TYPE_3__ {double MaxTAC; int /*<<< orphan*/ * LabK2cmyk; int /*<<< orphan*/ * KTone; int /*<<< orphan*/ * hProofOutput; int /*<<< orphan*/ * cmyk2Lab; int /*<<< orphan*/ * cmyk2cmyk; scalar_t__ MaxError; } ;
typedef  TYPE_1__ PreserveKPlaneParams ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  BlackPreservingSampler ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  INTENT_RELATIVE_COLORIMETRIC ; 
 int TYPE_Lab_DBL ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int,int,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  cmsAT_BEGIN ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 void* FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 double FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int cmsFLAGS_NOCACHE ; 
 int cmsFLAGS_NOOPTIMIZE ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC16 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ cmsSigCmykData ; 
 scalar_t__ cmsSigOutputClass ; 
 int /*<<< orphan*/ * FUNC19 (int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static
cmsPipeline* FUNC22(cmsContext     ContextID,
                                          cmsUInt32Number nProfiles,
                                          cmsUInt32Number TheIntents[],
                                          cmsHPROFILE     hProfiles[],
                                          cmsBool         BPC[],
                                          cmsFloat64Number AdaptationStates[],
                                          cmsUInt32Number dwFlags)
{
    PreserveKPlaneParams bp;
    cmsPipeline*    Result = NULL;
    cmsUInt32Number ICCIntents[256];
    cmsStage*         CLUT;
    cmsUInt32Number i, nGridPoints;
    cmsHPROFILE hLab;

    // Sanity check
    if (nProfiles < 1 || nProfiles > 255) return NULL;

    // Translate black-preserving intents to ICC ones
    for (i=0; i < nProfiles; i++)
        ICCIntents[i] = FUNC4(TheIntents[i]);

    // Check for non-cmyk profiles
    if (FUNC14(ContextID, hProfiles[0]) != cmsSigCmykData ||
        !(FUNC14(ContextID, hProfiles[nProfiles-1]) == cmsSigCmykData ||
        FUNC15(ContextID, hProfiles[nProfiles-1]) == cmsSigOutputClass))
           return  FUNC2(ContextID, nProfiles, ICCIntents, hProfiles, BPC, AdaptationStates, dwFlags);

    // Allocate an empty LUT for holding the result
    Result = FUNC16(ContextID, 4, 4);
    if (Result == NULL) return NULL;


    FUNC21(&bp, 0, sizeof(bp));

    // We need the input LUT of the last profile, assuming this one is responsible of
    // black generation. This LUT will be searched in inverse order.
    bp.LabK2cmyk = FUNC6(ContextID, hProfiles[nProfiles-1], INTENT_RELATIVE_COLORIMETRIC);
    if (bp.LabK2cmyk == NULL) goto Cleanup;

    // Get total area coverage (in 0..1 domain)
    bp.MaxTAC = FUNC12(ContextID, hProfiles[nProfiles-1]) / 100.0;
    if (bp.MaxTAC <= 0) goto Cleanup;


    // Create a LUT holding normal ICC transform
    bp.cmyk2cmyk = FUNC2(ContextID,
                                         nProfiles,
                                         ICCIntents,
                                         hProfiles,
                                         BPC,
                                         AdaptationStates,
                                         dwFlags);
    if (bp.cmyk2cmyk == NULL) goto Cleanup;

    // Now the tone curve
    bp.KTone = FUNC5(ContextID, 4096, nProfiles,
                                   ICCIntents,
                                   hProfiles,
                                   BPC,
                                   AdaptationStates,
                                   dwFlags);
    if (bp.KTone == NULL) goto Cleanup;

    // To measure the output, Last profile to Lab
    hLab = FUNC9(ContextID, NULL);
    bp.hProofOutput = FUNC10(ContextID, hProfiles[nProfiles-1],
                                         FUNC1(4)|FUNC0(2), hLab, TYPE_Lab_DBL,
                                         INTENT_RELATIVE_COLORIMETRIC,
                                         cmsFLAGS_NOCACHE|cmsFLAGS_NOOPTIMIZE);
    if ( bp.hProofOutput == NULL) goto Cleanup;

    // Same as anterior, but lab in the 0..1 range
    bp.cmyk2Lab = FUNC10(ContextID, hProfiles[nProfiles-1],
                                         FUNC3(1)|FUNC1(4)|FUNC0(4), hLab,
                                         FUNC3(1)|FUNC1(3)|FUNC0(4),
                                         INTENT_RELATIVE_COLORIMETRIC,
                                         cmsFLAGS_NOCACHE|cmsFLAGS_NOOPTIMIZE);
    if (bp.cmyk2Lab == NULL) goto Cleanup;
    FUNC8(ContextID, hLab);

    // Error estimation (for debug only)
    bp.MaxError = 0;

    // How many gridpoints are we going to use?
    nGridPoints = FUNC7(ContextID, cmsSigCmykData, dwFlags);


    CLUT = FUNC19(ContextID, nGridPoints, 4, 4, NULL);
    if (CLUT == NULL) goto Cleanup;

    if (!FUNC18(ContextID, Result, cmsAT_BEGIN, CLUT))
        goto Cleanup;

    FUNC20(ContextID, CLUT, BlackPreservingSampler, (void*) &bp, 0);

Cleanup:

    if (bp.cmyk2cmyk) FUNC17(ContextID, bp.cmyk2cmyk);
    if (bp.cmyk2Lab) FUNC11(ContextID, bp.cmyk2Lab);
    if (bp.hProofOutput) FUNC11(ContextID, bp.hProofOutput);

    if (bp.KTone) FUNC13(ContextID, bp.KTone);
    if (bp.LabK2cmyk) FUNC17(ContextID, bp.LabK2cmyk);

    return Result;
}