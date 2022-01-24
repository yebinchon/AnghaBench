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
typedef  int /*<<< orphan*/  cmsUInt32Number ;
typedef  int cmsUInt16Number ;
typedef  int /*<<< orphan*/  cmsNAMEDCOLORLIST ;
typedef  int /*<<< orphan*/ * cmsHPROFILE ;
typedef  int /*<<< orphan*/  cmsContext ;
typedef  scalar_t__ cmsBool ;

/* Variables and functions */
 scalar_t__ BlackPointCompensation ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 scalar_t__ GamutCheck ; 
 int /*<<< orphan*/  InputColorSpace ; 
 int /*<<< orphan*/  InputColorant ; 
 scalar_t__ InputNamedColor ; 
 int InputRange ; 
 int /*<<< orphan*/  Intent ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  OutputColorSpace ; 
 int /*<<< orphan*/  OutputColorant ; 
 int OutputRange ; 
 int PrecalcMode ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ProofingIntent ; 
 int /*<<< orphan*/  SW ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  TYPE_Lab_16 ; 
 int /*<<< orphan*/  TYPE_Lab_DBL ; 
 int /*<<< orphan*/  TYPE_NAMED_COLOR_INDEX ; 
 int /*<<< orphan*/  TYPE_XYZ_16 ; 
 int /*<<< orphan*/  TYPE_XYZ_DBL ; 
 int Verbose ; 
 int /*<<< orphan*/ * cInProf ; 
 int /*<<< orphan*/ * cOutProf ; 
 int /*<<< orphan*/ * cProofing ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  cmsFLAGS_BLACKPOINTCOMPENSATION ; 
 int /*<<< orphan*/  cmsFLAGS_GAMUTCHECK ; 
 int /*<<< orphan*/  cmsFLAGS_HIGHRESPRECALC ; 
 int /*<<< orphan*/  cmsFLAGS_LOWRESPRECALC ; 
 int /*<<< orphan*/  cmsFLAGS_NOCACHE ; 
 int /*<<< orphan*/  cmsFLAGS_NOOPTIMIZE ; 
 int /*<<< orphan*/  cmsFLAGS_SOFTPROOFING ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int cmsMAXCHANNELS ; 
 int FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  cmsSigColorantTableOutTag ; 
 int /*<<< orphan*/  cmsSigColorantTableTag ; 
 scalar_t__ cmsSigLinkClass ; 
 scalar_t__ cmsSigNamedColorClass ; 
 int /*<<< orphan*/ * hTrans ; 
 int /*<<< orphan*/ * hTransLab ; 
 int /*<<< orphan*/ * hTransXYZ ; 
 scalar_t__ lIsDeviceLink ; 
 scalar_t__ lIsFloat ; 
 int /*<<< orphan*/  FUNC20 (char*) ; 

