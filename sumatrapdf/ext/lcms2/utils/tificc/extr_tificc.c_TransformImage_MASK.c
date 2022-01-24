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
typedef  int /*<<< orphan*/ * cmsHTRANSFORM ;
typedef  int /*<<< orphan*/ * cmsHPROFILE ;
typedef  int /*<<< orphan*/  TIFF ;

/* Variables and functions */
 scalar_t__ BlackWhiteCompensation ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const*) ; 
 scalar_t__ EmbedProfile ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 scalar_t__ GamutCheck ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 double InkLimit ; 
 int /*<<< orphan*/  Intent ; 
 int /*<<< orphan*/  ObserverAdaptationState ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,char const*) ; 
 int PT_CMY ; 
 int PT_CMYK ; 
 int PrecalcMode ; 
 int /*<<< orphan*/  ProofingIntent ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int Width ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int,int) ; 
 int FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char const* cOutProf ; 
 char const* cProofing ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC18 (int /*<<< orphan*/ ,double) ; 
 int /*<<< orphan*/ * FUNC19 (int /*<<< orphan*/ **,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  cmsFLAGS_BLACKPOINTCOMPENSATION ; 
 int /*<<< orphan*/  cmsFLAGS_GAMUTCHECK ; 
 int /*<<< orphan*/  cmsFLAGS_HIGHRESPRECALC ; 
 int /*<<< orphan*/  cmsFLAGS_LOWRESPRECALC ; 
 int /*<<< orphan*/  cmsFLAGS_NOOPTIMIZE ; 
 int /*<<< orphan*/  cmsFLAGS_SOFTPROOFING ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC24 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ) ; 
 scalar_t__ lIsDeviceLink ; 

__attribute__((used)) static
int FUNC26(TIFF* in, TIFF* out, const char *cDefInpProf)
{
    cmsHPROFILE hIn, hOut, hProof, hInkLimit = NULL;
    cmsHTRANSFORM xform;
    cmsUInt32Number wInput, wOutput;
    int OutputColorSpace;
    int bps = Width / 8;
    cmsUInt32Number dwFlags = 0;
    int nPlanes;

    // Observer adaptation state (only meaningful on absolute colorimetric intent)

    FUNC25(ObserverAdaptationState);

    if (EmbedProfile && cOutProf)
        FUNC2(out, cOutProf);

    if (BlackWhiteCompensation)
        dwFlags |= cmsFLAGS_BLACKPOINTCOMPENSATION;


    switch (PrecalcMode) {

       case 0: dwFlags |= cmsFLAGS_NOOPTIMIZE; break;
       case 2: dwFlags |= cmsFLAGS_HIGHRESPRECALC; break;
       case 3: dwFlags |= cmsFLAGS_LOWRESPRECALC; break;
       case 1: break;

       default: FUNC3("Unknown precalculation mode '%d'", PrecalcMode);
    }


    if (GamutCheck)
        dwFlags |= cmsFLAGS_GAMUTCHECK;

    hProof = NULL;
    hOut = NULL;

    if (lIsDeviceLink) {

        hIn = FUNC24(cDefInpProf, "r");
    }
    else {

        hIn =  FUNC5(in);

        if (hIn == NULL)
            hIn = FUNC6(NULL, cDefInpProf);

        hOut = FUNC6(NULL, cOutProf);

        if (cProofing != NULL) {

            hProof = FUNC6(NULL, cProofing);
            dwFlags |= cmsFLAGS_SOFTPROOFING;
        }
    }

    // Take input color space

    wInput = FUNC4(in);

    // Assure both, input profile and input TIFF are on same colorspace

    if (FUNC16(NULL, FUNC22(NULL, hIn)) != (int) FUNC11(wInput))
        FUNC3("Input profile is not operating in proper color space");


    if (!lIsDeviceLink)
        OutputColorSpace = FUNC16(NULL, FUNC22(NULL, hOut));
    else
        OutputColorSpace = FUNC16(NULL, FUNC23(NULL, hIn));

    wOutput  = FUNC0(wInput, OutputColorSpace, bps);

    FUNC15(out, OutputColorSpace, bps);
    FUNC1(in, out);

    // Ink limit
    if (InkLimit != 400.0 &&
        (OutputColorSpace == PT_CMYK || OutputColorSpace == PT_CMY)) {

            cmsHPROFILE hProfiles[10];
            int nProfiles = 0;


            hInkLimit = FUNC18(FUNC22(NULL, hOut), InkLimit);

            hProfiles[nProfiles++] = hIn;
            if (hProof) {
                hProfiles[nProfiles++] = hProof;
                hProfiles[nProfiles++] = hProof;
            }

            hProfiles[nProfiles++] = hOut;
            hProfiles[nProfiles++] = hInkLimit;

            xform = FUNC19(hProfiles, nProfiles,
                                                   wInput, wOutput, Intent, dwFlags);

    }
    else {

        xform = FUNC20(hIn, wInput,
                                           hOut, wOutput,
                                           hProof, Intent,
                                           ProofingIntent,
                                           dwFlags);
    }

    FUNC17(NULL, hIn);
    FUNC17(NULL, hOut);

    if (hInkLimit)
        FUNC17(NULL, hInkLimit);
    if (hProof)
        FUNC17(NULL, hProof);

    if (xform == NULL) return 0;

    // Planar stuff
    if (FUNC13(wInput))
        nPlanes = FUNC10(wInput) + FUNC12(wInput);
    else
        nPlanes = 1;


    // Handle tile by tile or strip by strip
    if (FUNC8(in)) {

        FUNC14(xform, in, out, nPlanes);
    }
    else {
        FUNC7(xform, in, out, nPlanes);
    }


    FUNC21(NULL, xform);

    FUNC9(out);

    return 1;
}