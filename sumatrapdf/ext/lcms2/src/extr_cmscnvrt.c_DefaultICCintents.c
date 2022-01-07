
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsVEC3 ;
typedef size_t cmsUInt32Number ;
typedef int cmsStage ;
typedef scalar_t__ cmsProfileClassSignature ;
typedef int cmsPipeline ;
typedef int cmsMAT3 ;
typedef int cmsHPROFILE ;
typedef int cmsFloat64Number ;
typedef int cmsContext ;
typedef scalar_t__ cmsColorSpaceSignature ;
typedef int cmsBool ;


 int AddConversion (int ,int *,scalar_t__,scalar_t__,int *,int *) ;
 int ColorSpaceIsCompatible (scalar_t__,scalar_t__) ;
 int ComputeConversion (int ,size_t,int *,size_t,int,int ,int *,int *) ;
 int TRUE ;
 int _cmsMAT3identity (int ,int *) ;
 int * _cmsReadDevicelinkLUT (int ,int ,size_t) ;
 int * _cmsReadInputLUT (int ,int ,size_t) ;
 int * _cmsReadOutputLUT (int ,int ,size_t) ;
 int * _cmsStageClipNegatives (int ,int ) ;
 int _cmsVEC3init (int ,int *,int ,int ,int ) ;
 int cmsAT_END ;
 int cmsChannelsOf (int ,scalar_t__) ;
 int cmsERROR_COLORSPACE_CHECK ;
 size_t cmsFLAGS_NONEGATIVES ;
 scalar_t__ cmsGetColorSpace (int ,int ) ;
 scalar_t__ cmsGetDeviceClass (int ,int ) ;
 scalar_t__ cmsGetPCS (int ,int ) ;
 int * cmsPipelineAlloc (int ,int ,int ) ;
 int cmsPipelineCat (int ,int *,int *) ;
 int cmsPipelineFree (int ,int *) ;
 int cmsPipelineInsertStage (int ,int *,int ,int *) ;
 scalar_t__ cmsSigAbstractClass ;
 scalar_t__ cmsSigCmykData ;
 scalar_t__ cmsSigGrayData ;
 scalar_t__ cmsSigLabData ;
 scalar_t__ cmsSigLinkClass ;
 scalar_t__ cmsSigNamedColorClass ;
 scalar_t__ cmsSigRgbData ;
 scalar_t__ cmsSigXYZData ;
 int cmsSignalError (int ,int ,char*) ;
 int cmsUNUSED_PARAMETER (size_t) ;

__attribute__((used)) static
cmsPipeline* DefaultICCintents(cmsContext ContextID,
                               cmsUInt32Number nProfiles,
                               cmsUInt32Number TheIntents[],
                               cmsHPROFILE hProfiles[],
                               cmsBool BPC[],
                               cmsFloat64Number AdaptationStates[],
                               cmsUInt32Number dwFlags)
{
    cmsPipeline* Lut = ((void*)0);
    cmsPipeline* Result;
    cmsHPROFILE hProfile;
    cmsMAT3 m;
    cmsVEC3 off;
    cmsColorSpaceSignature ColorSpaceIn, ColorSpaceOut = cmsSigLabData, CurrentColorSpace;
    cmsProfileClassSignature ClassSig;
    cmsUInt32Number i, Intent;


    if (nProfiles == 0) return ((void*)0);


    Result = cmsPipelineAlloc(ContextID, 0, 0);
    if (Result == ((void*)0)) return ((void*)0);

    CurrentColorSpace = cmsGetColorSpace(ContextID, hProfiles[0]);

    for (i=0; i < nProfiles; i++) {

        cmsBool lIsDeviceLink, lIsInput;

        hProfile = hProfiles[i];
        ClassSig = cmsGetDeviceClass(ContextID, hProfile);
        lIsDeviceLink = (ClassSig == cmsSigLinkClass || ClassSig == cmsSigAbstractClass );


        if ((i == 0) && !lIsDeviceLink) {
            lIsInput = TRUE;
        }
        else {

        lIsInput = (CurrentColorSpace != cmsSigXYZData) &&
                        (CurrentColorSpace != cmsSigLabData);
        }

        Intent = TheIntents[i];

        if (lIsInput || lIsDeviceLink) {

            ColorSpaceIn = cmsGetColorSpace(ContextID, hProfile);
            ColorSpaceOut = cmsGetPCS(ContextID, hProfile);
        }
        else {

            ColorSpaceIn = cmsGetPCS(ContextID, hProfile);
            ColorSpaceOut = cmsGetColorSpace(ContextID, hProfile);
        }

        if (!ColorSpaceIsCompatible(ColorSpaceIn, CurrentColorSpace)) {

            cmsSignalError(ContextID, cmsERROR_COLORSPACE_CHECK, "ColorSpace mismatch");
            goto Error;
        }



        if (lIsDeviceLink || ((ClassSig == cmsSigNamedColorClass) && (nProfiles == 1))) {


            Lut = _cmsReadDevicelinkLUT(ContextID, hProfile, Intent);
            if (Lut == ((void*)0)) goto Error;


             if (ClassSig == cmsSigAbstractClass && i > 0) {
                if (!ComputeConversion(ContextID, i, hProfiles, Intent, BPC[i], AdaptationStates[i], &m, &off)) goto Error;
             }
             else {
                _cmsMAT3identity(ContextID, &m);
                _cmsVEC3init(ContextID, &off, 0, 0, 0);
             }


            if (!AddConversion(ContextID, Result, CurrentColorSpace, ColorSpaceIn, &m, &off)) goto Error;

        }
        else {

            if (lIsInput) {

                Lut = _cmsReadInputLUT(ContextID, hProfile, Intent);
                if (Lut == ((void*)0)) goto Error;
            }
            else {


                Lut = _cmsReadOutputLUT(ContextID, hProfile, Intent);
                if (Lut == ((void*)0)) goto Error;


                if (!ComputeConversion(ContextID, i, hProfiles, Intent, BPC[i], AdaptationStates[i], &m, &off)) goto Error;
                if (!AddConversion(ContextID, Result, CurrentColorSpace, ColorSpaceIn, &m, &off)) goto Error;

            }
        }


        if (!cmsPipelineCat(ContextID, Result, Lut))
            goto Error;

        cmsPipelineFree(ContextID, Lut);
        Lut = ((void*)0);


        CurrentColorSpace = ColorSpaceOut;
    }


    if (dwFlags & cmsFLAGS_NONEGATIVES) {

           if (ColorSpaceOut == cmsSigGrayData ||
                  ColorSpaceOut == cmsSigRgbData ||
                  ColorSpaceOut == cmsSigCmykData) {

                  cmsStage* clip = _cmsStageClipNegatives(ContextID, cmsChannelsOf(ContextID, ColorSpaceOut));
                  if (clip == ((void*)0)) goto Error;

                  if (!cmsPipelineInsertStage(ContextID, Result, cmsAT_END, clip))
                         goto Error;
           }

    }

    return Result;

Error:

    if (Lut != ((void*)0)) cmsPipelineFree(ContextID, Lut);
    if (Result != ((void*)0)) cmsPipelineFree(ContextID, Result);
    return ((void*)0);

    cmsUNUSED_PARAMETER(dwFlags);
}
