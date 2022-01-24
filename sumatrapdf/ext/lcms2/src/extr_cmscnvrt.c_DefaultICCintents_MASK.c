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
typedef  int /*<<< orphan*/  cmsVEC3 ;
typedef  size_t cmsUInt32Number ;
typedef  int /*<<< orphan*/  cmsStage ;
typedef  scalar_t__ cmsProfileClassSignature ;
typedef  int /*<<< orphan*/  cmsPipeline ;
typedef  int /*<<< orphan*/  cmsMAT3 ;
typedef  int /*<<< orphan*/  cmsHPROFILE ;
typedef  int /*<<< orphan*/  cmsFloat64Number ;
typedef  int /*<<< orphan*/  cmsContext ;
typedef  scalar_t__ cmsColorSpaceSignature ;
typedef  int cmsBool ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ *,size_t,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cmsAT_END ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  cmsERROR_COLORSPACE_CHECK ; 
 size_t cmsFLAGS_NONEGATIVES ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ cmsSigAbstractClass ; 
 scalar_t__ cmsSigCmykData ; 
 scalar_t__ cmsSigGrayData ; 
 scalar_t__ cmsSigLabData ; 
 scalar_t__ cmsSigLinkClass ; 
 scalar_t__ cmsSigNamedColorClass ; 
 scalar_t__ cmsSigRgbData ; 
 scalar_t__ cmsSigXYZData ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC18 (size_t) ; 

__attribute__((used)) static
cmsPipeline* FUNC19(cmsContext       ContextID,
                               cmsUInt32Number  nProfiles,
                               cmsUInt32Number  TheIntents[],
                               cmsHPROFILE      hProfiles[],
                               cmsBool          BPC[],
                               cmsFloat64Number AdaptationStates[],
                               cmsUInt32Number  dwFlags)
{
    cmsPipeline* Lut = NULL;
    cmsPipeline* Result;
    cmsHPROFILE hProfile;
    cmsMAT3 m;
    cmsVEC3 off;
    cmsColorSpaceSignature ColorSpaceIn, ColorSpaceOut = cmsSigLabData, CurrentColorSpace;
    cmsProfileClassSignature ClassSig;
    cmsUInt32Number  i, Intent;

    // For safety
    if (nProfiles == 0) return NULL;

    // Allocate an empty LUT for holding the result. 0 as channel count means 'undefined'
    Result = FUNC13(ContextID, 0, 0);
    if (Result == NULL) return NULL;

    CurrentColorSpace = FUNC10(ContextID, hProfiles[0]);

    for (i=0; i < nProfiles; i++) {

        cmsBool  lIsDeviceLink, lIsInput;

        hProfile      = hProfiles[i];
        ClassSig      = FUNC11(ContextID, hProfile);
        lIsDeviceLink = (ClassSig == cmsSigLinkClass || ClassSig == cmsSigAbstractClass );

        // First profile is used as input unless devicelink or abstract
        if ((i == 0) && !lIsDeviceLink) {
            lIsInput = TRUE;
        }
        else {
          // Else use profile in the input direction if current space is not PCS
        lIsInput      = (CurrentColorSpace != cmsSigXYZData) &&
                        (CurrentColorSpace != cmsSigLabData);
        }

        Intent        = TheIntents[i];

        if (lIsInput || lIsDeviceLink) {

            ColorSpaceIn    = FUNC10(ContextID, hProfile);
            ColorSpaceOut   = FUNC12(ContextID, hProfile);
        }
        else {

            ColorSpaceIn    = FUNC12(ContextID, hProfile);
            ColorSpaceOut   = FUNC10(ContextID, hProfile);
        }

        if (!FUNC1(ColorSpaceIn, CurrentColorSpace)) {

            FUNC17(ContextID, cmsERROR_COLORSPACE_CHECK, "ColorSpace mismatch");
            goto Error;
        }

        // If devicelink is found, then no custom intent is allowed and we can
        // read the LUT to be applied. Settings don't apply here.
        if (lIsDeviceLink || ((ClassSig == cmsSigNamedColorClass) && (nProfiles == 1))) {

            // Get the involved LUT from the profile
            Lut = FUNC4(ContextID, hProfile, Intent);
            if (Lut == NULL) goto Error;

            // What about abstract profiles?
             if (ClassSig == cmsSigAbstractClass && i > 0) {
                if (!FUNC2(ContextID, i, hProfiles, Intent, BPC[i], AdaptationStates[i], &m, &off)) goto Error;
             }
             else {
                FUNC3(ContextID, &m);
                FUNC8(ContextID, &off, 0, 0, 0);
             }


            if (!FUNC0(ContextID, Result, CurrentColorSpace, ColorSpaceIn, &m, &off)) goto Error;

        }
        else {

            if (lIsInput) {
                // Input direction means non-pcs connection, so proceed like devicelinks
                Lut = FUNC5(ContextID, hProfile, Intent);
                if (Lut == NULL) goto Error;
            }
            else {

                // Output direction means PCS connection. Intent may apply here
                Lut = FUNC6(ContextID, hProfile, Intent);
                if (Lut == NULL) goto Error;


                if (!FUNC2(ContextID, i, hProfiles, Intent, BPC[i], AdaptationStates[i], &m, &off)) goto Error;
                if (!FUNC0(ContextID, Result, CurrentColorSpace, ColorSpaceIn, &m, &off)) goto Error;

            }
        }

        // Concatenate to the output LUT
        if (!FUNC14(ContextID, Result, Lut))
            goto Error;

        FUNC15(ContextID, Lut);
        Lut = NULL;

        // Update current space
        CurrentColorSpace = ColorSpaceOut;
    }

    // Check for non-negatives clip
    if (dwFlags & cmsFLAGS_NONEGATIVES) {

           if (ColorSpaceOut == cmsSigGrayData ||
                  ColorSpaceOut == cmsSigRgbData ||
                  ColorSpaceOut == cmsSigCmykData) {

                  cmsStage* clip = FUNC7(ContextID, FUNC9(ContextID, ColorSpaceOut));
                  if (clip == NULL) goto Error;

                  if (!FUNC16(ContextID, Result, cmsAT_END, clip))
                         goto Error;
           }

    }

    return Result;

Error:

    if (Lut != NULL) FUNC15(ContextID, Lut);
    if (Result != NULL) FUNC15(ContextID, Result);
    return NULL;

    FUNC18(dwFlags);
}