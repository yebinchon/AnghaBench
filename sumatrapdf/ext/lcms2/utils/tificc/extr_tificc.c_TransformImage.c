
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsUInt32Number ;
typedef int * cmsHTRANSFORM ;
typedef int * cmsHPROFILE ;
typedef int TIFF ;


 scalar_t__ BlackWhiteCompensation ;
 int ComputeOutputFormatDescriptor (int ,int,int) ;
 int CopyOtherTags (int *,int *) ;
 int DoEmbedProfile (int *,char const*) ;
 scalar_t__ EmbedProfile ;
 int FatalError (char*,...) ;
 scalar_t__ GamutCheck ;
 int GetInputPixelType (int *) ;
 int * GetTIFFProfile (int *) ;
 double InkLimit ;
 int Intent ;
 int ObserverAdaptationState ;
 int * OpenStockProfile (int *,char const*) ;
 int PT_CMY ;
 int PT_CMYK ;
 int PrecalcMode ;
 int ProofingIntent ;
 int StripBasedXform (int *,int *,int *,int) ;
 scalar_t__ TIFFIsTiled (int *) ;
 int TIFFWriteDirectory (int *) ;
 int T_CHANNELS (int ) ;
 scalar_t__ T_COLORSPACE (int ) ;
 int T_EXTRA (int ) ;
 scalar_t__ T_PLANAR (int ) ;
 int TileBasedXform (int *,int *,int *,int) ;
 int Width ;
 int WriteOutputTags (int *,int,int) ;
 int _cmsLCMScolorSpace (int *,int ) ;
 char const* cOutProf ;
 char const* cProofing ;
 int cmsCloseProfile (int *,int *) ;
 int * cmsCreateInkLimitingDeviceLink (int ,double) ;
 int * cmsCreateMultiprofileTransform (int **,int,int ,int ,int ,int ) ;
 int * cmsCreateProofingTransform (int *,int ,int *,int ,int *,int ,int ,int ) ;
 int cmsDeleteTransform (int *,int *) ;
 int cmsFLAGS_BLACKPOINTCOMPENSATION ;
 int cmsFLAGS_GAMUTCHECK ;
 int cmsFLAGS_HIGHRESPRECALC ;
 int cmsFLAGS_LOWRESPRECALC ;
 int cmsFLAGS_NOOPTIMIZE ;
 int cmsFLAGS_SOFTPROOFING ;
 int cmsGetColorSpace (int *,int *) ;
 int cmsGetPCS (int *,int *) ;
 int * cmsOpenProfileFromFile (char const*,char*) ;
 int cmsSetAdaptationState (int ) ;
 scalar_t__ lIsDeviceLink ;

__attribute__((used)) static
int TransformImage(TIFF* in, TIFF* out, const char *cDefInpProf)
{
    cmsHPROFILE hIn, hOut, hProof, hInkLimit = ((void*)0);
    cmsHTRANSFORM xform;
    cmsUInt32Number wInput, wOutput;
    int OutputColorSpace;
    int bps = Width / 8;
    cmsUInt32Number dwFlags = 0;
    int nPlanes;



    cmsSetAdaptationState(ObserverAdaptationState);

    if (EmbedProfile && cOutProf)
        DoEmbedProfile(out, cOutProf);

    if (BlackWhiteCompensation)
        dwFlags |= cmsFLAGS_BLACKPOINTCOMPENSATION;


    switch (PrecalcMode) {

       case 0: dwFlags |= cmsFLAGS_NOOPTIMIZE; break;
       case 2: dwFlags |= cmsFLAGS_HIGHRESPRECALC; break;
       case 3: dwFlags |= cmsFLAGS_LOWRESPRECALC; break;
       case 1: break;

       default: FatalError("Unknown precalculation mode '%d'", PrecalcMode);
    }


    if (GamutCheck)
        dwFlags |= cmsFLAGS_GAMUTCHECK;

    hProof = ((void*)0);
    hOut = ((void*)0);

    if (lIsDeviceLink) {

        hIn = cmsOpenProfileFromFile(cDefInpProf, "r");
    }
    else {

        hIn = GetTIFFProfile(in);

        if (hIn == ((void*)0))
            hIn = OpenStockProfile(((void*)0), cDefInpProf);

        hOut = OpenStockProfile(((void*)0), cOutProf);

        if (cProofing != ((void*)0)) {

            hProof = OpenStockProfile(((void*)0), cProofing);
            dwFlags |= cmsFLAGS_SOFTPROOFING;
        }
    }



    wInput = GetInputPixelType(in);



    if (_cmsLCMScolorSpace(((void*)0), cmsGetColorSpace(((void*)0), hIn)) != (int) T_COLORSPACE(wInput))
        FatalError("Input profile is not operating in proper color space");


    if (!lIsDeviceLink)
        OutputColorSpace = _cmsLCMScolorSpace(((void*)0), cmsGetColorSpace(((void*)0), hOut));
    else
        OutputColorSpace = _cmsLCMScolorSpace(((void*)0), cmsGetPCS(((void*)0), hIn));

    wOutput = ComputeOutputFormatDescriptor(wInput, OutputColorSpace, bps);

    WriteOutputTags(out, OutputColorSpace, bps);
    CopyOtherTags(in, out);


    if (InkLimit != 400.0 &&
        (OutputColorSpace == PT_CMYK || OutputColorSpace == PT_CMY)) {

            cmsHPROFILE hProfiles[10];
            int nProfiles = 0;


            hInkLimit = cmsCreateInkLimitingDeviceLink(cmsGetColorSpace(((void*)0), hOut), InkLimit);

            hProfiles[nProfiles++] = hIn;
            if (hProof) {
                hProfiles[nProfiles++] = hProof;
                hProfiles[nProfiles++] = hProof;
            }

            hProfiles[nProfiles++] = hOut;
            hProfiles[nProfiles++] = hInkLimit;

            xform = cmsCreateMultiprofileTransform(hProfiles, nProfiles,
                                                   wInput, wOutput, Intent, dwFlags);

    }
    else {

        xform = cmsCreateProofingTransform(hIn, wInput,
                                           hOut, wOutput,
                                           hProof, Intent,
                                           ProofingIntent,
                                           dwFlags);
    }

    cmsCloseProfile(((void*)0), hIn);
    cmsCloseProfile(((void*)0), hOut);

    if (hInkLimit)
        cmsCloseProfile(((void*)0), hInkLimit);
    if (hProof)
        cmsCloseProfile(((void*)0), hProof);

    if (xform == ((void*)0)) return 0;


    if (T_PLANAR(wInput))
        nPlanes = T_CHANNELS(wInput) + T_EXTRA(wInput);
    else
        nPlanes = 1;



    if (TIFFIsTiled(in)) {

        TileBasedXform(xform, in, out, nPlanes);
    }
    else {
        StripBasedXform(xform, in, out, nPlanes);
    }


    cmsDeleteTransform(((void*)0), xform);

    TIFFWriteDirectory(out);

    return 1;
}
