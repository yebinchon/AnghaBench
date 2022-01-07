
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsUInt16Number ;
typedef int cmsToneCurve ;
typedef int cmsPipeline ;
typedef int cmsHPROFILE ;
typedef int cmsContext ;


 int GrayInputMatrix ;
 int OneToThreeInputMatrix ;
 int cmsAT_END ;
 int * cmsBuildTabulatedToneCurve16 (int ,int,int*) ;
 int cmsFreeToneCurve (int ,int *) ;
 scalar_t__ cmsGetPCS (int ,int ) ;
 int * cmsPipelineAlloc (int ,int,int) ;
 int cmsPipelineFree (int ,int *) ;
 int cmsPipelineInsertStage (int ,int *,int ,int ) ;
 scalar_t__ cmsReadTag (int ,int ,int ) ;
 int cmsSigGrayTRCTag ;
 scalar_t__ cmsSigLabData ;
 int cmsStageAllocMatrix (int ,int,int,int ,int *) ;
 int cmsStageAllocToneCurves (int ,int,int **) ;

__attribute__((used)) static
cmsPipeline* BuildGrayInputMatrixPipeline(cmsContext ContextID, cmsHPROFILE hProfile)
{
    cmsToneCurve *GrayTRC;
    cmsPipeline* Lut;

    GrayTRC = (cmsToneCurve *) cmsReadTag(ContextID, hProfile, cmsSigGrayTRCTag);
    if (GrayTRC == ((void*)0)) return ((void*)0);

    Lut = cmsPipelineAlloc(ContextID, 1, 3);
    if (Lut == ((void*)0))
        goto Error;

    if (cmsGetPCS(ContextID, hProfile) == cmsSigLabData) {


        cmsUInt16Number Zero[2] = { 0x8080, 0x8080 };
        cmsToneCurve* EmptyTab;
        cmsToneCurve* LabCurves[3];

        EmptyTab = cmsBuildTabulatedToneCurve16(ContextID, 2, Zero);

        if (EmptyTab == ((void*)0))
            goto Error;

        LabCurves[0] = GrayTRC;
        LabCurves[1] = EmptyTab;
        LabCurves[2] = EmptyTab;

        if (!cmsPipelineInsertStage(ContextID, Lut, cmsAT_END, cmsStageAllocMatrix(ContextID, 3, 1, OneToThreeInputMatrix, ((void*)0))) ||
            !cmsPipelineInsertStage(ContextID, Lut, cmsAT_END, cmsStageAllocToneCurves(ContextID, 3, LabCurves))) {
                cmsFreeToneCurve(ContextID, EmptyTab);
                goto Error;
        }

        cmsFreeToneCurve(ContextID, EmptyTab);

    }
    else {

        if (!cmsPipelineInsertStage(ContextID, Lut, cmsAT_END, cmsStageAllocToneCurves(ContextID, 1, &GrayTRC)) ||
            !cmsPipelineInsertStage(ContextID, Lut, cmsAT_END, cmsStageAllocMatrix(ContextID, 3, 1, GrayInputMatrix, ((void*)0))))
            goto Error;
    }

    return Lut;

Error:
    cmsPipelineFree(ContextID, Lut);
    return ((void*)0);
}
