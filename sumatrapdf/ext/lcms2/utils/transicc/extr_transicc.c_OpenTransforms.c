
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsUInt32Number ;
typedef int cmsUInt16Number ;
typedef int cmsNAMEDCOLORLIST ;
typedef int * cmsHPROFILE ;
typedef int cmsContext ;
typedef scalar_t__ cmsBool ;


 scalar_t__ BlackPointCompensation ;
 int ComponentNames (int ,int ,scalar_t__) ;
 scalar_t__ FALSE ;
 int FatalError (char*,...) ;
 scalar_t__ GamutCheck ;
 int InputColorSpace ;
 int InputColorant ;
 scalar_t__ InputNamedColor ;
 int InputRange ;
 int Intent ;
 int * OpenStockProfile (int ,int *) ;
 int OutputColorSpace ;
 int OutputColorant ;
 int OutputRange ;
 int PrecalcMode ;
 int PrintProfileInformation (int ,int *) ;
 int ProofingIntent ;
 int SW ;
 int SetRange (int,scalar_t__) ;
 scalar_t__ TRUE ;
 int TYPE_Lab_16 ;
 int TYPE_Lab_DBL ;
 int TYPE_NAMED_COLOR_INDEX ;
 int TYPE_XYZ_16 ;
 int TYPE_XYZ_DBL ;
 int Verbose ;
 int * cInProf ;
 int * cOutProf ;
 int * cProofing ;
 int cmsCloseProfile (int ,int *) ;
 int * cmsCreateLab4Profile (int ,int *) ;
 int * cmsCreateProofingTransform (int ,int *,int ,int *,int ,int *,int ,int ,int ) ;
 void* cmsCreateTransform (int ,int *,int ,int *,int ,int ,int ) ;
 int * cmsCreateXYZProfile (int ) ;
 int cmsDupNamedColorList (int ,int *) ;
 int cmsFLAGS_BLACKPOINTCOMPENSATION ;
 int cmsFLAGS_GAMUTCHECK ;
 int cmsFLAGS_HIGHRESPRECALC ;
 int cmsFLAGS_LOWRESPRECALC ;
 int cmsFLAGS_NOCACHE ;
 int cmsFLAGS_NOOPTIMIZE ;
 int cmsFLAGS_SOFTPROOFING ;
 int cmsFormatterForColorspaceOfProfile (int ,int *,int,scalar_t__) ;
 int cmsFormatterForPCSOfProfile (int ,int *,int,scalar_t__) ;
 int cmsGetColorSpace (int ,int *) ;
 scalar_t__ cmsGetDeviceClass (int ,int *) ;
 int cmsGetPCS (int ,int *) ;
 scalar_t__ cmsIsTag (int ,int *,int ) ;
 int cmsMAXCHANNELS ;
 int cmsNamedColorCount (int ,int ) ;
 int * cmsReadTag (int ,int *,int ) ;
 int cmsSetAlarmCodes (int ,int*) ;
 int cmsSigColorantTableOutTag ;
 int cmsSigColorantTableTag ;
 scalar_t__ cmsSigLinkClass ;
 scalar_t__ cmsSigNamedColorClass ;
 int * hTrans ;
 int * hTransLab ;
 int * hTransXYZ ;
 scalar_t__ lIsDeviceLink ;
 scalar_t__ lIsFloat ;
 int printf (char*) ;

