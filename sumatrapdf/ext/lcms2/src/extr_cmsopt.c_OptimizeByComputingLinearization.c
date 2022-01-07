
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_45__ TYPE_5__ ;
typedef struct TYPE_44__ TYPE_4__ ;
typedef struct TYPE_43__ TYPE_3__ ;
typedef struct TYPE_42__ TYPE_2__ ;
typedef struct TYPE_41__ TYPE_1__ ;


typedef size_t cmsUInt32Number ;
struct TYPE_41__ {int * Table16; } ;
typedef TYPE_1__ cmsToneCurve ;
struct TYPE_42__ {scalar_t__ Data; } ;
typedef TYPE_2__ cmsStage ;
struct TYPE_43__ {size_t InputChannels; int OutputChannels; } ;
typedef TYPE_3__ cmsPipeline ;
typedef size_t cmsFloat64Number ;
typedef double cmsFloat32Number ;
typedef int cmsContext ;
typedef scalar_t__ cmsColorSpaceSignature ;
typedef size_t cmsBool ;
struct TYPE_44__ {size_t nCurves; TYPE_1__** TheCurves; } ;
typedef TYPE_4__ _cmsStageToneCurvesData ;
struct TYPE_45__ {int Params; } ;
typedef TYPE_5__ _cmsStageCLutData ;
typedef int TransReverse ;
typedef int Trans ;
typedef int Prelin8Data ;
typedef int Prelin16Data ;


 size_t FALSE ;
 int FixWhiteMisalignment (int ,TYPE_3__*,scalar_t__,scalar_t__) ;
 size_t INTENT_ABSOLUTE_COLORIMETRIC ;
 scalar_t__ IsDegenerated (TYPE_1__*) ;
 size_t PRELINEARIZATION_POINTS ;
 scalar_t__ PT_RGB ;
 int Prelin16dup ;
 int Prelin8dup ;
 int Prelin8free ;
 int PrelinEval16 ;
 int PrelinEval8 ;
 int * PrelinOpt16alloc (int ,int ,int,TYPE_1__**,int,int *) ;
 int PrelinOpt16free ;
 int * PrelinOpt8alloc (int ,int ,TYPE_1__**) ;
 int SlopeLimiting (int ,TYPE_1__*) ;
 size_t TRUE ;
 scalar_t__ T_COLORSPACE (size_t) ;
 scalar_t__ T_PLANAR (size_t) ;
 int XFormSampler16 ;
 scalar_t__ _cmsFormatterIs8bit (size_t) ;
 scalar_t__ _cmsFormatterIsFloat (size_t) ;
 scalar_t__ _cmsICCcolorSpace (int ,int) ;
 int _cmsPipelineSetOptimizationParameters (int ,TYPE_3__*,int ,void*,int ,int ) ;
 int _cmsQuickSaturateWord (double) ;
 size_t _cmsReasonableGridpointsByColorspace (int ,scalar_t__,size_t) ;
 TYPE_1__** _cmsStageGetPtrToCurveSet (TYPE_2__*) ;
 int cmsAT_BEGIN ;
 int cmsAT_END ;
 TYPE_1__* cmsBuildTabulatedToneCurve16 (int ,size_t,int *) ;
 size_t cmsFLAGS_CLUT_PRE_LINEARIZATION ;
 size_t cmsFLAGS_NOWHITEONWHITEFIXUP ;
 int cmsFreeToneCurve (int ,TYPE_1__*) ;
 int cmsIsToneCurveLinear (int ,TYPE_1__*) ;
 int cmsIsToneCurveMonotonic (int ,TYPE_1__*) ;
 int cmsMAXCHANNELS ;
 TYPE_3__* cmsPipelineAlloc (int ,size_t,int ) ;
 TYPE_3__* cmsPipelineDup (int ,TYPE_3__*) ;
 int cmsPipelineEvalFloat (int ,double*,double*,TYPE_3__*) ;
 int cmsPipelineFree (int ,TYPE_3__*) ;
 TYPE_2__* cmsPipelineGetPtrToFirstStage (int ,TYPE_3__*) ;
 TYPE_2__* cmsPipelineGetPtrToLastStage (int ,TYPE_3__*) ;
 int cmsPipelineInsertStage (int ,TYPE_3__*,int ,TYPE_2__*) ;
 TYPE_1__* cmsReverseToneCurveEx (int ,size_t,TYPE_1__*) ;
 scalar_t__ cmsSigCurveSetElemType ;
 scalar_t__ cmsSigNamedColorElemType ;
 TYPE_2__* cmsStageAllocCLut16bit (int ,size_t,size_t,int ,int *) ;
 TYPE_2__* cmsStageAllocToneCurves (int ,size_t,TYPE_1__**) ;
 scalar_t__ cmsStageData (int ,TYPE_2__*) ;
 TYPE_2__* cmsStageNext (int ,TYPE_2__*) ;
 int cmsStageSampleCLut16bit (int ,TYPE_2__*,int ,void*,int ) ;
 scalar_t__ cmsStageType (int ,TYPE_2__*) ;
 int cmsUNUSED_PARAMETER (size_t) ;
 int memset (TYPE_1__**,int ,int) ;

