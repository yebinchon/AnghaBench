
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int cmsUInt32Number ;
typedef int cmsStage ;
typedef int cmsPipeline ;
typedef int * cmsHPROFILE ;
typedef int cmsFloat64Number ;
typedef int cmsContext ;
typedef scalar_t__ cmsBool ;
struct TYPE_3__ {void* hIlimit; void* sRGB2Lab; void* hLab2sRGB; } ;
typedef TYPE_1__ FakeCMYKParams ;


 int BYTES_SH (int ) ;
 int CHANNELS_SH (int) ;
 int * Create_AboveRGB () ;
 int DbgThread () ;
 int FLOAT_SH (int) ;
 int ForwardSampler ;
 int INTENT_PERCEPTUAL ;
 int ReverseSampler ;
 int TYPE_CMYK_16 ;
 int TYPE_Lab_16 ;
 int TYPE_RGB_DBL ;
 int * _cmsStageAllocIdentityCurves (int ,int) ;
 int cmsAT_BEGIN ;
 int cmsAT_END ;
 int cmsCloseProfile (int ,int *) ;
 int * cmsCreateInkLimitingDeviceLink (int ,int ,int ) ;
 int * cmsCreateLab4Profile (int ,int *) ;
 int * cmsCreateProfilePlaceholder (int ) ;
 void* cmsCreateTransform (int ,int *,int,int *,int,int ,int) ;
 int * cmsCreate_sRGBProfile (int ) ;
 int cmsDeleteTransform (int ,void*) ;
 int cmsFLAGS_NOCACHE ;
 int cmsFLAGS_NOOPTIMIZE ;
 int cmsLinkTag (int ,int *,int ,int ) ;
 int * cmsPipelineAlloc (int ,int,int) ;
 int cmsPipelineFree (int ,int *) ;
 int cmsPipelineInsertStage (int ,int *,int ,int *) ;
 int cmsSetColorSpace (int ,int *,int ) ;
 int cmsSetDeviceClass (int ,int *,int ) ;
 int cmsSetPCS (int ,int *,int ) ;
 int cmsSetProfileVersion (int ,int *,double) ;
 int cmsSigAToB0Tag ;
 int cmsSigAToB1Tag ;
 int cmsSigAToB2Tag ;
 int cmsSigBToA0Tag ;
 int cmsSigBToA1Tag ;
 int cmsSigBToA2Tag ;
 int cmsSigCmykData ;
 int cmsSigLabData ;
 int cmsSigOutputClass ;
 int * cmsStageAllocCLut16bit (int ,int,int,int,int *) ;
 int cmsStageSampleCLut16bit (int ,int *,int ,TYPE_1__*,int ) ;
 int cmsWriteTag (int ,int *,int ,void*) ;

