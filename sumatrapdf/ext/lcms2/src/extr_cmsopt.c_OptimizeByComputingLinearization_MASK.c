#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_45__   TYPE_5__ ;
typedef  struct TYPE_44__   TYPE_4__ ;
typedef  struct TYPE_43__   TYPE_3__ ;
typedef  struct TYPE_42__   TYPE_2__ ;
typedef  struct TYPE_41__   TYPE_1__ ;

/* Type definitions */
typedef  size_t cmsUInt32Number ;
struct TYPE_41__ {int /*<<< orphan*/ * Table16; } ;
typedef  TYPE_1__ cmsToneCurve ;
struct TYPE_42__ {scalar_t__ Data; } ;
typedef  TYPE_2__ cmsStage ;
struct TYPE_43__ {size_t InputChannels; int /*<<< orphan*/  OutputChannels; } ;
typedef  TYPE_3__ cmsPipeline ;
typedef  size_t cmsFloat64Number ;
typedef  double cmsFloat32Number ;
typedef  int /*<<< orphan*/  cmsContext ;
typedef  scalar_t__ cmsColorSpaceSignature ;
typedef  size_t cmsBool ;
struct TYPE_44__ {size_t nCurves; TYPE_1__** TheCurves; } ;
typedef  TYPE_4__ _cmsStageToneCurvesData ;
struct TYPE_45__ {int /*<<< orphan*/  Params; } ;
typedef  TYPE_5__ _cmsStageCLutData ;
typedef  int /*<<< orphan*/  TransReverse ;
typedef  int /*<<< orphan*/  Trans ;
typedef  int /*<<< orphan*/  Prelin8Data ;
typedef  int /*<<< orphan*/  Prelin16Data ;

