
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsTagSignature ;
typedef int cmsPipeline ;
typedef int cmsHPROFILE ;
typedef int cmsContext ;
typedef scalar_t__ cmsColorSpaceSignature ;


 int _cmsStageNormalizeFromLabFloat (int ) ;
 int _cmsStageNormalizeFromXyzFloat (int ) ;
 int _cmsStageNormalizeToLabFloat (int ) ;
 int _cmsStageNormalizeToXyzFloat (int ) ;
 int cmsAT_BEGIN ;
 int cmsAT_END ;
 scalar_t__ cmsGetColorSpace (int ,int ) ;
 scalar_t__ cmsGetPCS (int ,int ) ;
 int * cmsPipelineDup (int ,int *) ;
 int cmsPipelineFree (int ,int *) ;
 int cmsPipelineInsertStage (int ,int *,int ,int ) ;
 scalar_t__ cmsReadTag (int ,int ,int ) ;
 scalar_t__ cmsSigLabData ;
 scalar_t__ cmsSigXYZData ;

__attribute__((used)) static
cmsPipeline* _cmsReadFloatInputTag(cmsContext ContextID, cmsHPROFILE hProfile, cmsTagSignature tagFloat)
{
    cmsPipeline* Lut = cmsPipelineDup(ContextID, (cmsPipeline*) cmsReadTag(ContextID, hProfile, tagFloat));
    cmsColorSpaceSignature spc = cmsGetColorSpace(ContextID, hProfile);
    cmsColorSpaceSignature PCS = cmsGetPCS(ContextID, hProfile);

    if (Lut == ((void*)0)) return ((void*)0);



    if ( spc == cmsSigLabData)
    {
        if (!cmsPipelineInsertStage(ContextID, Lut, cmsAT_BEGIN, _cmsStageNormalizeToLabFloat(ContextID)))
            goto Error;
    }
    else if (spc == cmsSigXYZData)
    {
        if (!cmsPipelineInsertStage(ContextID, Lut, cmsAT_BEGIN, _cmsStageNormalizeToXyzFloat(ContextID)))
            goto Error;
    }

    if ( PCS == cmsSigLabData)
    {
        if (!cmsPipelineInsertStage(ContextID, Lut, cmsAT_END, _cmsStageNormalizeFromLabFloat(ContextID)))
            goto Error;
    }
    else if( PCS == cmsSigXYZData)
    {
        if (!cmsPipelineInsertStage(ContextID, Lut, cmsAT_END, _cmsStageNormalizeFromXyzFloat(ContextID)))
            goto Error;
    }

    return Lut;

Error:
    cmsPipelineFree(ContextID, Lut);
    return ((void*)0);
}
