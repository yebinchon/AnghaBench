
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsInt32Number ;
typedef int * cmsHPROFILE ;


 int CheckCHAD (int,int *,int ) ;
 int CheckCRDinfo (int,int *,int ) ;
 int CheckChromaticity (int,int *,int ) ;
 int CheckColorantOrder (int,int *,int ) ;
 int CheckData (int,int *,int ) ;
 int CheckDateTime (int,int *,int ) ;
 int CheckDictionary24 (int,int *) ;
 int CheckGamma (int,int *,int ) ;
 int CheckICCViewingConditions (int,int *) ;
 int CheckLUT (int,int *,int ) ;
 int CheckMPE (int,int *,int ) ;
 int CheckMeasurement (int,int *,int ) ;
 int CheckNamedColor (int,int *,int ,int,int ) ;
 int CheckProfileSequenceIDTag (int,int *) ;
 int CheckProfileSequenceTag (int,int *) ;
 int CheckRAWtags (int,int *) ;
 int CheckScreening (int,int *,int ) ;
 int CheckSignature (int,int *,int ) ;
 int CheckText (int,int *,int ) ;
 int CheckTextSingle (int,int *,int ) ;
 int CheckUcrBg (int,int *,int ) ;
 int CheckVCGT (int,int *) ;
 int CheckXYZ (int,int *,int ) ;
 int DbgThread () ;
 int FALSE ;
 int Fail (char*) ;
 scalar_t__ INTENT_SATURATION ;
 int SubTest (char*) ;
 int TRUE ;
 int cmsCloseProfile (int ,int *) ;
 int * cmsCreateProfilePlaceholder (int ) ;
 scalar_t__ cmsGetColorSpace (int ,int *) ;
 scalar_t__ cmsGetDeviceClass (int ,int *) ;
 scalar_t__ cmsGetHeaderRenderingIntent (int ,int *) ;
 scalar_t__ cmsGetPCS (int ,int *) ;
 scalar_t__ cmsGetTagCount (int ,int *) ;
 scalar_t__ cmsIsTag (int ,int *,int ) ;
 int * cmsOpenProfileFromFile (int ,char*,char*) ;
 int cmsSaveProfileToFile (int ,int *,char*) ;
 int cmsSetColorSpace (int ,int *,scalar_t__) ;
 int cmsSetDeviceClass (int ,int *,scalar_t__) ;
 int cmsSetHeaderRenderingIntent (int ,int *,scalar_t__) ;
 int cmsSetPCS (int ,int *,scalar_t__) ;
 int cmsSetProfileVersion (int ,int *,double) ;
 int cmsSigAToB0Tag ;
 int cmsSigAToB1Tag ;
 int cmsSigAToB2Tag ;
 int cmsSigBToA0Tag ;
 int cmsSigBToA1Tag ;
 int cmsSigBToA2Tag ;
 int cmsSigBToD0Tag ;
 int cmsSigBToD1Tag ;
 int cmsSigBToD2Tag ;
 int cmsSigBToD3Tag ;
 int cmsSigBlueColorantTag ;
 int cmsSigBlueTRCTag ;
 int cmsSigCalibrationDateTimeTag ;
 int cmsSigCharTargetTag ;
 int cmsSigChromaticAdaptationTag ;
 int cmsSigChromaticityTag ;
 int cmsSigColorantOrderTag ;
 int cmsSigColorantTableOutTag ;
 int cmsSigColorantTableTag ;
 int cmsSigColorimetricIntentImageStateTag ;
 int cmsSigCopyrightTag ;
 int cmsSigCrdInfoTag ;
 int cmsSigDToB0Tag ;
 int cmsSigDToB1Tag ;
 int cmsSigDToB2Tag ;
 int cmsSigDToB3Tag ;
 int cmsSigDateTimeTag ;
 int cmsSigDeviceMfgDescTag ;
 int cmsSigDeviceModelDescTag ;
 scalar_t__ cmsSigDisplayClass ;
 int cmsSigGamutTag ;
 int cmsSigGrayTRCTag ;
 int cmsSigGreenColorantTag ;
 int cmsSigGreenTRCTag ;
 scalar_t__ cmsSigLabData ;
 int cmsSigLuminanceTag ;
 int cmsSigMeasurementTag ;
 int cmsSigMediaBlackPointTag ;
 int cmsSigMediaWhitePointTag ;
 int cmsSigNamedColor2Tag ;
 int cmsSigPerceptualRenderingIntentGamutTag ;
 int cmsSigPreview0Tag ;
 int cmsSigPreview1Tag ;
 int cmsSigPreview2Tag ;
 int cmsSigProfileDescriptionTag ;
 int cmsSigPs2CRD0Tag ;
 int cmsSigPs2CRD1Tag ;
 int cmsSigPs2CRD2Tag ;
 int cmsSigPs2CRD3Tag ;
 int cmsSigPs2CSATag ;
 int cmsSigPs2RenderingIntentTag ;
 int cmsSigRedColorantTag ;
 int cmsSigRedTRCTag ;
 scalar_t__ cmsSigRgbData ;
 int cmsSigSaturationRenderingIntentGamutTag ;
 int cmsSigScreeningDescTag ;
 int cmsSigScreeningTag ;
 int cmsSigTechnologyTag ;
 int cmsSigUcrBgTag ;
 int cmsSigViewingCondDescTag ;
 int remove (char*) ;

