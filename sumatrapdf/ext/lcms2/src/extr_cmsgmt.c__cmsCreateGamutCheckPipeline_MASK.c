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
typedef  int /*<<< orphan*/ * cmsHPROFILE ;
typedef  double cmsFloat64Number ;
typedef  int /*<<< orphan*/  cmsContext ;
typedef  int /*<<< orphan*/  cmsColorSpaceSignature ;
typedef  scalar_t__ cmsBool ;
struct TYPE_3__ {double Thereshold; void* hReverse; void* hForward; void* hInput; } ;
typedef  TYPE_1__ GAMUTCHAIN ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 double ERR_THERESHOLD ; 
 int /*<<< orphan*/  GamutSampler ; 
 int INTENT_RELATIVE_COLORIMETRIC ; 
 int TYPE_Lab_DBL ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cmsAT_BEGIN ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 void* FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ **,scalar_t__*,int*,double*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 void* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  cmsERROR_RANGE ; 
 int /*<<< orphan*/  cmsFLAGS_HIGHRESPRECALC ; 
 int /*<<< orphan*/  cmsFLAGS_NOCACHE ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/ * FUNC15 (int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

cmsPipeline* FUNC18(cmsContext ContextID,
                                          cmsHPROFILE hProfiles[],
                                          cmsBool  BPC[],
                                          cmsUInt32Number Intents[],
                                          cmsFloat64Number AdaptationStates[],
                                          cmsUInt32Number nGamutPCSposition,
                                          cmsHPROFILE hGamut)
{
    cmsHPROFILE hLab;
    cmsPipeline* Gamut;
    cmsStage* CLUT;
    cmsUInt32Number dwFormat;
    GAMUTCHAIN Chain;
    cmsUInt32Number nChannels, nGridpoints;
    cmsColorSpaceSignature ColorSpace;
    cmsUInt32Number i;
    cmsHPROFILE ProfileList[256];
    cmsBool     BPCList[256];
    cmsFloat64Number AdaptationList[256];
    cmsUInt32Number IntentList[256];

    FUNC17(&Chain, 0, sizeof(GAMUTCHAIN));


    if (nGamutPCSposition <= 0 || nGamutPCSposition > 255) {
        FUNC14(ContextID, cmsERROR_RANGE, "Wrong position of PCS. 1..255 expected, %d found.", nGamutPCSposition);
        return NULL;
    }

    hLab = FUNC6(ContextID, NULL);
    if (hLab == NULL) return NULL;


    // The figure of merit. On matrix-shaper profiles, should be almost zero as
    // the conversion is pretty exact. On LUT based profiles, different resolutions
    // of input and output CLUT may result in differences.

    if (FUNC10(ContextID, hGamut)) {

        Chain.Thereshold = 1.0;
    }
    else {
        Chain.Thereshold = ERR_THERESHOLD;
    }


    // Create a copy of parameters
    for (i=0; i < nGamutPCSposition; i++) {
        ProfileList[i]    = hProfiles[i];
        BPCList[i]        = BPC[i];
        AdaptationList[i] = AdaptationStates[i];
        IntentList[i]     = Intents[i];
    }

    // Fill Lab identity
    ProfileList[nGamutPCSposition] = hLab;
    BPCList[nGamutPCSposition] = 0;
    AdaptationList[nGamutPCSposition] = 1.0;
    IntentList[nGamutPCSposition] = INTENT_RELATIVE_COLORIMETRIC;


    ColorSpace  = FUNC9(ContextID, hGamut);

    nChannels   = FUNC3(ContextID, ColorSpace);
    nGridpoints = FUNC2(ContextID, ColorSpace, cmsFLAGS_HIGHRESPRECALC);
    dwFormat    = (FUNC1(nChannels)|FUNC0(2));

    // 16 bits to Lab double
    Chain.hInput = FUNC5(ContextID,
        nGamutPCSposition + 1,
        ProfileList,
        BPCList,
        IntentList,
        AdaptationList,
        NULL, 0,
        dwFormat, TYPE_Lab_DBL,
        cmsFLAGS_NOCACHE);


    // Does create the forward step. Lab double to device
    dwFormat    = (FUNC1(nChannels)|FUNC0(2));
    Chain.hForward = FUNC7(ContextID,
        hLab, TYPE_Lab_DBL,
        hGamut, dwFormat,
        INTENT_RELATIVE_COLORIMETRIC,
        cmsFLAGS_NOCACHE);

    // Does create the backwards step
    Chain.hReverse = FUNC7(ContextID, hGamut, dwFormat,
        hLab, TYPE_Lab_DBL,
        INTENT_RELATIVE_COLORIMETRIC,
        cmsFLAGS_NOCACHE);


    // All ok?
    if (Chain.hInput && Chain.hForward && Chain.hReverse) {

        // Go on, try to compute gamut LUT from PCS. This consist on a single channel containing
        // dE when doing a transform back and forth on the colorimetric intent.

        Gamut = FUNC11(ContextID, 3, 1);
        if (Gamut != NULL) {

            CLUT = FUNC15(ContextID, nGridpoints, nChannels, 1, NULL);
            if (!FUNC13(ContextID, Gamut, cmsAT_BEGIN, CLUT)) {
                FUNC12(ContextID, Gamut);
                Gamut = NULL;
            }
            else {
                FUNC16(ContextID, CLUT, GamutSampler, (void*) &Chain, 0);
            }
        }
    }
    else
        Gamut = NULL;   // Didn't work...

    // Free all needed stuff.
    if (Chain.hInput)   FUNC8(ContextID, Chain.hInput);
    if (Chain.hForward) FUNC8(ContextID, Chain.hForward);
    if (Chain.hReverse) FUNC8(ContextID, Chain.hReverse);
    if (hLab) FUNC4(ContextID, hLab);

    // And return computed hull
    return Gamut;
}