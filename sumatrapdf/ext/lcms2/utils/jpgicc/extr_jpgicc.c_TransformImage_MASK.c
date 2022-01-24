#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  cmsUInt8Number ;
typedef  int /*<<< orphan*/  cmsUInt32Number ;
typedef  int /*<<< orphan*/ * cmsHTRANSFORM ;
typedef  int /*<<< orphan*/ * cmsHPROFILE ;

/* Variables and functions */
 int /*<<< orphan*/  Alarm ; 
 scalar_t__ BlackPointCompensation ; 
 int /*<<< orphan*/  Compressor ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/  Decompressor ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ GamutCheck ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IgnoreEmbedded ; 
 int /*<<< orphan*/  Intent ; 
 int /*<<< orphan*/  ObserverAdaptationState ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ PT_Lab ; 
 int PrecalcMode ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ProofingIntent ; 
 int /*<<< orphan*/ * SaveEmbedded ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ Verbose ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *,scalar_t__) ; 
 char* cProofing ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  cmsFLAGS_BLACKPOINTCOMPENSATION ; 
 int /*<<< orphan*/  cmsFLAGS_GAMUTCHECK ; 
 int /*<<< orphan*/  cmsFLAGS_HIGHRESPRECALC ; 
 int /*<<< orphan*/  cmsFLAGS_LOWRESPRECALC ; 
 int /*<<< orphan*/  cmsFLAGS_NOOPTIMIZE ; 
 int /*<<< orphan*/  cmsFLAGS_SOFTPROOFING ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC18 (char*,char*) ; 
 int /*<<< orphan*/ * FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC22 (char*,char*) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ lIsDeviceLink ; 
 scalar_t__ FUNC28 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static
int FUNC29(char *cDefInpProf, char *cOutputProf)
{
       cmsHPROFILE hIn, hOut, hProof;
       cmsHTRANSFORM xform;
       cmsUInt32Number wInput, wOutput;
       int OutputColorSpace;
       cmsUInt32Number dwFlags = 0;
       cmsUInt32Number EmbedLen;
       cmsUInt8Number* EmbedBuffer;


       FUNC20(ObserverAdaptationState);

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
            FUNC21(Alarm);
       }

       // Take input color space
       wInput = FUNC6();

        if (lIsDeviceLink) {

            hIn = FUNC18(cDefInpProf, "r");
            hOut = NULL;
            hProof = NULL;
       }
        else {

        if (!IgnoreEmbedded && FUNC28(&Decompressor, &EmbedBuffer, &EmbedLen))
        {
              hIn = FUNC19(EmbedBuffer, EmbedLen);

               if (Verbose) {

                  FUNC24(stdout, " (Embedded profile found)\n");
                  FUNC9(NULL, hIn);
                  FUNC23(stdout);
              }

               if (hIn != NULL && SaveEmbedded != NULL)
                          FUNC10(EmbedBuffer, EmbedLen, SaveEmbedded);

              FUNC25(EmbedBuffer);
        }
        else
        {
            // Default for ITU/Fax
            if (cDefInpProf == NULL && FUNC11(wInput) == PT_Lab)
                cDefInpProf = "*Lab";

            if (cDefInpProf != NULL && FUNC22(cDefInpProf, "*lab") == 0)
                hIn = FUNC1();
            else
                hIn = FUNC8(0, cDefInpProf);
       }

        if (cOutputProf != NULL && FUNC22(cOutputProf, "*lab") == 0)
            hOut = FUNC2();
        else
        hOut = FUNC8(0, cOutputProf);

       hProof = NULL;
       if (cProofing != NULL) {

           hProof = FUNC8(0, cProofing);
           if (hProof == NULL) {
            FUNC4("Proofing profile couldn't be read.");
           }
           dwFlags |= cmsFLAGS_SOFTPROOFING;
          }
       }

        if (!hIn)
            FUNC4("Input profile couldn't be read.");
        if (!lIsDeviceLink && !hOut)
            FUNC4("Output profile couldn't be read.");

       // Assure both, input profile and input JPEG are on same colorspace
       if (FUNC17(NULL, hIn) != FUNC13(NULL, FUNC11(wInput)))
              FUNC4("Input profile is not operating in proper color space");


       // Output colorspace is given by output profile

        if (lIsDeviceLink) {
            OutputColorSpace = FUNC5(hIn);
        }
        else {
            OutputColorSpace = FUNC7(hOut);
        }

       FUNC27(&Decompressor, &Compressor);

       FUNC12(OutputColorSpace);

       wOutput      = FUNC0(wInput, OutputColorSpace);


       xform = FUNC15(hIn, wInput,
                                          hOut, wOutput,
                                          hProof, Intent,
                                          ProofingIntent, dwFlags);
       if (xform == NULL)
                 FUNC4("Cannot transform by using the profiles");

       FUNC3(xform, OutputColorSpace);


       FUNC26(&Decompressor, &Compressor);

       FUNC16(NULL, xform);
       FUNC14(NULL, hIn);
       FUNC14(NULL, hOut);
       if (hProof) FUNC14(NULL, hProof);

       return 1;
}