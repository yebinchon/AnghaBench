
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t cmsUInt32Number ;
typedef int cmsPipeline ;
typedef int cmsHPROFILE ;
typedef int cmsFloat64Number ;
typedef int cmsContext ;
typedef int cmsBool ;


 size_t INTENT_DECEPTIVE ;
 size_t INTENT_PERCEPTUAL ;
 int * _cmsDefaultICCintents (int ,size_t,size_t*,int *,int *,int *,size_t) ;
 int cmsAT_BEGIN ;
 scalar_t__ cmsGetColorSpace (int ,int ) ;
 int * cmsPipelineAlloc (int ,int,int) ;
 int cmsPipelineInsertStage (int ,int *,int ,int ) ;
 scalar_t__ cmsSigGrayData ;
 int cmsStageAllocIdentity (int ,int) ;

__attribute__((used)) static
cmsPipeline* MyNewIntent(cmsContext ContextID,
                          cmsUInt32Number nProfiles,
                          cmsUInt32Number TheIntents[],
                          cmsHPROFILE hProfiles[],
                          cmsBool BPC[],
                          cmsFloat64Number AdaptationStates[],
                          cmsUInt32Number dwFlags)
{
    cmsPipeline* Result;
    cmsUInt32Number ICCIntents[256];
    cmsUInt32Number i;

 for (i=0; i < nProfiles; i++)
        ICCIntents[i] = (TheIntents[i] == INTENT_DECEPTIVE) ? INTENT_PERCEPTUAL :
                                                 TheIntents[i];

 if (cmsGetColorSpace(ContextID, hProfiles[0]) != cmsSigGrayData ||
     cmsGetColorSpace(ContextID, hProfiles[nProfiles-1]) != cmsSigGrayData)
           return _cmsDefaultICCintents(ContextID, nProfiles,
                                   ICCIntents, hProfiles,
                                   BPC, AdaptationStates,
                                   dwFlags);

    Result = cmsPipelineAlloc(ContextID, 1, 1);
    if (Result == ((void*)0)) return ((void*)0);

    cmsPipelineInsertStage(ContextID, Result, cmsAT_BEGIN,
                            cmsStageAllocIdentity(ContextID, 1));

    return Result;
}
