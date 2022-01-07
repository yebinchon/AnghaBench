
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ cmsUInt32Number ;
typedef int cmsPipeline ;
typedef int cmsIOHANDLER ;
typedef int * cmsHTRANSFORM ;
typedef int * cmsHPROFILE ;
typedef int cmsContext ;
typedef int cmsColorSpaceSignature ;
typedef int cmsCIEXYZ ;
typedef int cmsBool ;
struct TYPE_4__ {TYPE_1__* core; } ;
typedef TYPE_2__ _cmsTRANSFORM ;
struct TYPE_3__ {int Lut; } ;


 int EmitIntent (int ,int *,scalar_t__) ;
 int EmitPQRStage (int ,int *,int *,int ,int) ;
 int EmitWhiteBlackD50 (int ,int *,int *) ;
 int EmitXYZ2Lab (int ,int *) ;
 int FALSE ;
 scalar_t__ INTENT_ABSOLUTE_COLORIMETRIC ;
 scalar_t__ INTENT_RELATIVE_COLORIMETRIC ;
 scalar_t__ TYPE_Lab_16 ;
 int TYPE_Lab_DBL ;
 scalar_t__ T_CHANNELS (scalar_t__) ;
 int WriteCLUT (int ,int *,int ,char*,char*,char*,char*,int ,int ) ;
 int _cmsIOPrintf (int ,int *,char*,...) ;
 int _cmsOptimizePipeline (int ,int **,scalar_t__,scalar_t__*,scalar_t__*,scalar_t__*) ;
 int cmsCloseProfile (int ,int *) ;
 int * cmsCreateLab4Profile (int ,int *) ;
 int * cmsCreateMultiprofileTransform (int ,int **,int,int ,scalar_t__,scalar_t__,int ) ;
 int cmsDeleteTransform (int ,int *) ;
 int cmsDetectBlackPoint (int ,int *,int *,scalar_t__,int ) ;
 int cmsERROR_COLORSPACE_CHECK ;
 scalar_t__ cmsFLAGS_BLACKPOINTCOMPENSATION ;
 scalar_t__ cmsFLAGS_FORCE_CLUT ;
 scalar_t__ cmsFLAGS_NODEFAULTRESOURCEDEF ;
 scalar_t__ cmsFLAGS_NOWHITEONWHITEFIXUP ;
 scalar_t__ cmsFormatterForColorspaceOfProfile (int ,int *,int,int ) ;
 int cmsGetColorSpace (int ,int *) ;
 int * cmsPipelineDup (int ,int ) ;
 int cmsPipelineFree (int ,int *) ;
 int cmsPipelineGetPtrToFirstStage (int ,int *) ;
 int cmsSignalError (int ,int ,char*) ;

__attribute__((used)) static
int WriteOutputLUT(cmsContext ContextID, cmsIOHANDLER* m, cmsHPROFILE hProfile, cmsUInt32Number Intent, cmsUInt32Number dwFlags)
{
    cmsHPROFILE hLab;
    cmsHTRANSFORM xform;
    cmsUInt32Number i, nChannels;
    cmsUInt32Number OutputFormat;
    _cmsTRANSFORM* v;
    cmsPipeline* DeviceLink;
    cmsHPROFILE Profiles[3];
    cmsCIEXYZ BlackPointAdaptedToD50;
    cmsBool lDoBPC = (cmsBool) (dwFlags & cmsFLAGS_BLACKPOINTCOMPENSATION);
    cmsBool lFixWhite = (cmsBool) !(dwFlags & cmsFLAGS_NOWHITEONWHITEFIXUP);
    cmsUInt32Number InFrm = TYPE_Lab_16;
    cmsUInt32Number RelativeEncodingIntent;
    cmsColorSpaceSignature ColorSpace;


    hLab = cmsCreateLab4Profile(ContextID, ((void*)0));
    if (hLab == ((void*)0)) return 0;

    OutputFormat = cmsFormatterForColorspaceOfProfile(ContextID, hProfile, 2, FALSE);
    nChannels = T_CHANNELS(OutputFormat);

    ColorSpace = cmsGetColorSpace(ContextID, hProfile);



    RelativeEncodingIntent = Intent;
    if (RelativeEncodingIntent == INTENT_ABSOLUTE_COLORIMETRIC)
        RelativeEncodingIntent = INTENT_RELATIVE_COLORIMETRIC;



    Profiles[0] = hLab;
    Profiles[1] = hProfile;

    xform = cmsCreateMultiprofileTransform(ContextID,
                                              Profiles, 2, TYPE_Lab_DBL,
                                              OutputFormat, RelativeEncodingIntent, 0);
    cmsCloseProfile(ContextID, hLab);

    if (xform == ((void*)0)) {

        cmsSignalError(ContextID, cmsERROR_COLORSPACE_CHECK, "Cannot create transform Lab -> Profile in CRD creation");
        return 0;
    }


    v = (_cmsTRANSFORM*) xform;
    DeviceLink = cmsPipelineDup(ContextID, v ->core->Lut);
    if (DeviceLink == ((void*)0)) return 0;



    dwFlags |= cmsFLAGS_FORCE_CLUT;
    _cmsOptimizePipeline(ContextID, &DeviceLink, RelativeEncodingIntent, &InFrm, &OutputFormat, &dwFlags);

    _cmsIOPrintf(ContextID, m, "<<\n");
    _cmsIOPrintf(ContextID, m, "/ColorRenderingType 1\n");


    cmsDetectBlackPoint(ContextID, &BlackPointAdaptedToD50, hProfile, Intent, 0);


    EmitWhiteBlackD50(ContextID, m, &BlackPointAdaptedToD50);
    EmitPQRStage(ContextID, m, hProfile, lDoBPC, Intent == INTENT_ABSOLUTE_COLORIMETRIC);
    EmitXYZ2Lab(ContextID, m);
    if (Intent == INTENT_ABSOLUTE_COLORIMETRIC)
            lFixWhite = FALSE;

    _cmsIOPrintf(ContextID, m, "/RenderTable ");


    WriteCLUT(ContextID, m, cmsPipelineGetPtrToFirstStage(ContextID, DeviceLink), "<", ">\n", "", "", lFixWhite, ColorSpace);

    _cmsIOPrintf(ContextID, m, " %d {} bind ", nChannels);

    for (i=1; i < nChannels; i++)
            _cmsIOPrintf(ContextID, m, "dup ");

    _cmsIOPrintf(ContextID, m, "]\n");


    EmitIntent(ContextID, m, Intent);

    _cmsIOPrintf(ContextID, m, ">>\n");

    if (!(dwFlags & cmsFLAGS_NODEFAULTRESOURCEDEF)) {

        _cmsIOPrintf(ContextID, m, "/Current exch /ColorRendering defineresource pop\n");
    }

    cmsPipelineFree(ContextID, DeviceLink);
    cmsDeleteTransform(ContextID, xform);

    return 1;
}
