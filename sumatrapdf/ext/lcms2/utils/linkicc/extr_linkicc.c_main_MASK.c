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
typedef  int /*<<< orphan*/ * cmsHTRANSFORM ;
typedef  int /*<<< orphan*/ * cmsHPROFILE ;
typedef  int /*<<< orphan*/ * cmsContext ;
typedef  int /*<<< orphan*/  cmsColorSpaceSignature ;
typedef  int /*<<< orphan*/  Profiles ;

/* Variables and functions */
 scalar_t__ BlackPointCompensation ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int,char**) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 double InkLimit ; 
 int /*<<< orphan*/  Intent ; 
 scalar_t__ KeepLinearization ; 
 double LCMS_VERSION ; 
 int /*<<< orphan*/  NumOfGridPoints ; 
 int /*<<< orphan*/  ObserverAdaptationState ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int PrecalcMode ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ TagResult ; 
 int Verbose ; 
 int /*<<< orphan*/  Version ; 
 int /*<<< orphan*/  cOutProf ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,double) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int cmsFLAGS_8BITS_DEVICELINK ; 
 int cmsFLAGS_BLACKPOINTCOMPENSATION ; 
 int cmsFLAGS_CLUT_POST_LINEARIZATION ; 
 int cmsFLAGS_CLUT_PRE_LINEARIZATION ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 int cmsFLAGS_GUESSDEVICECLASS ; 
 int cmsFLAGS_HIGHRESPRECALC ; 
 int cmsFLAGS_KEEP_SEQUENCE ; 
 int cmsFLAGS_LOWRESPRECALC ; 
 int cmsFLAGS_NOOPTIMIZE ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ lUse8bits ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  stderr ; 
 int xoptind ; 

int FUNC20(int argc, char *argv[])
{
    int i, nargs, rc;
    cmsHPROFILE Profiles[257];
    cmsHPROFILE hProfile;
    cmsUInt32Number dwFlags;
    cmsHTRANSFORM hTransform = NULL;
    cmsContext ContextID = NULL;

    // Here we are
    FUNC18(stderr, "little cms ICC device link generator - v2.2 [LittleCMS %2.2f]\n", LCMS_VERSION / 1000.0);
    FUNC17(stderr);

    // Initialize
    FUNC3(ContextID, "linkicc");
    rc = 0;

    // Get the options
    FUNC1(argc, argv);

    // How many profiles to link?
    nargs = (argc - xoptind);
    if (nargs < 1)
        return FUNC2(0);

    if (nargs > 255) {
        FUNC0("Holy profile! what are you trying to do with so many profiles!?");
        goto Cleanup;
    }

    // Open all profiles
    FUNC19(Profiles, 0, sizeof(Profiles));
    for (i=0; i < nargs; i++) {

        Profiles[i] = FUNC4(ContextID, argv[i + xoptind]);
        if (Profiles[i] == NULL) goto Cleanup;

        if (Verbose >= 1) {
            FUNC5(ContextID, Profiles[i]);
        }
    }

    // Ink limiting
    if (InkLimit != 400.0) {
        cmsColorSpaceSignature EndingColorSpace = FUNC12(ContextID, Profiles[nargs-1]);
        Profiles[nargs++] = FUNC8(ContextID, EndingColorSpace, InkLimit);
    }

    // Set the flags
    dwFlags = cmsFLAGS_KEEP_SEQUENCE;
    switch (PrecalcMode) {

        case 0: dwFlags |= cmsFLAGS_LOWRESPRECALC; break;
        case 2: dwFlags |= cmsFLAGS_HIGHRESPRECALC; break;
        case 1:
            if (NumOfGridPoints > 0)
                dwFlags |= FUNC11(NumOfGridPoints);
            break;

        default:
            {
                FUNC0("Unknown precalculation mode '%d'", PrecalcMode);
                goto Cleanup;
            }
    }

    if (BlackPointCompensation)
        dwFlags |= cmsFLAGS_BLACKPOINTCOMPENSATION;

    if (TagResult)
        dwFlags |= cmsFLAGS_GUESSDEVICECLASS;

    if (KeepLinearization)
        dwFlags |= cmsFLAGS_CLUT_PRE_LINEARIZATION|cmsFLAGS_CLUT_POST_LINEARIZATION;

    if (lUse8bits) dwFlags |= cmsFLAGS_8BITS_DEVICELINK;

     FUNC14(ContextID, ObserverAdaptationState);

    // Create the color transform. Specify 0 for the format is safe as the transform
    // is intended to be used only for the devicelink.
    hTransform = FUNC9(ContextID, Profiles, nargs, 0, 0, Intent, dwFlags|cmsFLAGS_NOOPTIMIZE);
    if (hTransform == NULL) {
        FUNC0("Transform creation failed");
        goto Cleanup;
    }

    hProfile =  FUNC16(ContextID, hTransform, Version, dwFlags);
    if (hProfile == NULL) {
        FUNC0("Devicelink creation failed");
        goto Cleanup;
    }

    FUNC6(ContextID, hProfile);
    FUNC15(ContextID, hProfile, Intent);

    if (FUNC13(ContextID, hProfile, cOutProf)) {

        if (Verbose > 0)
            FUNC18(stderr, "Ok");
    }
    else
        FUNC0("Error saving file!");

    FUNC7(ContextID, hProfile);


Cleanup:

    if (hTransform != NULL) FUNC10(ContextID, hTransform);
    for (i=0; i < nargs; i++) {

        if (Profiles[i] != NULL) FUNC7(ContextID, Profiles[i]);
    }

    return rc;
}