/* Variables and functions */
 size_t FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_3__*,scalar_t__,scalar_t__) ; 
 size_t INTENT_ABSOLUTE_COLORIMETRIC ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 size_t PRELINEARIZATION_POINTS ; 
 scalar_t__ PT_RGB ; 
 int /*<<< orphan*/  Prelin16dup ; 
 int /*<<< orphan*/  Prelin8dup ; 
 int /*<<< orphan*/  Prelin8free ; 
 int /*<<< orphan*/  PrelinEval16 ; 
 int /*<<< orphan*/  PrelinEval8 ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,TYPE_1__**,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  PrelinOpt16free ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 size_t TRUE ; 
 scalar_t__ FUNC5 (size_t) ; 
 scalar_t__ FUNC6 (size_t) ; 
 int /*<<< orphan*/  XFormSampler16 ; 
 scalar_t__ FUNC7 (size_t) ; 
 scalar_t__ FUNC8 (size_t) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (double) ; 
 size_t FUNC12 (int /*<<< orphan*/ ,scalar_t__,size_t) ; 
 TYPE_1__** FUNC13 (TYPE_2__*) ; 
 int /*<<< orphan*/  cmsAT_BEGIN ; 
 int /*<<< orphan*/  cmsAT_END ; 
 TYPE_1__* FUNC14 (int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ *) ; 
 size_t cmsFLAGS_CLUT_PRE_LINEARIZATION ; 
 size_t cmsFLAGS_NOWHITEONWHITEFIXUP ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int cmsMAXCHANNELS ; 
 TYPE_3__* FUNC18 (int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC19 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,double*,double*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 TYPE_2__* FUNC22 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 TYPE_2__* FUNC23 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ ,TYPE_2__*) ; 
 TYPE_1__* FUNC25 (int /*<<< orphan*/ ,size_t,TYPE_1__*) ; 
 scalar_t__ cmsSigCurveSetElemType ; 
 scalar_t__ cmsSigNamedColorElemType ; 
 TYPE_2__* FUNC26 (int /*<<< orphan*/ ,size_t,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC27 (int /*<<< orphan*/ ,size_t,TYPE_1__**) ; 
 scalar_t__ FUNC28 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 TYPE_2__* FUNC29 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC31 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC32 (size_t) ; 
 int /*<<< orphan*/  FUNC33 (TYPE_1__**,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static
cmsBool FUNC34(cmsContext ContextID, cmsPipeline** Lut, cmsUInt32Number Intent, cmsUInt32Number* InputFormat, cmsUInt32Number* OutputFormat, cmsUInt32Number* dwFlags)
{
    cmsPipeline* OriginalLut;
    cmsUInt32Number nGridPoints;
    cmsToneCurve *Trans[cmsMAXCHANNELS], *TransReverse[cmsMAXCHANNELS];
    cmsUInt32Number t, i;
    cmsFloat32Number v, In[cmsMAXCHANNELS], Out[cmsMAXCHANNELS];
    cmsBool lIsSuitable, lIsLinear;
    cmsPipeline* OptimizedLUT = NULL, *LutPlusCurves = NULL;
    cmsStage* OptimizedCLUTmpe;
    cmsColorSpaceSignature ColorSpace, OutputColorSpace;
    cmsStage* OptimizedPrelinMpe;
    cmsStage* mpe;
    cmsToneCurve** OptimizedPrelinCurves;
    _cmsStageCLutData* OptimizedPrelinCLUT;


    // This is a lossy optimization! does not apply in floating-point cases
    if (FUNC8(*InputFormat) || FUNC8(*OutputFormat)) return FALSE;

    // Only on chunky RGB
    if (FUNC5(*InputFormat)  != PT_RGB) return FALSE;
    if (FUNC6(*InputFormat)) return FALSE;

    if (FUNC5(*OutputFormat) != PT_RGB) return FALSE;
    if (FUNC6(*OutputFormat)) return FALSE;

    // On 16 bits, user has to specify the feature
    if (!FUNC7(*InputFormat)) {
        if (!(*dwFlags & cmsFLAGS_CLUT_PRE_LINEARIZATION)) return FALSE;
    }

    OriginalLut = *Lut;

   // Named color pipelines cannot be optimized either
   for (mpe = FUNC22(ContextID, OriginalLut);
         mpe != NULL;
         mpe = FUNC29(ContextID, mpe)) {
            if (FUNC31(ContextID, mpe) == cmsSigNamedColorElemType) return FALSE;
    }

    ColorSpace       = FUNC9(ContextID, (int) FUNC5(*InputFormat));
    OutputColorSpace = FUNC9(ContextID, (int) FUNC5(*OutputFormat));

    // Color space must be specified
    if (ColorSpace == (cmsColorSpaceSignature)0 ||
        OutputColorSpace == (cmsColorSpaceSignature)0) return FALSE;

    nGridPoints      = FUNC12(ContextID, ColorSpace, *dwFlags);

    // Empty gamma containers
    FUNC33(Trans, 0, sizeof(Trans));
    FUNC33(TransReverse, 0, sizeof(TransReverse));

    // If the last stage of the original lut are curves, and those curves are
    // degenerated, it is likely the transform is squeezing and clipping
    // the output from previous CLUT. We cannot optimize this case
    {
        cmsStage* last = FUNC23(ContextID, OriginalLut);

        if (FUNC31(ContextID, last) == cmsSigCurveSetElemType) {

            _cmsStageToneCurvesData* Data = (_cmsStageToneCurvesData*)FUNC28(ContextID, last);
            for (i = 0; i < Data->nCurves; i++) {
                if (FUNC1(Data->TheCurves[i]))
                    goto Error;
            }
        }
    }

    for (t = 0; t < OriginalLut ->InputChannels; t++) {
        Trans[t] = FUNC14(ContextID, PRELINEARIZATION_POINTS, NULL);
        if (Trans[t] == NULL) goto Error;
    }

    // Populate the curves
    for (i=0; i < PRELINEARIZATION_POINTS; i++) {

        v = (cmsFloat32Number) ((cmsFloat64Number) i / (PRELINEARIZATION_POINTS - 1));

        // Feed input with a gray ramp
        for (t=0; t < OriginalLut ->InputChannels; t++)
            In[t] = v;

        // Evaluate the gray value
        FUNC20(ContextID, In, Out, OriginalLut);

        // Store result in curve
        for (t=0; t < OriginalLut ->InputChannels; t++)
            Trans[t] ->Table16[i] = FUNC11(Out[t] * 65535.0);
    }

    // Slope-limit the obtained curves
    for (t = 0; t < OriginalLut ->InputChannels; t++)
        FUNC4(ContextID, Trans[t]);

    // Check for validity
    lIsSuitable = TRUE;
    lIsLinear   = TRUE;
    for (t=0; (lIsSuitable && (t < OriginalLut ->InputChannels)); t++) {

        // Exclude if already linear
        if (!FUNC16(ContextID, Trans[t]))
            lIsLinear = FALSE;

        // Exclude if non-monotonic
        if (!FUNC17(ContextID, Trans[t]))
            lIsSuitable = FALSE;

        if (FUNC1(Trans[t]))
            lIsSuitable = FALSE;
    }

    // If it is not suitable, just quit
    if (!lIsSuitable) goto Error;

    // Invert curves if possible
    for (t = 0; t < OriginalLut ->InputChannels; t++) {
        TransReverse[t] = FUNC25(ContextID, PRELINEARIZATION_POINTS, Trans[t]);
        if (TransReverse[t] == NULL) goto Error;
    }

    // Now inset the reversed curves at the begin of transform
    LutPlusCurves = FUNC19(ContextID, OriginalLut);
    if (LutPlusCurves == NULL) goto Error;

    if (!FUNC24(ContextID, LutPlusCurves, cmsAT_BEGIN, FUNC27(ContextID, OriginalLut ->InputChannels, TransReverse)))
        goto Error;

    // Create the result LUT
    OptimizedLUT = FUNC18(ContextID, OriginalLut ->InputChannels, OriginalLut ->OutputChannels);
    if (OptimizedLUT == NULL) goto Error;

    OptimizedPrelinMpe = FUNC27(ContextID, OriginalLut ->InputChannels, Trans);

    // Create and insert the curves at the beginning
    if (!FUNC24(ContextID, OptimizedLUT, cmsAT_BEGIN, OptimizedPrelinMpe))
        goto Error;

    // Allocate the CLUT for result
    OptimizedCLUTmpe = FUNC26(ContextID, nGridPoints, OriginalLut ->InputChannels, OriginalLut ->OutputChannels, NULL);

    // Add the CLUT to the destination LUT
    if (!FUNC24(ContextID, OptimizedLUT, cmsAT_END, OptimizedCLUTmpe))
        goto Error;

    // Resample the LUT
    if (!FUNC30(ContextID, OptimizedCLUTmpe, XFormSampler16, (void*) LutPlusCurves, 0)) goto Error;

    // Free resources
    for (t = 0; t < OriginalLut ->InputChannels; t++) {

        if (Trans[t]) FUNC15(ContextID, Trans[t]);
        if (TransReverse[t]) FUNC15(ContextID, TransReverse[t]);
    }

    FUNC21(ContextID, LutPlusCurves);


    OptimizedPrelinCurves = FUNC13(OptimizedPrelinMpe);
    OptimizedPrelinCLUT   = (_cmsStageCLutData*) OptimizedCLUTmpe ->Data;

    // Set the evaluator if 8-bit
    if (FUNC7(*InputFormat)) {

        Prelin8Data* p8 = FUNC3(ContextID,
                                                OptimizedPrelinCLUT ->Params,
                                                OptimizedPrelinCurves);
        if (p8 == NULL) return FALSE;

        FUNC10(ContextID, OptimizedLUT, PrelinEval8, (void*) p8, Prelin8free, Prelin8dup);

    }
    else
    {
        Prelin16Data* p16 = FUNC2(ContextID,
            OptimizedPrelinCLUT ->Params,
            3, OptimizedPrelinCurves, 3, NULL);
        if (p16 == NULL) return FALSE;

        FUNC10(ContextID, OptimizedLUT, PrelinEval16, (void*) p16, PrelinOpt16free, Prelin16dup);

    }

    // Don't fix white on absolute colorimetric
    if (Intent == INTENT_ABSOLUTE_COLORIMETRIC)
        *dwFlags |= cmsFLAGS_NOWHITEONWHITEFIXUP;

    if (!(*dwFlags & cmsFLAGS_NOWHITEONWHITEFIXUP)) {

        if (!FUNC0(ContextID, OptimizedLUT, ColorSpace, OutputColorSpace)) {

            return FALSE;
        }
    }

    // And return the obtained LUT

    FUNC21(ContextID, OriginalLut);
    *Lut = OptimizedLUT;
    return TRUE;

Error:

    for (t = 0; t < OriginalLut ->InputChannels; t++) {

        if (Trans[t]) FUNC15(ContextID, Trans[t]);
        if (TransReverse[t]) FUNC15(ContextID, TransReverse[t]);
    }

    if (LutPlusCurves != NULL) FUNC21(ContextID, LutPlusCurves);
    if (OptimizedLUT != NULL) FUNC21(ContextID, OptimizedLUT);

    return FALSE;

    FUNC32(Intent);
    FUNC32(lIsLinear);
}