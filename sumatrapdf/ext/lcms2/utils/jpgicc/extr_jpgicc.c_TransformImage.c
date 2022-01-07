
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsUInt8Number ;
typedef int cmsUInt32Number ;
typedef int * cmsHTRANSFORM ;
typedef int * cmsHPROFILE ;


 int Alarm ;
 scalar_t__ BlackPointCompensation ;
 int Compressor ;
 int ComputeOutputFormatDescriptor (int ,int) ;
 int * CreateITU2PCS_ICC () ;
 int * CreatePCS2ITU_ICC () ;
 int Decompressor ;
 int DoTransform (int *,int) ;
 int FatalError (char*) ;
 scalar_t__ GamutCheck ;
 int GetDevicelinkColorSpace (int *) ;
 int GetInputPixelType () ;
 int GetProfileColorSpace (int *) ;
 int IgnoreEmbedded ;
 int Intent ;
 int ObserverAdaptationState ;
 int * OpenStockProfile (int ,char*) ;
 scalar_t__ PT_Lab ;
 int PrecalcMode ;
 int PrintProfileInformation (int *,int *) ;
 int ProofingIntent ;
 int * SaveEmbedded ;
 int SaveMemoryBlock (int *,int ,int *) ;
 scalar_t__ T_COLORSPACE (int ) ;
 scalar_t__ Verbose ;
 int WriteOutputFields (int) ;
 scalar_t__ _cmsICCcolorSpace (int *,scalar_t__) ;
 char* cProofing ;
 int cmsCloseProfile (int *,int *) ;
 int * cmsCreateProofingTransform (int *,int ,int *,int ,int *,int ,int ,int ) ;
 int cmsDeleteTransform (int *,int *) ;
 int cmsFLAGS_BLACKPOINTCOMPENSATION ;
 int cmsFLAGS_GAMUTCHECK ;
 int cmsFLAGS_HIGHRESPRECALC ;
 int cmsFLAGS_LOWRESPRECALC ;
 int cmsFLAGS_NOOPTIMIZE ;
 int cmsFLAGS_SOFTPROOFING ;
 scalar_t__ cmsGetColorSpace (int *,int *) ;
 int * cmsOpenProfileFromFile (char*,char*) ;
 int * cmsOpenProfileFromMem (int *,int ) ;
 int cmsSetAdaptationState (int ) ;
 int cmsSetAlarmCodes (int ) ;
 scalar_t__ cmsstrcasecmp (char*,char*) ;
 int fflush (int ) ;
 int fprintf (int ,char*) ;
 int free (int *) ;
 int jcopy_markers_execute (int *,int *) ;
 int jpeg_copy_critical_parameters (int *,int *) ;
 scalar_t__ lIsDeviceLink ;
 scalar_t__ read_icc_profile (int *,int **,int *) ;
 int stdout ;

__attribute__((used)) static
int TransformImage(char *cDefInpProf, char *cOutputProf)
{
       cmsHPROFILE hIn, hOut, hProof;
       cmsHTRANSFORM xform;
       cmsUInt32Number wInput, wOutput;
       int OutputColorSpace;
       cmsUInt32Number dwFlags = 0;
       cmsUInt32Number EmbedLen;
       cmsUInt8Number* EmbedBuffer;


       cmsSetAdaptationState(ObserverAdaptationState);

       if (BlackPointCompensation) {

            dwFlags |= cmsFLAGS_BLACKPOINTCOMPENSATION;
       }


       switch (PrecalcMode) {

       case 0: dwFlags |= cmsFLAGS_NOOPTIMIZE; break;
       case 2: dwFlags |= cmsFLAGS_HIGHRESPRECALC; break;
       case 3: dwFlags |= cmsFLAGS_LOWRESPRECALC; break;
       default:;
       }


       if (GamutCheck) {
            dwFlags |= cmsFLAGS_GAMUTCHECK;
            cmsSetAlarmCodes(Alarm);
       }


       wInput = GetInputPixelType();

        if (lIsDeviceLink) {

            hIn = cmsOpenProfileFromFile(cDefInpProf, "r");
            hOut = ((void*)0);
            hProof = ((void*)0);
       }
        else {

        if (!IgnoreEmbedded && read_icc_profile(&Decompressor, &EmbedBuffer, &EmbedLen))
        {
              hIn = cmsOpenProfileFromMem(EmbedBuffer, EmbedLen);

               if (Verbose) {

                  fprintf(stdout, " (Embedded profile found)\n");
                  PrintProfileInformation(((void*)0), hIn);
                  fflush(stdout);
              }

               if (hIn != ((void*)0) && SaveEmbedded != ((void*)0))
                          SaveMemoryBlock(EmbedBuffer, EmbedLen, SaveEmbedded);

              free(EmbedBuffer);
        }
        else
        {

            if (cDefInpProf == ((void*)0) && T_COLORSPACE(wInput) == PT_Lab)
                cDefInpProf = "*Lab";

            if (cDefInpProf != ((void*)0) && cmsstrcasecmp(cDefInpProf, "*lab") == 0)
                hIn = CreateITU2PCS_ICC();
            else
                hIn = OpenStockProfile(0, cDefInpProf);
       }

        if (cOutputProf != ((void*)0) && cmsstrcasecmp(cOutputProf, "*lab") == 0)
            hOut = CreatePCS2ITU_ICC();
        else
        hOut = OpenStockProfile(0, cOutputProf);

       hProof = ((void*)0);
       if (cProofing != ((void*)0)) {

           hProof = OpenStockProfile(0, cProofing);
           if (hProof == ((void*)0)) {
            FatalError("Proofing profile couldn't be read.");
           }
           dwFlags |= cmsFLAGS_SOFTPROOFING;
          }
       }

        if (!hIn)
            FatalError("Input profile couldn't be read.");
        if (!lIsDeviceLink && !hOut)
            FatalError("Output profile couldn't be read.");


       if (cmsGetColorSpace(((void*)0), hIn) != _cmsICCcolorSpace(((void*)0), T_COLORSPACE(wInput)))
              FatalError("Input profile is not operating in proper color space");




        if (lIsDeviceLink) {
            OutputColorSpace = GetDevicelinkColorSpace(hIn);
        }
        else {
            OutputColorSpace = GetProfileColorSpace(hOut);
        }

       jpeg_copy_critical_parameters(&Decompressor, &Compressor);

       WriteOutputFields(OutputColorSpace);

       wOutput = ComputeOutputFormatDescriptor(wInput, OutputColorSpace);


       xform = cmsCreateProofingTransform(hIn, wInput,
                                          hOut, wOutput,
                                          hProof, Intent,
                                          ProofingIntent, dwFlags);
       if (xform == ((void*)0))
                 FatalError("Cannot transform by using the profiles");

       DoTransform(xform, OutputColorSpace);


       jcopy_markers_execute(&Decompressor, &Compressor);

       cmsDeleteTransform(((void*)0), xform);
       cmsCloseProfile(((void*)0), hIn);
       cmsCloseProfile(((void*)0), hOut);
       if (hProof) cmsCloseProfile(((void*)0), hProof);

       return 1;
}