__attribute__((used)) static
cmsHPROFILE CreateFakeCMYK(cmsFloat64Number InkLimit, cmsBool lUseAboveRGB)
{
    cmsHPROFILE hICC;
    cmsPipeline* AToB0, *BToA0;
    cmsStage* CLUT;
    cmsContext ContextID;
    FakeCMYKParams p;
    cmsHPROFILE hLab, hsRGB, hLimit;
    cmsUInt32Number cmykfrm;

    ContextID = DbgThread();

    if (lUseAboveRGB)
        hsRGB = Create_AboveRGB();
    else
       hsRGB = cmsCreate_sRGBProfile(ContextID);

    hLab = cmsCreateLab4Profile(ContextID, ((void*)0));
    hLimit = cmsCreateInkLimitingDeviceLink(ContextID, cmsSigCmykData, InkLimit);

    cmykfrm = FLOAT_SH(1) | BYTES_SH(0)|CHANNELS_SH(4);
    p.hLab2sRGB = cmsCreateTransform(ContextID, hLab, TYPE_Lab_16, hsRGB, TYPE_RGB_DBL, INTENT_PERCEPTUAL, cmsFLAGS_NOOPTIMIZE|cmsFLAGS_NOCACHE);
    p.sRGB2Lab = cmsCreateTransform(ContextID, hsRGB, TYPE_RGB_DBL, hLab, TYPE_Lab_16, INTENT_PERCEPTUAL, cmsFLAGS_NOOPTIMIZE|cmsFLAGS_NOCACHE);
    p.hIlimit = cmsCreateTransform(ContextID, hLimit, cmykfrm, ((void*)0), TYPE_CMYK_16, INTENT_PERCEPTUAL, cmsFLAGS_NOOPTIMIZE|cmsFLAGS_NOCACHE);

    cmsCloseProfile(ContextID, hLab); cmsCloseProfile(ContextID, hsRGB); cmsCloseProfile(ContextID, hLimit);

    hICC = cmsCreateProfilePlaceholder(ContextID);
    if (!hICC) return ((void*)0);

    cmsSetProfileVersion(ContextID, hICC, 4.3);

    cmsSetDeviceClass(ContextID, hICC, cmsSigOutputClass);
    cmsSetColorSpace(ContextID, hICC, cmsSigCmykData);
    cmsSetPCS(ContextID, hICC, cmsSigLabData);

    BToA0 = cmsPipelineAlloc(ContextID, 3, 4);
    if (BToA0 == ((void*)0)) return 0;
    CLUT = cmsStageAllocCLut16bit(ContextID, 17, 3, 4, ((void*)0));
    if (CLUT == ((void*)0)) return 0;
    if (!cmsStageSampleCLut16bit(ContextID, CLUT, ForwardSampler, &p, 0)) return 0;

    cmsPipelineInsertStage(ContextID, BToA0, cmsAT_BEGIN, _cmsStageAllocIdentityCurves(ContextID, 3));
    cmsPipelineInsertStage(ContextID, BToA0, cmsAT_END, CLUT);
    cmsPipelineInsertStage(ContextID, BToA0, cmsAT_END, _cmsStageAllocIdentityCurves(ContextID, 4));

    if (!cmsWriteTag(ContextID, hICC, cmsSigBToA0Tag, (void*) BToA0)) return 0;
    cmsPipelineFree(ContextID, BToA0);

    AToB0 = cmsPipelineAlloc(ContextID, 4, 3);
    if (AToB0 == ((void*)0)) return 0;
    CLUT = cmsStageAllocCLut16bit(ContextID, 17, 4, 3, ((void*)0));
    if (CLUT == ((void*)0)) return 0;
    if (!cmsStageSampleCLut16bit(ContextID, CLUT, ReverseSampler, &p, 0)) return 0;

    cmsPipelineInsertStage(ContextID, AToB0, cmsAT_BEGIN, _cmsStageAllocIdentityCurves(ContextID, 4));
    cmsPipelineInsertStage(ContextID, AToB0, cmsAT_END, CLUT);
    cmsPipelineInsertStage(ContextID, AToB0, cmsAT_END, _cmsStageAllocIdentityCurves(ContextID, 3));

    if (!cmsWriteTag(ContextID, hICC, cmsSigAToB0Tag, (void*) AToB0)) return 0;
    cmsPipelineFree(ContextID, AToB0);

    cmsDeleteTransform(ContextID, p.hLab2sRGB);
    cmsDeleteTransform(ContextID, p.sRGB2Lab);
    cmsDeleteTransform(ContextID, p.hIlimit);

    cmsLinkTag(ContextID, hICC, cmsSigAToB1Tag, cmsSigAToB0Tag);
    cmsLinkTag(ContextID, hICC, cmsSigAToB2Tag, cmsSigAToB0Tag);
    cmsLinkTag(ContextID, hICC, cmsSigBToA1Tag, cmsSigBToA0Tag);
    cmsLinkTag(ContextID, hICC, cmsSigBToA2Tag, cmsSigBToA0Tag);

    return hICC;
}
