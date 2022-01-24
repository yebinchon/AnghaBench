#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ cmsUInt32Number ;
typedef  int /*<<< orphan*/  cmsUInt16Number ;
typedef  int /*<<< orphan*/  cmsToneCurve ;
typedef  int /*<<< orphan*/  cmsStage ;
struct TYPE_5__ {scalar_t__ InputChannels; scalar_t__ OutputChannels; } ;
typedef  TYPE_1__ cmsPipeline ;
typedef  int /*<<< orphan*/  cmsContext ;
typedef  int /*<<< orphan*/  cmsColorSpaceSignature ;
typedef  int /*<<< orphan*/  cmsBool ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC1 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/ ** FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int cmsMAXCHANNELS ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_1__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ **,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  cmsSigCLutElemType ; 
 int /*<<< orphan*/  cmsSigCurveSetElemType ; 

__attribute__((used)) static
cmsBool FUNC9(cmsContext ContextID, cmsPipeline* Lut, cmsColorSpaceSignature EntryColorSpace, cmsColorSpaceSignature ExitColorSpace)
{
    cmsUInt16Number *WhitePointIn, *WhitePointOut;
    cmsUInt16Number  WhiteIn[cmsMAXCHANNELS], WhiteOut[cmsMAXCHANNELS], ObtainedOut[cmsMAXCHANNELS];
    cmsUInt32Number i, nOuts, nIns;
    cmsStage *PreLin = NULL, *CLUT = NULL, *PostLin = NULL;

    if (!FUNC2(EntryColorSpace,
        &WhitePointIn, NULL, &nIns)) return FALSE;

    if (!FUNC2(ExitColorSpace,
        &WhitePointOut, NULL, &nOuts)) return FALSE;

    // It needs to be fixed?
    if (Lut ->InputChannels != nIns) return FALSE;
    if (Lut ->OutputChannels != nOuts) return FALSE;

    FUNC7(ContextID, WhitePointIn, ObtainedOut, Lut);

    if (FUNC1(nOuts, WhitePointOut, ObtainedOut)) return TRUE; // whites already match

    // Check if the LUT comes as Prelin, CLUT or Postlin. We allow all combinations
    if (!FUNC6(ContextID, Lut, 3, cmsSigCurveSetElemType, cmsSigCLutElemType, cmsSigCurveSetElemType, &PreLin, &CLUT, &PostLin))
        if (!FUNC6(ContextID, Lut, 2, cmsSigCurveSetElemType, cmsSigCLutElemType, &PreLin, &CLUT))
            if (!FUNC6(ContextID, Lut, 2, cmsSigCLutElemType, cmsSigCurveSetElemType, &CLUT, &PostLin))
                if (!FUNC6(ContextID, Lut, 1, cmsSigCLutElemType, &CLUT))
                    return FALSE;

    // We need to interpolate white points of both, pre and post curves
    if (PreLin) {

        cmsToneCurve** Curves = FUNC3(PreLin);

        for (i=0; i < nIns; i++) {
            WhiteIn[i] = FUNC4(ContextID, Curves[i], WhitePointIn[i]);
        }
    }
    else {
        for (i=0; i < nIns; i++)
            WhiteIn[i] = WhitePointIn[i];
    }

    // If any post-linearization, we need to find how is represented white before the curve, do
    // a reverse interpolation in this case.
    if (PostLin) {

        cmsToneCurve** Curves = FUNC3(PostLin);

        for (i=0; i < nOuts; i++) {

            cmsToneCurve* InversePostLin = FUNC8(ContextID, Curves[i]);
            if (InversePostLin == NULL) {
                WhiteOut[i] = WhitePointOut[i];

            } else {

                WhiteOut[i] = FUNC4(ContextID, InversePostLin, WhitePointOut[i]);
                FUNC5(ContextID, InversePostLin);
            }
        }
    }
    else {
        for (i=0; i < nOuts; i++)
            WhiteOut[i] = WhitePointOut[i];
    }

    // Ok, proceed with patching. May fail and we don't care if it fails
    FUNC0(ContextID, CLUT, WhiteIn, WhiteOut, nOuts, nIns);

    return TRUE;
}