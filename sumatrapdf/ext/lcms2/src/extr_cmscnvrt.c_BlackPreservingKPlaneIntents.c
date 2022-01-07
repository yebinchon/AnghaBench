
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
struct TYPE_3__ {double MaxTAC; int * LabK2cmyk; int * KTone; int * hProofOutput; int * cmyk2Lab; int * cmyk2cmyk; scalar_t__ MaxError; } ;
typedef TYPE_1__ PreserveKPlaneParams ;


 int BYTES_SH (int) ;
 int BlackPreservingSampler ;
 int CHANNELS_SH (int) ;
 int * DefaultICCintents (int ,int,int*,int *,int *,int *,int) ;
 int FLOAT_SH (int) ;
 int INTENT_RELATIVE_COLORIMETRIC ;
 int TYPE_Lab_DBL ;
 int TranslateNonICCIntents (int) ;
 int * _cmsBuildKToneCurve (int ,int,int,int*,int *,int *,int *,int) ;
 int * _cmsReadInputLUT (int ,int ,int ) ;
 int _cmsReasonableGridpointsByColorspace (int ,scalar_t__,int) ;
 int cmsAT_BEGIN ;
 int cmsCloseProfile (int ,int ) ;
 int cmsCreateLab4Profile (int ,int *) ;
 void* cmsCreateTransform (int ,int ,int,int ,int,int ,int) ;
 int cmsDeleteTransform (int ,int *) ;
 double cmsDetectTAC (int ,int ) ;
 int cmsFLAGS_NOCACHE ;
 int cmsFLAGS_NOOPTIMIZE ;
 int cmsFreeToneCurve (int ,int *) ;
 scalar_t__ cmsGetColorSpace (int ,int ) ;
 scalar_t__ cmsGetDeviceClass (int ,int ) ;
 int * cmsPipelineAlloc (int ,int,int) ;
 int cmsPipelineFree (int ,int *) ;
 int cmsPipelineInsertStage (int ,int *,int ,int *) ;
 scalar_t__ cmsSigCmykData ;
 scalar_t__ cmsSigOutputClass ;
 int * cmsStageAllocCLut16bit (int ,int,int,int,int *) ;
 int cmsStageSampleCLut16bit (int ,int *,int ,void*,int ) ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static
cmsPipeline* BlackPreservingKPlaneIntents(cmsContext ContextID,
                                          cmsUInt32Number nProfiles,
                                          cmsUInt32Number TheIntents[],
                                          cmsHPROFILE hProfiles[],
                                          cmsBool BPC[],
                                          cmsFloat64Number AdaptationStates[],
                                          cmsUInt32Number dwFlags)
{
    PreserveKPlaneParams bp;
    cmsPipeline* Result = ((void*)0);
    cmsUInt32Number ICCIntents[256];
    cmsStage* CLUT;
    cmsUInt32Number i, nGridPoints;
    cmsHPROFILE hLab;


    if (nProfiles < 1 || nProfiles > 255) return ((void*)0);


    for (i=0; i < nProfiles; i++)
        ICCIntents[i] = TranslateNonICCIntents(TheIntents[i]);


    if (cmsGetColorSpace(ContextID, hProfiles[0]) != cmsSigCmykData ||
        !(cmsGetColorSpace(ContextID, hProfiles[nProfiles-1]) == cmsSigCmykData ||
        cmsGetDeviceClass(ContextID, hProfiles[nProfiles-1]) == cmsSigOutputClass))
           return DefaultICCintents(ContextID, nProfiles, ICCIntents, hProfiles, BPC, AdaptationStates, dwFlags);


    Result = cmsPipelineAlloc(ContextID, 4, 4);
    if (Result == ((void*)0)) return ((void*)0);


    memset(&bp, 0, sizeof(bp));



    bp.LabK2cmyk = _cmsReadInputLUT(ContextID, hProfiles[nProfiles-1], INTENT_RELATIVE_COLORIMETRIC);
    if (bp.LabK2cmyk == ((void*)0)) goto Cleanup;


    bp.MaxTAC = cmsDetectTAC(ContextID, hProfiles[nProfiles-1]) / 100.0;
    if (bp.MaxTAC <= 0) goto Cleanup;



    bp.cmyk2cmyk = DefaultICCintents(ContextID,
                                         nProfiles,
                                         ICCIntents,
                                         hProfiles,
                                         BPC,
                                         AdaptationStates,
                                         dwFlags);
    if (bp.cmyk2cmyk == ((void*)0)) goto Cleanup;


    bp.KTone = _cmsBuildKToneCurve(ContextID, 4096, nProfiles,
                                   ICCIntents,
                                   hProfiles,
                                   BPC,
                                   AdaptationStates,
                                   dwFlags);
    if (bp.KTone == ((void*)0)) goto Cleanup;


    hLab = cmsCreateLab4Profile(ContextID, ((void*)0));
    bp.hProofOutput = cmsCreateTransform(ContextID, hProfiles[nProfiles-1],
                                         CHANNELS_SH(4)|BYTES_SH(2), hLab, TYPE_Lab_DBL,
                                         INTENT_RELATIVE_COLORIMETRIC,
                                         cmsFLAGS_NOCACHE|cmsFLAGS_NOOPTIMIZE);
    if ( bp.hProofOutput == ((void*)0)) goto Cleanup;


    bp.cmyk2Lab = cmsCreateTransform(ContextID, hProfiles[nProfiles-1],
                                         FLOAT_SH(1)|CHANNELS_SH(4)|BYTES_SH(4), hLab,
                                         FLOAT_SH(1)|CHANNELS_SH(3)|BYTES_SH(4),
                                         INTENT_RELATIVE_COLORIMETRIC,
                                         cmsFLAGS_NOCACHE|cmsFLAGS_NOOPTIMIZE);
    if (bp.cmyk2Lab == ((void*)0)) goto Cleanup;
    cmsCloseProfile(ContextID, hLab);


    bp.MaxError = 0;


    nGridPoints = _cmsReasonableGridpointsByColorspace(ContextID, cmsSigCmykData, dwFlags);


    CLUT = cmsStageAllocCLut16bit(ContextID, nGridPoints, 4, 4, ((void*)0));
    if (CLUT == ((void*)0)) goto Cleanup;

    if (!cmsPipelineInsertStage(ContextID, Result, cmsAT_BEGIN, CLUT))
        goto Cleanup;

    cmsStageSampleCLut16bit(ContextID, CLUT, BlackPreservingSampler, (void*) &bp, 0);

Cleanup:

    if (bp.cmyk2cmyk) cmsPipelineFree(ContextID, bp.cmyk2cmyk);
    if (bp.cmyk2Lab) cmsDeleteTransform(ContextID, bp.cmyk2Lab);
    if (bp.hProofOutput) cmsDeleteTransform(ContextID, bp.hProofOutput);

    if (bp.KTone) cmsFreeToneCurve(ContextID, bp.KTone);
    if (bp.LabK2cmyk) cmsPipelineFree(ContextID, bp.LabK2cmyk);

    return Result;
}