__attribute__((used)) static
cmsBool OptimizeByComputingLinearization(cmsContext ContextID, cmsPipeline** Lut, cmsUInt32Number Intent, cmsUInt32Number* InputFormat, cmsUInt32Number* OutputFormat, cmsUInt32Number* dwFlags)
{
    cmsPipeline* OriginalLut;
    cmsUInt32Number nGridPoints;
    cmsToneCurve *Trans[cmsMAXCHANNELS], *TransReverse[cmsMAXCHANNELS];
    cmsUInt32Number t, i;
    cmsFloat32Number v, In[cmsMAXCHANNELS], Out[cmsMAXCHANNELS];
    cmsBool lIsSuitable, lIsLinear;
    cmsPipeline* OptimizedLUT = ((void*)0), *LutPlusCurves = ((void*)0);
    cmsStage* OptimizedCLUTmpe;
    cmsColorSpaceSignature ColorSpace, OutputColorSpace;
    cmsStage* OptimizedPrelinMpe;
    cmsStage* mpe;
    cmsToneCurve** OptimizedPrelinCurves;
    _cmsStageCLutData* OptimizedPrelinCLUT;



    if (_cmsFormatterIsFloat(*InputFormat) || _cmsFormatterIsFloat(*OutputFormat)) return FALSE;


    if (T_COLORSPACE(*InputFormat) != PT_RGB) return FALSE;
    if (T_PLANAR(*InputFormat)) return FALSE;

    if (T_COLORSPACE(*OutputFormat) != PT_RGB) return FALSE;
    if (T_PLANAR(*OutputFormat)) return FALSE;


    if (!_cmsFormatterIs8bit(*InputFormat)) {
        if (!(*dwFlags & cmsFLAGS_CLUT_PRE_LINEARIZATION)) return FALSE;
    }

    OriginalLut = *Lut;


   for (mpe = cmsPipelineGetPtrToFirstStage(ContextID, OriginalLut);
         mpe != ((void*)0);
         mpe = cmsStageNext(ContextID, mpe)) {
            if (cmsStageType(ContextID, mpe) == cmsSigNamedColorElemType) return FALSE;
    }

    ColorSpace = _cmsICCcolorSpace(ContextID, (int) T_COLORSPACE(*InputFormat));
    OutputColorSpace = _cmsICCcolorSpace(ContextID, (int) T_COLORSPACE(*OutputFormat));


    if (ColorSpace == (cmsColorSpaceSignature)0 ||
        OutputColorSpace == (cmsColorSpaceSignature)0) return FALSE;

    nGridPoints = _cmsReasonableGridpointsByColorspace(ContextID, ColorSpace, *dwFlags);


    memset(Trans, 0, sizeof(Trans));
    memset(TransReverse, 0, sizeof(TransReverse));




    {
        cmsStage* last = cmsPipelineGetPtrToLastStage(ContextID, OriginalLut);

        if (cmsStageType(ContextID, last) == cmsSigCurveSetElemType) {

            _cmsStageToneCurvesData* Data = (_cmsStageToneCurvesData*)cmsStageData(ContextID, last);
            for (i = 0; i < Data->nCurves; i++) {
                if (IsDegenerated(Data->TheCurves[i]))
                    goto Error;
            }
        }
    }

    for (t = 0; t < OriginalLut ->InputChannels; t++) {
        Trans[t] = cmsBuildTabulatedToneCurve16(ContextID, PRELINEARIZATION_POINTS, ((void*)0));
        if (Trans[t] == ((void*)0)) goto Error;
    }


    for (i=0; i < PRELINEARIZATION_POINTS; i++) {

        v = (cmsFloat32Number) ((cmsFloat64Number) i / (PRELINEARIZATION_POINTS - 1));


        for (t=0; t < OriginalLut ->InputChannels; t++)
            In[t] = v;


        cmsPipelineEvalFloat(ContextID, In, Out, OriginalLut);


        for (t=0; t < OriginalLut ->InputChannels; t++)
            Trans[t] ->Table16[i] = _cmsQuickSaturateWord(Out[t] * 65535.0);
    }


    for (t = 0; t < OriginalLut ->InputChannels; t++)
        SlopeLimiting(ContextID, Trans[t]);


    lIsSuitable = TRUE;
    lIsLinear = TRUE;
    for (t=0; (lIsSuitable && (t < OriginalLut ->InputChannels)); t++) {


        if (!cmsIsToneCurveLinear(ContextID, Trans[t]))
            lIsLinear = FALSE;


        if (!cmsIsToneCurveMonotonic(ContextID, Trans[t]))
            lIsSuitable = FALSE;

        if (IsDegenerated(Trans[t]))
            lIsSuitable = FALSE;
    }


    if (!lIsSuitable) goto Error;


    for (t = 0; t < OriginalLut ->InputChannels; t++) {
        TransReverse[t] = cmsReverseToneCurveEx(ContextID, PRELINEARIZATION_POINTS, Trans[t]);
        if (TransReverse[t] == ((void*)0)) goto Error;
    }


    LutPlusCurves = cmsPipelineDup(ContextID, OriginalLut);
    if (LutPlusCurves == ((void*)0)) goto Error;

    if (!cmsPipelineInsertStage(ContextID, LutPlusCurves, cmsAT_BEGIN, cmsStageAllocToneCurves(ContextID, OriginalLut ->InputChannels, TransReverse)))
        goto Error;


    OptimizedLUT = cmsPipelineAlloc(ContextID, OriginalLut ->InputChannels, OriginalLut ->OutputChannels);
    if (OptimizedLUT == ((void*)0)) goto Error;

    OptimizedPrelinMpe = cmsStageAllocToneCurves(ContextID, OriginalLut ->InputChannels, Trans);


    if (!cmsPipelineInsertStage(ContextID, OptimizedLUT, cmsAT_BEGIN, OptimizedPrelinMpe))
        goto Error;


    OptimizedCLUTmpe = cmsStageAllocCLut16bit(ContextID, nGridPoints, OriginalLut ->InputChannels, OriginalLut ->OutputChannels, ((void*)0));


    if (!cmsPipelineInsertStage(ContextID, OptimizedLUT, cmsAT_END, OptimizedCLUTmpe))
        goto Error;


    if (!cmsStageSampleCLut16bit(ContextID, OptimizedCLUTmpe, XFormSampler16, (void*) LutPlusCurves, 0)) goto Error;


    for (t = 0; t < OriginalLut ->InputChannels; t++) {

        if (Trans[t]) cmsFreeToneCurve(ContextID, Trans[t]);
        if (TransReverse[t]) cmsFreeToneCurve(ContextID, TransReverse[t]);
    }

    cmsPipelineFree(ContextID, LutPlusCurves);


    OptimizedPrelinCurves = _cmsStageGetPtrToCurveSet(OptimizedPrelinMpe);
    OptimizedPrelinCLUT = (_cmsStageCLutData*) OptimizedCLUTmpe ->Data;


    if (_cmsFormatterIs8bit(*InputFormat)) {

        Prelin8Data* p8 = PrelinOpt8alloc(ContextID,
                                                OptimizedPrelinCLUT ->Params,
                                                OptimizedPrelinCurves);
        if (p8 == ((void*)0)) return FALSE;

        _cmsPipelineSetOptimizationParameters(ContextID, OptimizedLUT, PrelinEval8, (void*) p8, Prelin8free, Prelin8dup);

    }
    else
    {
        Prelin16Data* p16 = PrelinOpt16alloc(ContextID,
            OptimizedPrelinCLUT ->Params,
            3, OptimizedPrelinCurves, 3, ((void*)0));
        if (p16 == ((void*)0)) return FALSE;

        _cmsPipelineSetOptimizationParameters(ContextID, OptimizedLUT, PrelinEval16, (void*) p16, PrelinOpt16free, Prelin16dup);

    }


    if (Intent == INTENT_ABSOLUTE_COLORIMETRIC)
        *dwFlags |= cmsFLAGS_NOWHITEONWHITEFIXUP;

    if (!(*dwFlags & cmsFLAGS_NOWHITEONWHITEFIXUP)) {

        if (!FixWhiteMisalignment(ContextID, OptimizedLUT, ColorSpace, OutputColorSpace)) {

            return FALSE;
        }
    }



    cmsPipelineFree(ContextID, OriginalLut);
    *Lut = OptimizedLUT;
    return TRUE;

Error:

    for (t = 0; t < OriginalLut ->InputChannels; t++) {

        if (Trans[t]) cmsFreeToneCurve(ContextID, Trans[t]);
        if (TransReverse[t]) cmsFreeToneCurve(ContextID, TransReverse[t]);
    }

    if (LutPlusCurves != ((void*)0)) cmsPipelineFree(ContextID, LutPlusCurves);
    if (OptimizedLUT != ((void*)0)) cmsPipelineFree(ContextID, OptimizedLUT);

    return FALSE;

    cmsUNUSED_PARAMETER(Intent);
    cmsUNUSED_PARAMETER(lIsLinear);
}