__attribute__((used)) static
cmsBool FUNC21(cmsContext ContextID)
{
    cmsHPROFILE hInput, hOutput, hProof;
    cmsUInt32Number dwIn, dwOut, dwFlags;
    cmsNAMEDCOLORLIST* List;
    int i;

    // We don't need cache
    dwFlags = cmsFLAGS_NOCACHE;

    if (lIsDeviceLink) {

        hInput  = FUNC2(0, cInProf);
        if (hInput == NULL) return FALSE;
        hOutput = NULL;
        hProof  = NULL;

        if (FUNC14(ContextID, hInput) == cmsSigNamedColorClass) {
            OutputColorSpace  = FUNC13(ContextID, hInput);
            InputColorSpace = FUNC15(ContextID, hInput);
        }
        else {
            InputColorSpace  = FUNC13(ContextID, hInput);
            OutputColorSpace = FUNC15(ContextID, hInput);
        }

        // Read colorant tables if present
        if (FUNC16(ContextID, hInput, cmsSigColorantTableTag)) {
            List = FUNC18(ContextID, hInput, cmsSigColorantTableTag);
            InputColorant = FUNC10(ContextID, List);
            InputRange = 1;
        }
        else InputColorant = FUNC0(ContextID, InputColorSpace, TRUE);

        if (FUNC16(ContextID, hInput, cmsSigColorantTableOutTag)){

            List = FUNC18(ContextID, hInput, cmsSigColorantTableOutTag);
            OutputColorant = FUNC10(ContextID, List);
            OutputRange = 1;
        }
        else OutputColorant = FUNC0(ContextID, OutputColorSpace, FALSE);

    }
    else {

        hInput  = FUNC2(0, cInProf);
        if (hInput == NULL) return FALSE;

        hOutput = FUNC2(0, cOutProf);
        if (hOutput == NULL) return FALSE;
        hProof  = NULL;


        if (FUNC14(ContextID, hInput) == cmsSigLinkClass ||
            FUNC14(ContextID, hOutput) == cmsSigLinkClass)
            FUNC1("Use %cl flag for devicelink profiles!\n", SW);


        InputColorSpace   = FUNC13(ContextID, hInput);
        OutputColorSpace  = FUNC13(ContextID, hOutput);

        // Read colorant tables if present
        if (FUNC16(ContextID, hInput, cmsSigColorantTableTag)) {
            List = FUNC18(ContextID, hInput, cmsSigColorantTableTag);
            InputColorant = FUNC10(ContextID, List);
            if (FUNC17(ContextID, InputColorant) <= 3)
                FUNC4(255, TRUE);
            else
                FUNC4(1, TRUE);  // Inks are already divided by 100 in the formatter

        }
        else InputColorant = FUNC0(ContextID, InputColorSpace, TRUE);

        if (FUNC16(ContextID, hOutput, cmsSigColorantTableTag)){

            List = FUNC18(ContextID, hOutput, cmsSigColorantTableTag);
            OutputColorant = FUNC10(ContextID, List);
            if (FUNC17(ContextID, OutputColorant) <= 3)
                FUNC4(255, FALSE);
            else
                FUNC4(1, FALSE);  // Inks are already divided by 100 in the formatter
        }
        else OutputColorant = FUNC0(ContextID, OutputColorSpace, FALSE);


        if (cProofing != NULL) {

            hProof = FUNC2(0, cProofing);
            if (hProof == NULL) return FALSE;
            dwFlags |= cmsFLAGS_SOFTPROOFING;
        }
    }

    // Print information on profiles
    if (Verbose > 2) {

        FUNC20("Profile:\n");
        FUNC3(ContextID, hInput);

        if (hOutput) {

            FUNC20("Output profile:\n");
            FUNC3(ContextID, hOutput);
        }

        if (hProof != NULL) {
            FUNC20("Proofing profile:\n");
            FUNC3(ContextID, hProof);
        }
    }


    // Input is always in floating point
    dwIn  = FUNC11(ContextID, hInput, 0, TRUE);

    if (lIsDeviceLink) {

        dwOut = FUNC12(ContextID, hInput, lIsFloat ? 0 : 2, lIsFloat);
    }
    else {

        // 16 bits or floating point (only on output)
        dwOut = FUNC11(ContextID, hOutput, lIsFloat ? 0 : 2, lIsFloat);
    }

    // For named color, there is a specialized formatter
    if (FUNC14(ContextID, hInput) == cmsSigNamedColorClass) {

        dwIn = TYPE_NAMED_COLOR_INDEX;
        InputNamedColor = TRUE;
    }

    // Precision mode
    switch (PrecalcMode) {

       case 0: dwFlags |= cmsFLAGS_NOOPTIMIZE; break;
       case 2: dwFlags |= cmsFLAGS_HIGHRESPRECALC; break;
       case 3: dwFlags |= cmsFLAGS_LOWRESPRECALC; break;
       case 1: break;

       default:
           FUNC1("Unknown precalculation mode '%d'", PrecalcMode);
    }


    if (BlackPointCompensation)
        dwFlags |= cmsFLAGS_BLACKPOINTCOMPENSATION;


    if (GamutCheck) {

        cmsUInt16Number Alarm[cmsMAXCHANNELS];

        if (hProof == NULL)
            FUNC1("I need proofing profile -p for gamut checking!");

        for (i=0; i < cmsMAXCHANNELS; i++)
            Alarm[i] = 0xFFFF;

        FUNC19(ContextID, Alarm);
        dwFlags |= cmsFLAGS_GAMUTCHECK;
    }


    // The main transform
    hTrans = FUNC7(ContextID, hInput,  dwIn, hOutput, dwOut, hProof, Intent, ProofingIntent, dwFlags);

    if (hProof) FUNC5(ContextID, hProof);

    if (hTrans == NULL) return FALSE;


    // PCS Dump if requested
    hTransXYZ = NULL; hTransLab = NULL;

    if (hOutput && Verbose > 1) {

        cmsHPROFILE hXYZ = FUNC9(ContextID);
        cmsHPROFILE hLab = FUNC6(ContextID, NULL);

        hTransXYZ = FUNC8(ContextID, hInput, dwIn, hXYZ,  lIsFloat ? TYPE_XYZ_DBL : TYPE_XYZ_16, Intent, cmsFLAGS_NOCACHE);
        if (hTransXYZ == NULL) return FALSE;

        hTransLab = FUNC8(ContextID, hInput, dwIn, hLab,  lIsFloat? TYPE_Lab_DBL : TYPE_Lab_16, Intent, cmsFLAGS_NOCACHE);
        if (hTransLab == NULL) return FALSE;

        FUNC5(ContextID, hXYZ);
        FUNC5(ContextID, hLab);
    }

    if (hInput) FUNC5(ContextID, hInput);
    if (hOutput) FUNC5(ContextID, hOutput);

    return TRUE;
}