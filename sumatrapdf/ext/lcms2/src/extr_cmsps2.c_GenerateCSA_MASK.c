#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  cmsUInt32Number ;
typedef  int /*<<< orphan*/  cmsStage ;
typedef  int /*<<< orphan*/  cmsPipeline ;
struct TYPE_6__ {int /*<<< orphan*/  UsedSpace; } ;
typedef  TYPE_1__ cmsIOHANDLER ;
typedef  int /*<<< orphan*/  cmsHPROFILE ;
typedef  int /*<<< orphan*/  cmsContext ;
typedef  scalar_t__ cmsColorSpaceSignature ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cmsERROR_COLORSPACE_CHECK ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  cmsSigCurveSetElemType ; 
 scalar_t__ cmsSigLabData ; 
 int /*<<< orphan*/  cmsSigMatrixElemType ; 
 scalar_t__ cmsSigNamedColorClass ; 
 scalar_t__ cmsSigXYZData ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static
cmsUInt32Number FUNC9(cmsContext ContextID,
                            cmsHPROFILE hProfile,
                            cmsUInt32Number Intent,
                            cmsUInt32Number dwFlags,
                            cmsIOHANDLER* mem)
{
    cmsUInt32Number dwBytesUsed;
    cmsPipeline* lut = NULL;
    cmsStage* Matrix, *Shaper;


    // Is a named color profile?
    if (FUNC4(ContextID, hProfile) == cmsSigNamedColorClass) {

        if (!FUNC2(ContextID, mem, hProfile, Intent)) goto Error;
    }
    else {


        // Any profile class are allowed (including devicelink), but
        // output (PCS) colorspace must be XYZ or Lab
        cmsColorSpaceSignature ColorSpace = FUNC5(ContextID, hProfile);

        if (ColorSpace != cmsSigXYZData &&
            ColorSpace != cmsSigLabData) {

                FUNC8(ContextID, cmsERROR_COLORSPACE_CHECK, "Invalid output color space");
                goto Error;
        }


        // Read the lut with all necessary conversion stages
        lut = FUNC3(ContextID, hProfile, Intent);
        if (lut == NULL) goto Error;


        // Tone curves + matrix can be implemented without any LUT
        if (FUNC6(ContextID, lut, 2, cmsSigCurveSetElemType, cmsSigMatrixElemType, &Shaper, &Matrix)) {

            if (!FUNC1(ContextID, mem, hProfile, Matrix, Shaper)) goto Error;

        }
        else {
           // We need a LUT for the rest
           if (!FUNC0(ContextID, mem, hProfile, Intent, dwFlags)) goto Error;
        }
    }


    // Done, keep memory usage
    dwBytesUsed = mem ->UsedSpace;

    // Get rid of LUT
    if (lut != NULL) FUNC7(ContextID, lut);

    // Finally, return used byte count
    return dwBytesUsed;

Error:
    if (lut != NULL) FUNC7(ContextID, lut);
    return 0;
}