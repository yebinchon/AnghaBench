
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsUInt32Number ;
typedef int * cmsHTRANSFORM ;
typedef int * cmsHPROFILE ;
typedef int * cmsContext ;
typedef int cmsColorSpaceSignature ;
typedef int Profiles ;


 scalar_t__ BlackPointCompensation ;
 int FatalError (char*,...) ;
 int HandleSwitches (int,char**) ;
 int Help (int ) ;
 int InitUtils (int *,char*) ;
 double InkLimit ;
 int Intent ;
 scalar_t__ KeepLinearization ;
 double LCMS_VERSION ;
 int NumOfGridPoints ;
 int ObserverAdaptationState ;
 int * OpenStockProfile (int *,char*) ;
 int PrecalcMode ;
 int PrintProfileInformation (int *,int *) ;
 int SetTextTags (int *,int *) ;
 scalar_t__ TagResult ;
 int Verbose ;
 int Version ;
 int cOutProf ;
 int cmsCloseProfile (int *,int *) ;
 int * cmsCreateInkLimitingDeviceLink (int *,int ,double) ;
 int * cmsCreateMultiprofileTransform (int *,int **,int,int ,int ,int ,int) ;
 int cmsDeleteTransform (int *,int *) ;
 int cmsFLAGS_8BITS_DEVICELINK ;
 int cmsFLAGS_BLACKPOINTCOMPENSATION ;
 int cmsFLAGS_CLUT_POST_LINEARIZATION ;
 int cmsFLAGS_CLUT_PRE_LINEARIZATION ;
 int cmsFLAGS_GRIDPOINTS (int ) ;
 int cmsFLAGS_GUESSDEVICECLASS ;
 int cmsFLAGS_HIGHRESPRECALC ;
 int cmsFLAGS_KEEP_SEQUENCE ;
 int cmsFLAGS_LOWRESPRECALC ;
 int cmsFLAGS_NOOPTIMIZE ;
 int cmsGetColorSpace (int *,int *) ;
 scalar_t__ cmsSaveProfileToFile (int *,int *,int ) ;
 int cmsSetAdaptationState (int *,int ) ;
 int cmsSetHeaderRenderingIntent (int *,int *,int ) ;
 int * cmsTransform2DeviceLink (int *,int *,int ,int) ;
 int fflush (int ) ;
 int fprintf (int ,char*,...) ;
 scalar_t__ lUse8bits ;
 int memset (int **,int ,int) ;
 int stderr ;
 int xoptind ;

int main(int argc, char *argv[])
{
    int i, nargs, rc;
    cmsHPROFILE Profiles[257];
    cmsHPROFILE hProfile;
    cmsUInt32Number dwFlags;
    cmsHTRANSFORM hTransform = ((void*)0);
    cmsContext ContextID = ((void*)0);


    fprintf(stderr, "little cms ICC device link generator - v2.2 [LittleCMS %2.2f]\n", LCMS_VERSION / 1000.0);
    fflush(stderr);


    InitUtils(ContextID, "linkicc");
    rc = 0;


    HandleSwitches(argc, argv);


    nargs = (argc - xoptind);
    if (nargs < 1)
        return Help(0);

    if (nargs > 255) {
        FatalError("Holy profile! what are you trying to do with so many profiles!?");
        goto Cleanup;
    }


    memset(Profiles, 0, sizeof(Profiles));
    for (i=0; i < nargs; i++) {

        Profiles[i] = OpenStockProfile(ContextID, argv[i + xoptind]);
        if (Profiles[i] == ((void*)0)) goto Cleanup;

        if (Verbose >= 1) {
            PrintProfileInformation(ContextID, Profiles[i]);
        }
    }


    if (InkLimit != 400.0) {
        cmsColorSpaceSignature EndingColorSpace = cmsGetColorSpace(ContextID, Profiles[nargs-1]);
        Profiles[nargs++] = cmsCreateInkLimitingDeviceLink(ContextID, EndingColorSpace, InkLimit);
    }


    dwFlags = cmsFLAGS_KEEP_SEQUENCE;
    switch (PrecalcMode) {

        case 0: dwFlags |= cmsFLAGS_LOWRESPRECALC; break;
        case 2: dwFlags |= cmsFLAGS_HIGHRESPRECALC; break;
        case 1:
            if (NumOfGridPoints > 0)
                dwFlags |= cmsFLAGS_GRIDPOINTS(NumOfGridPoints);
            break;

        default:
            {
                FatalError("Unknown precalculation mode '%d'", PrecalcMode);
                goto Cleanup;
            }
    }

    if (BlackPointCompensation)
        dwFlags |= cmsFLAGS_BLACKPOINTCOMPENSATION;

    if (TagResult)
        dwFlags |= cmsFLAGS_GUESSDEVICECLASS;

    if (KeepLinearization)
        dwFlags |= cmsFLAGS_CLUT_PRE_LINEARIZATION|cmsFLAGS_CLUT_POST_LINEARIZATION;

    if (lUse8bits) dwFlags |= cmsFLAGS_8BITS_DEVICELINK;

     cmsSetAdaptationState(ContextID, ObserverAdaptationState);



    hTransform = cmsCreateMultiprofileTransform(ContextID, Profiles, nargs, 0, 0, Intent, dwFlags|cmsFLAGS_NOOPTIMIZE);
    if (hTransform == ((void*)0)) {
        FatalError("Transform creation failed");
        goto Cleanup;
    }

    hProfile = cmsTransform2DeviceLink(ContextID, hTransform, Version, dwFlags);
    if (hProfile == ((void*)0)) {
        FatalError("Devicelink creation failed");
        goto Cleanup;
    }

    SetTextTags(ContextID, hProfile);
    cmsSetHeaderRenderingIntent(ContextID, hProfile, Intent);

    if (cmsSaveProfileToFile(ContextID, hProfile, cOutProf)) {

        if (Verbose > 0)
            fprintf(stderr, "Ok");
    }
    else
        FatalError("Error saving file!");

    cmsCloseProfile(ContextID, hProfile);


Cleanup:

    if (hTransform != ((void*)0)) cmsDeleteTransform(ContextID, hTransform);
    for (i=0; i < nargs; i++) {

        if (Profiles[i] != ((void*)0)) cmsCloseProfile(ContextID, Profiles[i]);
    }

    return rc;
}