__attribute__((used)) static
cmsInt32Number CheckProfileCreation(void)
{
    cmsHPROFILE h;
    cmsInt32Number Pass;

    h = cmsCreateProfilePlaceholder(DbgThread());
    if (h == ((void*)0)) return 0;

    cmsSetProfileVersion(DbgThread(), h, 4.3);
    if (cmsGetTagCount(DbgThread(), h) != 0) { Fail("Empty profile with nonzero number of tags"); goto Error; }
    if (cmsIsTag(DbgThread(), h, cmsSigAToB0Tag)) { Fail("Found a tag in an empty profile"); goto Error; }

    cmsSetColorSpace(DbgThread(), h, cmsSigRgbData);
    if (cmsGetColorSpace(DbgThread(), h) != cmsSigRgbData) { Fail("Unable to set colorspace"); goto Error; }

    cmsSetPCS(DbgThread(), h, cmsSigLabData);
    if (cmsGetPCS(DbgThread(), h) != cmsSigLabData) { Fail("Unable to set colorspace"); goto Error; }

    cmsSetDeviceClass(DbgThread(), h, cmsSigDisplayClass);
    if (cmsGetDeviceClass(DbgThread(), h) != cmsSigDisplayClass) { Fail("Unable to set deviceclass"); goto Error; }

    cmsSetHeaderRenderingIntent(DbgThread(), h, INTENT_SATURATION);
    if (cmsGetHeaderRenderingIntent(DbgThread(), h) != INTENT_SATURATION) { Fail("Unable to set rendering intent"); goto Error; }

    for (Pass = 1; Pass <= 2; Pass++) {

        SubTest("Tags holding XYZ");

        if (!CheckXYZ(Pass, h, cmsSigBlueColorantTag)) goto Error;
        if (!CheckXYZ(Pass, h, cmsSigGreenColorantTag)) goto Error;
        if (!CheckXYZ(Pass, h, cmsSigRedColorantTag)) goto Error;
        if (!CheckXYZ(Pass, h, cmsSigMediaBlackPointTag)) goto Error;
        if (!CheckXYZ(Pass, h, cmsSigMediaWhitePointTag)) goto Error;
        if (!CheckXYZ(Pass, h, cmsSigLuminanceTag)) goto Error;

        SubTest("Tags holding curves");

        if (!CheckGamma(Pass, h, cmsSigBlueTRCTag)) goto Error;
        if (!CheckGamma(Pass, h, cmsSigGrayTRCTag)) goto Error;
        if (!CheckGamma(Pass, h, cmsSigGreenTRCTag)) goto Error;
        if (!CheckGamma(Pass, h, cmsSigRedTRCTag)) goto Error;

        SubTest("Tags holding text");

        if (!CheckTextSingle(Pass, h, cmsSigCharTargetTag)) goto Error;
        if (!CheckTextSingle(Pass, h, cmsSigScreeningDescTag)) goto Error;

        if (!CheckText(Pass, h, cmsSigCopyrightTag)) goto Error;
        if (!CheckText(Pass, h, cmsSigProfileDescriptionTag)) goto Error;
        if (!CheckText(Pass, h, cmsSigDeviceMfgDescTag)) goto Error;
        if (!CheckText(Pass, h, cmsSigDeviceModelDescTag)) goto Error;
        if (!CheckText(Pass, h, cmsSigViewingCondDescTag)) goto Error;



        SubTest("Tags holding cmsICCData");

        if (!CheckData(Pass, h, cmsSigPs2CRD0Tag)) goto Error;
        if (!CheckData(Pass, h, cmsSigPs2CRD1Tag)) goto Error;
        if (!CheckData(Pass, h, cmsSigPs2CRD2Tag)) goto Error;
        if (!CheckData(Pass, h, cmsSigPs2CRD3Tag)) goto Error;
        if (!CheckData(Pass, h, cmsSigPs2CSATag)) goto Error;
        if (!CheckData(Pass, h, cmsSigPs2RenderingIntentTag)) goto Error;

        SubTest("Tags holding signatures");

        if (!CheckSignature(Pass, h, cmsSigColorimetricIntentImageStateTag)) goto Error;
        if (!CheckSignature(Pass, h, cmsSigPerceptualRenderingIntentGamutTag)) goto Error;
        if (!CheckSignature(Pass, h, cmsSigSaturationRenderingIntentGamutTag)) goto Error;
        if (!CheckSignature(Pass, h, cmsSigTechnologyTag)) goto Error;

        SubTest("Tags holding date_time");

        if (!CheckDateTime(Pass, h, cmsSigCalibrationDateTimeTag)) goto Error;
        if (!CheckDateTime(Pass, h, cmsSigDateTimeTag)) goto Error;

        SubTest("Tags holding named color lists");

        if (!CheckNamedColor(Pass, h, cmsSigColorantTableTag, 15, FALSE)) goto Error;
        if (!CheckNamedColor(Pass, h, cmsSigColorantTableOutTag, 15, FALSE)) goto Error;
        if (!CheckNamedColor(Pass, h, cmsSigNamedColor2Tag, 4096, TRUE)) goto Error;

        SubTest("Tags holding LUTs");

        if (!CheckLUT(Pass, h, cmsSigAToB0Tag)) goto Error;
        if (!CheckLUT(Pass, h, cmsSigAToB1Tag)) goto Error;
        if (!CheckLUT(Pass, h, cmsSigAToB2Tag)) goto Error;
        if (!CheckLUT(Pass, h, cmsSigBToA0Tag)) goto Error;
        if (!CheckLUT(Pass, h, cmsSigBToA1Tag)) goto Error;
        if (!CheckLUT(Pass, h, cmsSigBToA2Tag)) goto Error;
        if (!CheckLUT(Pass, h, cmsSigPreview0Tag)) goto Error;
        if (!CheckLUT(Pass, h, cmsSigPreview1Tag)) goto Error;
        if (!CheckLUT(Pass, h, cmsSigPreview2Tag)) goto Error;
        if (!CheckLUT(Pass, h, cmsSigGamutTag)) goto Error;

        SubTest("Tags holding CHAD");
        if (!CheckCHAD(Pass, h, cmsSigChromaticAdaptationTag)) goto Error;

        SubTest("Tags holding Chromaticity");
        if (!CheckChromaticity(Pass, h, cmsSigChromaticityTag)) goto Error;

        SubTest("Tags holding colorant order");
        if (!CheckColorantOrder(Pass, h, cmsSigColorantOrderTag)) goto Error;

        SubTest("Tags holding measurement");
        if (!CheckMeasurement(Pass, h, cmsSigMeasurementTag)) goto Error;

        SubTest("Tags holding CRD info");
        if (!CheckCRDinfo(Pass, h, cmsSigCrdInfoTag)) goto Error;

        SubTest("Tags holding UCR/BG");
        if (!CheckUcrBg(Pass, h, cmsSigUcrBgTag)) goto Error;

        SubTest("Tags holding MPE");
        if (!CheckMPE(Pass, h, cmsSigDToB0Tag)) goto Error;
        if (!CheckMPE(Pass, h, cmsSigDToB1Tag)) goto Error;
        if (!CheckMPE(Pass, h, cmsSigDToB2Tag)) goto Error;
        if (!CheckMPE(Pass, h, cmsSigDToB3Tag)) goto Error;
        if (!CheckMPE(Pass, h, cmsSigBToD0Tag)) goto Error;
        if (!CheckMPE(Pass, h, cmsSigBToD1Tag)) goto Error;
        if (!CheckMPE(Pass, h, cmsSigBToD2Tag)) goto Error;
        if (!CheckMPE(Pass, h, cmsSigBToD3Tag)) goto Error;

        SubTest("Tags using screening");
        if (!CheckScreening(Pass, h, cmsSigScreeningTag)) goto Error;

        SubTest("Tags holding profile sequence description");
        if (!CheckProfileSequenceTag(Pass, h)) goto Error;
        if (!CheckProfileSequenceIDTag(Pass, h)) goto Error;

        SubTest("Tags holding ICC viewing conditions");
        if (!CheckICCViewingConditions(Pass, h)) goto Error;

        SubTest("VCGT tags");
        if (!CheckVCGT(Pass, h)) goto Error;

        SubTest("RAW tags");
        if (!CheckRAWtags(Pass, h)) goto Error;

        SubTest("Dictionary meta tags");

        if (!CheckDictionary24(Pass, h)) goto Error;

        if (Pass == 1) {
            cmsSaveProfileToFile(DbgThread(), h, "alltags.icc");
            cmsCloseProfile(DbgThread(), h);
            h = cmsOpenProfileFromFile(DbgThread(), "alltags.icc", "r");
        }

    }
    cmsCloseProfile(DbgThread(), h);
    remove("alltags.icc");
    return 1;

Error:
    cmsCloseProfile(DbgThread(), h);
    remove("alltags.icc");
    return 0;
}
