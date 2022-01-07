
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int cmsUInt32Number ;
typedef int cmsToneCurve ;
typedef int cmsPipeline ;
typedef int cmsIOHANDLER ;
typedef int * cmsHTRANSFORM ;
typedef int cmsHPROFILE ;
typedef int cmsContext ;
typedef int cmsCIEXYZ ;
struct TYPE_4__ {TYPE_1__* core; } ;
typedef TYPE_2__ _cmsTRANSFORM ;
struct TYPE_3__ {int Lut; } ;


 int EmitCIEBasedA (int ,int *,int *,int *) ;
 int EmitCIEBasedDEF (int ,int *,int *,int,int *) ;
 int * ExtractGray2Y (int ,int ,int) ;
 int FALSE ;
 int TYPE_Lab_16 ;
 int TYPE_Lab_DBL ;
 int T_CHANNELS (int) ;
 int _cmsOptimizePipeline (int ,int **,int,int*,int*,int*) ;
 int cmsCloseProfile (int ,int ) ;
 int cmsCreateLab4Profile (int ,int *) ;
 int * cmsCreateMultiprofileTransform (int ,int *,int,int,int ,int,int ) ;
 int cmsDeleteTransform (int ,int *) ;
 int cmsDetectBlackPoint (int ,int *,int ,int,int ) ;
 int cmsERROR_COLORSPACE_CHECK ;
 int cmsFLAGS_FORCE_CLUT ;
 int cmsFormatterForColorspaceOfProfile (int ,int ,int,int ) ;
 int cmsFreeToneCurve (int ,int *) ;
 int * cmsPipelineDup (int ,int ) ;
 int cmsPipelineFree (int ,int *) ;
 int cmsSignalError (int ,int ,char*,...) ;

__attribute__((used)) static
int WriteInputLUT(cmsContext ContextID, cmsIOHANDLER* m, cmsHPROFILE hProfile, cmsUInt32Number Intent, cmsUInt32Number dwFlags)
{
    cmsHPROFILE hLab;
    cmsHTRANSFORM xform;
    cmsUInt32Number nChannels;
    cmsUInt32Number InputFormat;
    int rc;
    cmsHPROFILE Profiles[2];
    cmsCIEXYZ BlackPointAdaptedToD50;




    InputFormat = cmsFormatterForColorspaceOfProfile(ContextID, hProfile, 2, FALSE);
    nChannels = T_CHANNELS(InputFormat);


    cmsDetectBlackPoint(ContextID, &BlackPointAdaptedToD50, hProfile, Intent, 0);


    hLab = cmsCreateLab4Profile(ContextID, ((void*)0));

    Profiles[0] = hProfile;
    Profiles[1] = hLab;

    xform = cmsCreateMultiprofileTransform(ContextID, Profiles, 2, InputFormat, TYPE_Lab_DBL, Intent, 0);
    cmsCloseProfile(ContextID, hLab);

    if (xform == ((void*)0)) {

        cmsSignalError(ContextID, cmsERROR_COLORSPACE_CHECK, "Cannot create transform Profile -> Lab");
        return 0;
    }



    switch (nChannels) {

    case 1: {
            cmsToneCurve* Gray2Y = ExtractGray2Y(ContextID, hProfile, Intent);
            EmitCIEBasedA(ContextID, m, Gray2Y, &BlackPointAdaptedToD50);
            cmsFreeToneCurve(ContextID, Gray2Y);
            }
            break;

    case 3:
    case 4: {
            cmsUInt32Number OutFrm = TYPE_Lab_16;
            cmsPipeline* DeviceLink;
            _cmsTRANSFORM* v = (_cmsTRANSFORM*) xform;

            DeviceLink = cmsPipelineDup(ContextID, v ->core->Lut);
            if (DeviceLink == ((void*)0)) return 0;

            dwFlags |= cmsFLAGS_FORCE_CLUT;
            _cmsOptimizePipeline(ContextID, &DeviceLink, Intent, &InputFormat, &OutFrm, &dwFlags);

            rc = EmitCIEBasedDEF(ContextID, m, DeviceLink, Intent, &BlackPointAdaptedToD50);
            cmsPipelineFree(ContextID, DeviceLink);
            if (rc == 0) return 0;
            }
            break;

    default:

        cmsSignalError(ContextID, cmsERROR_COLORSPACE_CHECK, "Only 3, 4 channels supported for CSA. This profile has %d channels.", nChannels);
        return 0;
    }


    cmsDeleteTransform(ContextID, xform);

    return 1;
}