__attribute__((used)) static
cmsBool OpenTransforms(cmsContext ContextID)
{
    cmsHPROFILE hInput, hOutput, hProof;
    cmsUInt32Number dwIn, dwOut, dwFlags;
    cmsNAMEDCOLORLIST* List;
    int i;


    dwFlags = cmsFLAGS_NOCACHE;

    if (lIsDeviceLink) {

        hInput = OpenStockProfile(0, cInProf);
        if (hInput == ((void*)0)) return FALSE;
        hOutput = ((void*)0);
        hProof = ((void*)0);

        if (cmsGetDeviceClass(ContextID, hInput) == cmsSigNamedColorClass) {
            OutputColorSpace = cmsGetColorSpace(ContextID, hInput);
            InputColorSpace = cmsGetPCS(ContextID, hInput);
        }
        else {
            InputColorSpace = cmsGetColorSpace(ContextID, hInput);
            OutputColorSpace = cmsGetPCS(ContextID, hInput);
        }


        if (cmsIsTag(ContextID, hInput, cmsSigColorantTableTag)) {
            List = cmsReadTag(ContextID, hInput, cmsSigColorantTableTag);
            InputColorant = cmsDupNamedColorList(ContextID, List);
            InputRange = 1;
        }
        else InputColorant = ComponentNames(ContextID, InputColorSpace, TRUE);

        if (cmsIsTag(ContextID, hInput, cmsSigColorantTableOutTag)){

            List = cmsReadTag(ContextID, hInput, cmsSigColorantTableOutTag);
            OutputColorant = cmsDupNamedColorList(ContextID, List);
            OutputRange = 1;
        }
        else OutputColorant = ComponentNames(ContextID, OutputColorSpace, FALSE);

    }
    else {

        hInput = OpenStockProfile(0, cInProf);
        if (hInput == ((void*)0)) return FALSE;

        hOutput = OpenStockProfile(0, cOutProf);
        if (hOutput == ((void*)0)) return FALSE;
        hProof = ((void*)0);


        if (cmsGetDeviceClass(ContextID, hInput) == cmsSigLinkClass ||
            cmsGetDeviceClass(ContextID, hOutput) == cmsSigLinkClass)
            FatalError("Use %cl flag for devicelink profiles!\n", SW);


        InputColorSpace = cmsGetColorSpace(ContextID, hInput);
        OutputColorSpace = cmsGetColorSpace(ContextID, hOutput);


        if (cmsIsTag(ContextID, hInput, cmsSigColorantTableTag)) {
            List = cmsReadTag(ContextID, hInput, cmsSigColorantTableTag);
            InputColorant = cmsDupNamedColorList(ContextID, List);
            if (cmsNamedColorCount(ContextID, InputColorant) <= 3)
                SetRange(255, TRUE);
            else
                SetRange(1, TRUE);

        }
        else InputColorant = ComponentNames(ContextID, InputColorSpace, TRUE);

        if (cmsIsTag(ContextID, hOutput, cmsSigColorantTableTag)){

            List = cmsReadTag(ContextID, hOutput, cmsSigColorantTableTag);
            OutputColorant = cmsDupNamedColorList(ContextID, List);
            if (cmsNamedColorCount(ContextID, OutputColorant) <= 3)
                SetRange(255, FALSE);
            else
                SetRange(1, FALSE);
        }
        else OutputColorant = ComponentNames(ContextID, OutputColorSpace, FALSE);


        if (cProofing != ((void*)0)) {

            hProof = OpenStockProfile(0, cProofing);
            if (hProof == ((void*)0)) return FALSE;
            dwFlags |= cmsFLAGS_SOFTPROOFING;
        }
    }


    if (Verbose > 2) {

        printf("Profile:\n");
        PrintProfileInformation(ContextID, hInput);

        if (hOutput) {

            printf("Output profile:\n");
            PrintProfileInformation(ContextID, hOutput);
        }

        if (hProof != ((void*)0)) {
            printf("Proofing profile:\n");
            PrintProfileInformation(ContextID, hProof);
        }
    }



    dwIn = cmsFormatterForColorspaceOfProfile(ContextID, hInput, 0, TRUE);

    if (lIsDeviceLink) {

        dwOut = cmsFormatterForPCSOfProfile(ContextID, hInput, lIsFloat ? 0 : 2, lIsFloat);
    }
    else {


        dwOut = cmsFormatterForColorspaceOfProfile(ContextID, hOutput, lIsFloat ? 0 : 2, lIsFloat);
    }


    if (cmsGetDeviceClass(ContextID, hInput) == cmsSigNamedColorClass) {

        dwIn = TYPE_NAMED_COLOR_INDEX;
        InputNamedColor = TRUE;
    }


    switch (PrecalcMode) {

       case 0: dwFlags |= cmsFLAGS_NOOPTIMIZE; break;
       case 2: dwFlags |= cmsFLAGS_HIGHRESPRECALC; break;
       case 3: dwFlags |= cmsFLAGS_LOWRESPRECALC; break;
       case 1: break;

       default:
           FatalError("Unknown precalculation mode '%d'", PrecalcMode);
    }


    if (BlackPointCompensation)
        dwFlags |= cmsFLAGS_BLACKPOINTCOMPENSATION;


    if (GamutCheck) {

        cmsUInt16Number Alarm[cmsMAXCHANNELS];

        if (hProof == ((void*)0))
            FatalError("I need proofing profile -p for gamut checking!");

        for (i=0; i < cmsMAXCHANNELS; i++)
            Alarm[i] = 0xFFFF;

        cmsSetAlarmCodes(ContextID, Alarm);
        dwFlags |= cmsFLAGS_GAMUTCHECK;
    }



    hTrans = cmsCreateProofingTransform(ContextID, hInput, dwIn, hOutput, dwOut, hProof, Intent, ProofingIntent, dwFlags);

    if (hProof) cmsCloseProfile(ContextID, hProof);

    if (hTrans == ((void*)0)) return FALSE;



    hTransXYZ = ((void*)0); hTransLab = ((void*)0);

    if (hOutput && Verbose > 1) {

        cmsHPROFILE hXYZ = cmsCreateXYZProfile(ContextID);
        cmsHPROFILE hLab = cmsCreateLab4Profile(ContextID, ((void*)0));

        hTransXYZ = cmsCreateTransform(ContextID, hInput, dwIn, hXYZ, lIsFloat ? TYPE_XYZ_DBL : TYPE_XYZ_16, Intent, cmsFLAGS_NOCACHE);
        if (hTransXYZ == ((void*)0)) return FALSE;

        hTransLab = cmsCreateTransform(ContextID, hInput, dwIn, hLab, lIsFloat? TYPE_Lab_DBL : TYPE_Lab_16, Intent, cmsFLAGS_NOCACHE);
        if (hTransLab == ((void*)0)) return FALSE;

        cmsCloseProfile(ContextID, hXYZ);
        cmsCloseProfile(ContextID, hLab);
    }

    if (hInput) cmsCloseProfile(ContextID, hInput);
    if (hOutput) cmsCloseProfile(ContextID, hOutput);

    return TRUE;
}
