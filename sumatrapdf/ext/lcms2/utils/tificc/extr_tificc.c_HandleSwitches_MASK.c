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

/* Variables and functions */
 void* BlackWhiteCompensation ; 
 int EOF ; 
 void* EmbedProfile ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 void* GamutCheck ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 void* IgnoreEmbedded ; 
 double InkLimit ; 
 void* Intent ; 
 double ObserverAdaptationState ; 
 int PrecalcMode ; 
 void* ProofingIntent ; 
 void* SaveEmbedded ; 
 void* StoreAsAlpha ; 
 void* TRUE ; 
 void* Verbose ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int Width ; 
 double FUNC3 (void*) ; 
 void* FUNC4 (void*) ; 
 int /*<<< orphan*/ * cInpProf ; 
 int /*<<< orphan*/ * cOutProf ; 
 void* cProofing ; 
 void* lIsDeviceLink ; 
 int FUNC5 (int,char**,char*) ; 
 void* xoptarg ; 

__attribute__((used)) static
void FUNC6(int argc, char *argv[])
{
    int s;

    while ((s=FUNC5(argc,argv,"aAeEbBw:W:nNvVGgh:H:i:I:o:O:P:p:t:T:c:C:l:L:M:m:K:k:S:s:D:d:")) != EOF) {

        switch (s) {

        case 'a':
        case 'A':
            StoreAsAlpha = TRUE;
            break;
        case 'b':
        case 'B':
            BlackWhiteCompensation = TRUE;
            break;

        case 'c':
        case 'C':
            PrecalcMode = FUNC4(xoptarg);
            if (PrecalcMode < 0 || PrecalcMode > 3)
                FUNC0("Unknown precalc mode '%d'", PrecalcMode);
            break;

        case 'd':
        case 'D': ObserverAdaptationState = FUNC3(xoptarg);
            if (ObserverAdaptationState < 0 ||
                ObserverAdaptationState > 1.0)
                FUNC2("Adaptation state should be 0..1");
            break;

        case 'e':
        case 'E':
            EmbedProfile = TRUE;
            break;

        case 'g':
        case 'G':
            GamutCheck = TRUE;
            break;

        case 'v':
        case 'V':
            Verbose = TRUE;
            break;

        case 'i':
        case 'I':
            if (lIsDeviceLink)
                FUNC0("Device-link already specified");

            cInpProf = xoptarg;
            break;

        case 'o':
        case 'O':
            if (lIsDeviceLink)
                FUNC0("Device-link already specified");

            cOutProf = xoptarg;
            break;

        case 'l':
        case 'L':
            if (cInpProf != NULL || cOutProf != NULL)
                FUNC0("input/output profiles already specified");

            cInpProf = xoptarg;
            lIsDeviceLink = TRUE;
            break;

        case 'p':
        case 'P':
            cProofing = xoptarg;
            break;

        case 't':
        case 'T':
            Intent = FUNC4(xoptarg);
            break;

        case 'm':
        case 'M':
            ProofingIntent = FUNC4(xoptarg);
            break;

        case 'N':
        case 'n':
            IgnoreEmbedded = TRUE;
            break;

        case 'W':
        case 'w':
            Width = FUNC4(xoptarg);
            if (Width != 8 && Width != 16 && Width != 32)
                FUNC0("Only 8, 16 and 32 bps are supported");
            break;

        case 'k':
        case 'K':
            InkLimit = FUNC3(xoptarg);
            if (InkLimit < 0.0 || InkLimit > 400.0)
                FUNC0("Ink limit must be 0%%..400%%");
            break;


        case 's':
        case 'S': SaveEmbedded = xoptarg;
            break;

        case 'H':
        case 'h':  {

            int a =  FUNC4(xoptarg);
            FUNC1(a);
            }
            break;

        default:

            FUNC0("Unknown option - run without args to see valid ones");
        }

    }
}