
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int res ;
typedef int cmsVEC3 ;
typedef int cmsUInt32Number ;
typedef int cmsStage ;
struct TYPE_11__ {int OutputChannels; int InputChannels; } ;
typedef TYPE_1__ cmsPipeline ;
typedef int cmsMAT3 ;
typedef int cmsFloat64Number ;
typedef int cmsContext ;
typedef scalar_t__ cmsBool ;
struct TYPE_12__ {int TheCurves; } ;
typedef TYPE_2__ _cmsStageToneCurvesData ;
struct TYPE_13__ {int * Offset; scalar_t__ Double; } ;
typedef TYPE_3__ _cmsStageMatrixData ;


 scalar_t__ FALSE ;
 int OptimizeByJoiningCurves (int ,TYPE_1__**,int ,int *,int *,int *) ;
 int SetMatShaper (int ,TYPE_1__*,int ,int *,int *,int ,int *) ;
 scalar_t__ TRUE ;
 int T_CHANNELS (int ) ;
 int _cmsFormatterIs8bit (int ) ;
 scalar_t__ _cmsMAT3isIdentity (int ,int *) ;
 int _cmsMAT3per (int ,int *,int *,int *) ;
 int cmsAT_BEGIN ;
 int cmsAT_END ;
 int cmsFLAGS_NOCACHE ;
 TYPE_1__* cmsPipelineAlloc (int ,int ,int ) ;
 scalar_t__ cmsPipelineCheckAndRetreiveStages (int ,TYPE_1__*,int,int ,int ,int ,int **,int **,int **,...) ;
 int cmsPipelineFree (int ,TYPE_1__*) ;
 int cmsPipelineInsertStage (int ,TYPE_1__*,int ,int ) ;
 int cmsSigCurveSetElemType ;
 int cmsSigMatrixElemType ;
 int cmsStageAllocMatrix (int ,int,int,int const*,int *) ;
 scalar_t__ cmsStageData (int ,int *) ;
 int cmsStageDup (int ,int *) ;
 int memcpy (int *,scalar_t__,int) ;

__attribute__((used)) static
cmsBool OptimizeMatrixShaper(cmsContext ContextID, cmsPipeline** Lut, cmsUInt32Number Intent, cmsUInt32Number* InputFormat, cmsUInt32Number* OutputFormat, cmsUInt32Number* dwFlags)
{
       cmsStage* Curve1, *Curve2;
       cmsStage* Matrix1, *Matrix2;
       cmsMAT3 res;
       cmsBool IdentityMat;
       cmsPipeline* Dest, *Src;
       cmsFloat64Number* Offset;


       if (T_CHANNELS(*InputFormat) != 3 || T_CHANNELS(*OutputFormat) != 3) return FALSE;


       if (!_cmsFormatterIs8bit(*InputFormat)) return FALSE;


       Src = *Lut;
       IdentityMat = FALSE;
       if (cmsPipelineCheckAndRetreiveStages(ContextID, Src, 4,
              cmsSigCurveSetElemType, cmsSigMatrixElemType, cmsSigMatrixElemType, cmsSigCurveSetElemType,
              &Curve1, &Matrix1, &Matrix2, &Curve2)) {


              _cmsStageMatrixData* Data1 = (_cmsStageMatrixData*)cmsStageData(ContextID, Matrix1);
              _cmsStageMatrixData* Data2 = (_cmsStageMatrixData*)cmsStageData(ContextID, Matrix2);


              if (Data1->Offset != ((void*)0)) return FALSE;


              _cmsMAT3per(ContextID, &res, (cmsMAT3*)Data2->Double, (cmsMAT3*)Data1->Double);


              Offset = Data2->Offset;


              if (_cmsMAT3isIdentity(ContextID, &res) && Offset == ((void*)0)) {


                     IdentityMat = TRUE;
              }

       }
       else {

              if (cmsPipelineCheckAndRetreiveStages(ContextID, Src, 3,
                     cmsSigCurveSetElemType, cmsSigMatrixElemType, cmsSigCurveSetElemType,
                     &Curve1, &Matrix1, &Curve2)) {

                     _cmsStageMatrixData* Data = (_cmsStageMatrixData*)cmsStageData(ContextID, Matrix1);


                     memcpy(&res, Data->Double, sizeof(res));


                     Offset = Data->Offset;

                     if (_cmsMAT3isIdentity(ContextID, &res) && Offset == ((void*)0)) {


                            IdentityMat = TRUE;
                     }
              }
              else
                     return FALSE;

       }


    Dest = cmsPipelineAlloc(ContextID, Src ->InputChannels, Src ->OutputChannels);
    if (!Dest) return FALSE;


    if (!cmsPipelineInsertStage(ContextID, Dest, cmsAT_BEGIN, cmsStageDup(ContextID, Curve1)))
        goto Error;

    if (!IdentityMat) {

           if (!cmsPipelineInsertStage(ContextID, Dest, cmsAT_END, cmsStageAllocMatrix(ContextID, 3, 3, (const cmsFloat64Number*)&res, Offset)))
                  goto Error;
    }

    if (!cmsPipelineInsertStage(ContextID, Dest, cmsAT_END, cmsStageDup(ContextID, Curve2)))
        goto Error;


    if (IdentityMat) {

        OptimizeByJoiningCurves(ContextID, &Dest, Intent, InputFormat, OutputFormat, dwFlags);
    }
    else {
        _cmsStageToneCurvesData* mpeC1 = (_cmsStageToneCurvesData*) cmsStageData(ContextID, Curve1);
        _cmsStageToneCurvesData* mpeC2 = (_cmsStageToneCurvesData*) cmsStageData(ContextID, Curve2);



        *dwFlags |= cmsFLAGS_NOCACHE;


        SetMatShaper(ContextID, Dest, mpeC1 ->TheCurves, &res, (cmsVEC3*) Offset, mpeC2->TheCurves, OutputFormat);
    }

    cmsPipelineFree(ContextID, Src);
    *Lut = Dest;
    return TRUE;
Error:

    cmsPipelineFree(ContextID, Dest);
    return FALSE;
}
