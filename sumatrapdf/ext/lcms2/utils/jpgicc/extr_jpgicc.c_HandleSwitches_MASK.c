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
 int* Alarm ; 
 void* BlackPointCompensation ; 
 int EOF ; 
 void* EmbedProfile ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 void* GamutCheck ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 void* IgnoreEmbedded ; 
 void* Intent ; 
 double ObserverAdaptationState ; 
 int PrecalcMode ; 
 void* ProofingIntent ; 
 void* SaveEmbedded ; 
 void* TRUE ; 
 void* Verbose ; 
 double FUNC2 (void*) ; 
 void* FUNC3 (void*) ; 
 int /*<<< orphan*/ * cInpProf ; 
 int /*<<< orphan*/ * cOutProf ; 
 void* cProofing ; 
 int jpegQuality ; 
 void* lIsDeviceLink ; 
 int FUNC4 (void*,char*,int*,int*,int*) ; 
 int FUNC5 (int,char**,char*) ; 
 void* xoptarg ; 

__attribute__((used)) static
void FUNC6(int argc, char *argv[])
{
    int s;

    while ((s=FUNC5(argc,argv,"bBnNvVGgh:H:i:I:o:O:P:p:t:T:c:C:Q:q:M:m:L:l:eEs:S:!:D:d:")) != EOF) {

        switch (s)
        {

        case 'b':
        case 'B':
            BlackPointCompensation = TRUE;
            break;

        case 'd':
        case 'D': ObserverAdaptationState = FUNC2(xoptarg);
            if (ObserverAdaptationState < 0 ||
                ObserverAdaptationState > 1.0)
                FUNC0("Adaptation state should be 0..1");
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
            Intent = FUNC3(xoptarg);
            break;

        case 'N':
        case 'n':
            IgnoreEmbedded = TRUE;
            break;

        case 'e':
        case 'E':
            EmbedProfile = TRUE;
            break;


        case 'g':
        case 'G':
            GamutCheck = TRUE;
            break;

        case 'c':
        case 'C':
            PrecalcMode = FUNC3(xoptarg);
            if (PrecalcMode < 0 || PrecalcMode > 2)
                FUNC0("Unknown precalc mode '%d'", PrecalcMode);
            break;

        case 'H':
        case 'h':  {

            int a =  FUNC3(xoptarg);
            FUNC1(a);
                   }
            break;

        case 'q':
        case 'Q':
            jpegQuality = FUNC3(xoptarg);
            if (jpegQuality > 100) jpegQuality = 100;
            if (jpegQuality < 0)   jpegQuality = 0;
            break;

        case 'm':
        case 'M':
            ProofingIntent = FUNC3(xoptarg);
            break;

        case 's':
        case 'S': SaveEmbedded = xoptarg;
            break;

        case '!':
            if (FUNC4(xoptarg, "%hu,%hu,%hu", &Alarm[0], &Alarm[1], &Alarm[2]) == 3) {
                int i;
                for (i=0; i < 3; i++) {
                    Alarm[i] = (Alarm[i] << 8) | Alarm[i];
                }
            }
            break;

        default:

            FUNC0("Unknown option - run without args to see valid ones");
        }

    }
}