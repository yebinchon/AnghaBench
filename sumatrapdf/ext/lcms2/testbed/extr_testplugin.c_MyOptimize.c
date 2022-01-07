
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int cmsUInt32Number ;
typedef int cmsStage ;
typedef int cmsPipeline ;
typedef int cmsContext ;
typedef int cmsBool ;
struct TYPE_2__ {int nCurves; int * TheCurves; } ;
typedef TYPE_1__ _cmsStageToneCurvesData ;


 int FALSE ;
 int FastEvaluateCurves ;
 int TRUE ;
 int _cmsPipelineSetOptimizationParameters (int ,int *,int ,int *,int *,int *) ;
 double cmsEstimateGamma (int ,int ,double) ;
 int cmsFLAGS_NOCACHE ;
 int * cmsPipelineGetPtrToFirstStage (int ,int *) ;
 scalar_t__ cmsSigCurveSetElemType ;
 scalar_t__ cmsStageData (int ,int *) ;
 int * cmsStageNext (int ,int *) ;
 scalar_t__ cmsStageType (int ,int *) ;

__attribute__((used)) static
cmsBool MyOptimize(cmsContext ContextID, cmsPipeline** Lut,
                   cmsUInt32Number Intent,
                   cmsUInt32Number* InputFormat,
                   cmsUInt32Number* OutputFormat,
                   cmsUInt32Number* dwFlags)
{
    cmsStage* mpe;
     _cmsStageToneCurvesData* Data;


    for (mpe = cmsPipelineGetPtrToFirstStage(ContextID, *Lut);
         mpe != ((void*)0);
         mpe = cmsStageNext(ContextID, mpe)) {

            if (cmsStageType(ContextID, mpe) != cmsSigCurveSetElemType) return FALSE;


            Data = (_cmsStageToneCurvesData*) cmsStageData(ContextID, mpe);
            if (Data ->nCurves != 1) return FALSE;
            if (cmsEstimateGamma(ContextID, Data->TheCurves[0], 0.1) > 1.0) return FALSE;

    }

    *dwFlags |= cmsFLAGS_NOCACHE;
    _cmsPipelineSetOptimizationParameters(ContextID, *Lut, FastEvaluateCurves, ((void*)0), ((void*)0), ((void*)0));

    return TRUE;
}
