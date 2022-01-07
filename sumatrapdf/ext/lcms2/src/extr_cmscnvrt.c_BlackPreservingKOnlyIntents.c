
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int cmsUInt32Number ;
typedef int cmsStage ;
typedef int cmsPipeline ;
typedef int cmsHPROFILE ;
typedef int cmsFloat64Number ;
typedef int cmsContext ;
typedef int cmsBool ;
typedef int bp ;
struct TYPE_3__ {int * KTone; int * cmyk2cmyk; } ;
typedef TYPE_1__ GrayOnlyParams ;


 int BlackPreservingGrayOnlySampler ;
 int * DefaultICCintents (int ,int,int*,int *,int *,int *,int) ;
 int TranslateNonICCIntents (int) ;
 int * _cmsBuildKToneCurve (int ,int,int,int*,int *,int *,int *,int) ;
 int _cmsReasonableGridpointsByColorspace (int ,scalar_t__,int) ;
 int cmsAT_BEGIN ;
 int cmsFreeToneCurve (int ,int *) ;
 scalar_t__ cmsGetColorSpace (int ,int ) ;
 int * cmsPipelineAlloc (int ,int,int) ;
 int cmsPipelineFree (int ,int *) ;
 int cmsPipelineInsertStage (int ,int *,int ,int *) ;
 scalar_t__ cmsSigCmykData ;
 int * cmsStageAllocCLut16bit (int ,int,int,int,int *) ;
 int cmsStageSampleCLut16bit (int ,int *,int ,void*,int ) ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static
cmsPipeline* BlackPreservingKOnlyIntents(cmsContext ContextID,
                                          cmsUInt32Number nProfiles,
                                          cmsUInt32Number TheIntents[],
                                          cmsHPROFILE hProfiles[],
                                          cmsBool BPC[],
                                          cmsFloat64Number AdaptationStates[],
                                          cmsUInt32Number dwFlags)
{
    GrayOnlyParams bp;
    cmsPipeline* Result;
    cmsUInt32Number ICCIntents[256];
    cmsStage* CLUT;
    cmsUInt32Number i, nGridPoints;



    if (nProfiles < 1 || nProfiles > 255) return ((void*)0);


    for (i=0; i < nProfiles; i++)
        ICCIntents[i] = TranslateNonICCIntents(TheIntents[i]);


    if (cmsGetColorSpace(ContextID, hProfiles[0]) != cmsSigCmykData ||
        cmsGetColorSpace(ContextID, hProfiles[nProfiles-1]) != cmsSigCmykData)
           return DefaultICCintents(ContextID, nProfiles, ICCIntents, hProfiles, BPC, AdaptationStates, dwFlags);

    memset(&bp, 0, sizeof(bp));


    Result = cmsPipelineAlloc(ContextID, 4, 4);
    if (Result == ((void*)0)) return ((void*)0);


    bp.cmyk2cmyk = DefaultICCintents(ContextID,
        nProfiles,
        ICCIntents,
        hProfiles,
        BPC,
        AdaptationStates,
        dwFlags);

    if (bp.cmyk2cmyk == ((void*)0)) goto Error;


    bp.KTone = _cmsBuildKToneCurve(ContextID,
        4096,
        nProfiles,
        ICCIntents,
        hProfiles,
        BPC,
        AdaptationStates,
        dwFlags);

    if (bp.KTone == ((void*)0)) goto Error;



    nGridPoints = _cmsReasonableGridpointsByColorspace(ContextID, cmsSigCmykData, dwFlags);


    CLUT = cmsStageAllocCLut16bit(ContextID, nGridPoints, 4, 4, ((void*)0));
    if (CLUT == ((void*)0)) goto Error;


    if (!cmsPipelineInsertStage(ContextID, Result, cmsAT_BEGIN, CLUT))
        goto Error;


    if (!cmsStageSampleCLut16bit(ContextID, CLUT, BlackPreservingGrayOnlySampler, (void*) &bp, 0))
        goto Error;


    cmsPipelineFree(ContextID, bp.cmyk2cmyk);
    cmsFreeToneCurve(ContextID, bp.KTone);

    return Result;

Error:

    if (bp.cmyk2cmyk != ((void*)0)) cmsPipelineFree(ContextID, bp.cmyk2cmyk);
    if (bp.KTone != ((void*)0)) cmsFreeToneCurve(ContextID, bp.KTone);
    if (Result != ((void*)0)) cmsPipelineFree(ContextID, Result);
    return ((void*)0);

}
