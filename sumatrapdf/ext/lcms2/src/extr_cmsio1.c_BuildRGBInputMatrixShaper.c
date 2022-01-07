
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int cmsToneCurve ;
typedef int cmsPipeline ;
struct TYPE_5__ {TYPE_1__* v; } ;
typedef TYPE_2__ cmsMAT3 ;
typedef int cmsHPROFILE ;
typedef int cmsFloat64Number ;
typedef int cmsContext ;
struct TYPE_4__ {int * n; } ;


 int InpAdj ;
 int ReadICCMatrixRGB2XYZ (int ,TYPE_2__*,int ) ;
 int _cmsStageAllocXYZ2Lab (int ) ;
 int cmsAT_END ;
 scalar_t__ cmsGetPCS (int ,int ) ;
 int * cmsPipelineAlloc (int ,int,int) ;
 int cmsPipelineFree (int ,int *) ;
 int cmsPipelineInsertStage (int ,int *,int ,int ) ;
 scalar_t__ cmsReadTag (int ,int ,int ) ;
 int cmsSigBlueTRCTag ;
 int cmsSigGreenTRCTag ;
 scalar_t__ cmsSigLabData ;
 int cmsSigRedTRCTag ;
 int cmsStageAllocMatrix (int ,int,int,int *,int *) ;
 int cmsStageAllocToneCurves (int ,int,int **) ;

__attribute__((used)) static
cmsPipeline* BuildRGBInputMatrixShaper(cmsContext ContextID, cmsHPROFILE hProfile)
{
    cmsPipeline* Lut;
    cmsMAT3 Mat;
    cmsToneCurve *Shapes[3];
    int i, j;

    if (!ReadICCMatrixRGB2XYZ(ContextID, &Mat, hProfile)) return ((void*)0);





    for (i=0; i < 3; i++)
        for (j=0; j < 3; j++)
            Mat.v[i].n[j] *= InpAdj;


    Shapes[0] = (cmsToneCurve *) cmsReadTag(ContextID, hProfile, cmsSigRedTRCTag);
    Shapes[1] = (cmsToneCurve *) cmsReadTag(ContextID, hProfile, cmsSigGreenTRCTag);
    Shapes[2] = (cmsToneCurve *) cmsReadTag(ContextID, hProfile, cmsSigBlueTRCTag);

    if (!Shapes[0] || !Shapes[1] || !Shapes[2])
        return ((void*)0);

    Lut = cmsPipelineAlloc(ContextID, 3, 3);
    if (Lut != ((void*)0)) {

        if (!cmsPipelineInsertStage(ContextID, Lut, cmsAT_END, cmsStageAllocToneCurves(ContextID, 3, Shapes)) ||
            !cmsPipelineInsertStage(ContextID, Lut, cmsAT_END, cmsStageAllocMatrix(ContextID, 3, 3, (cmsFloat64Number*) &Mat, ((void*)0))))
            goto Error;




        if (cmsGetPCS(ContextID, hProfile) == cmsSigLabData) {

            if (!cmsPipelineInsertStage(ContextID, Lut, cmsAT_END, _cmsStageAllocXYZ2Lab(ContextID)))
                goto Error;
        }

    }

    return Lut;

Error:
    cmsPipelineFree(ContextID, Lut);
    return ((void*)0);
}
