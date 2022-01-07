
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ cmsUInt32Number ;
typedef int cmsUInt16Number ;
typedef int cmsToneCurve ;
typedef int cmsStage ;
struct TYPE_5__ {scalar_t__ InputChannels; scalar_t__ OutputChannels; } ;
typedef TYPE_1__ cmsPipeline ;
typedef int cmsContext ;
typedef int cmsColorSpaceSignature ;
typedef int cmsBool ;


 int FALSE ;
 int PatchLUT (int ,int *,int *,int *,scalar_t__,scalar_t__) ;
 int TRUE ;
 scalar_t__ WhitesAreEqual (scalar_t__,int *,int *) ;
 int _cmsEndPointsBySpace (int ,int **,int *,scalar_t__*) ;
 int ** _cmsStageGetPtrToCurveSet (int *) ;
 int cmsEvalToneCurve16 (int ,int *,int ) ;
 int cmsFreeToneCurve (int ,int *) ;
 int cmsMAXCHANNELS ;
 int cmsPipelineCheckAndRetreiveStages (int ,TYPE_1__*,int,int ,int **,...) ;
 int cmsPipelineEval16 (int ,int *,int *,TYPE_1__*) ;
 int * cmsReverseToneCurve (int ,int *) ;
 int cmsSigCLutElemType ;
 int cmsSigCurveSetElemType ;

__attribute__((used)) static
cmsBool FixWhiteMisalignment(cmsContext ContextID, cmsPipeline* Lut, cmsColorSpaceSignature EntryColorSpace, cmsColorSpaceSignature ExitColorSpace)
{
    cmsUInt16Number *WhitePointIn, *WhitePointOut;
    cmsUInt16Number WhiteIn[cmsMAXCHANNELS], WhiteOut[cmsMAXCHANNELS], ObtainedOut[cmsMAXCHANNELS];
    cmsUInt32Number i, nOuts, nIns;
    cmsStage *PreLin = ((void*)0), *CLUT = ((void*)0), *PostLin = ((void*)0);

    if (!_cmsEndPointsBySpace(EntryColorSpace,
        &WhitePointIn, ((void*)0), &nIns)) return FALSE;

    if (!_cmsEndPointsBySpace(ExitColorSpace,
        &WhitePointOut, ((void*)0), &nOuts)) return FALSE;


    if (Lut ->InputChannels != nIns) return FALSE;
    if (Lut ->OutputChannels != nOuts) return FALSE;

    cmsPipelineEval16(ContextID, WhitePointIn, ObtainedOut, Lut);

    if (WhitesAreEqual(nOuts, WhitePointOut, ObtainedOut)) return TRUE;


    if (!cmsPipelineCheckAndRetreiveStages(ContextID, Lut, 3, cmsSigCurveSetElemType, cmsSigCLutElemType, cmsSigCurveSetElemType, &PreLin, &CLUT, &PostLin))
        if (!cmsPipelineCheckAndRetreiveStages(ContextID, Lut, 2, cmsSigCurveSetElemType, cmsSigCLutElemType, &PreLin, &CLUT))
            if (!cmsPipelineCheckAndRetreiveStages(ContextID, Lut, 2, cmsSigCLutElemType, cmsSigCurveSetElemType, &CLUT, &PostLin))
                if (!cmsPipelineCheckAndRetreiveStages(ContextID, Lut, 1, cmsSigCLutElemType, &CLUT))
                    return FALSE;


    if (PreLin) {

        cmsToneCurve** Curves = _cmsStageGetPtrToCurveSet(PreLin);

        for (i=0; i < nIns; i++) {
            WhiteIn[i] = cmsEvalToneCurve16(ContextID, Curves[i], WhitePointIn[i]);
        }
    }
    else {
        for (i=0; i < nIns; i++)
            WhiteIn[i] = WhitePointIn[i];
    }



    if (PostLin) {

        cmsToneCurve** Curves = _cmsStageGetPtrToCurveSet(PostLin);

        for (i=0; i < nOuts; i++) {

            cmsToneCurve* InversePostLin = cmsReverseToneCurve(ContextID, Curves[i]);
            if (InversePostLin == ((void*)0)) {
                WhiteOut[i] = WhitePointOut[i];

            } else {

                WhiteOut[i] = cmsEvalToneCurve16(ContextID, InversePostLin, WhitePointOut[i]);
                cmsFreeToneCurve(ContextID, InversePostLin);
            }
        }
    }
    else {
        for (i=0; i < nOuts; i++)
            WhiteOut[i] = WhitePointOut[i];
    }


    PatchLUT(ContextID, CLUT, WhiteIn, WhiteOut, nOuts, nIns);

    return TRUE;
}
