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
typedef  double cmsFloat64Number ;
typedef  int /*<<< orphan*/  cmsContext ;

/* Variables and functions */
 void* BlackPointCompensation ; 
 int EOF ; 
 void* FALSE ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 void* GamutCheck ; 
 void* InHexa ; 
 void* IncludePart ; 
 void* Intent ; 
 int PrecalcMode ; 
 int ProofingIntent ; 
 void* TRUE ; 
 int Verbose ; 
 void* Width16 ; 
 double FUNC1 (void*) ; 
 void* FUNC2 (void*) ; 
 void* cInProf ; 
 void* cOutProf ; 
 void* cProofing ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,double) ; 
 void* lIsDeviceLink ; 
 void* lIsFloat ; 
 void* lQuantize ; 
 void* lUnbounded ; 
 int FUNC4 (int,char**,char*) ; 
 void* xoptarg ; 
 int xoptind ; 

__attribute__((used)) static
void FUNC5(cmsContext ContextID, int argc, char *argv[])
{
    int s;

    while ((s = FUNC4(argc, argv,
        "bBC:c:d:D:eEgGI:i:L:l:m:M:nNO:o:p:P:QqSsT:t:V:v:WwxX!:")) != EOF) {

    switch (s){

        case '!':
            IncludePart = xoptarg;
            break;

        case 'b':
        case 'B':
            BlackPointCompensation = TRUE;
            break;

        case 'c':
        case 'C':
            PrecalcMode = FUNC2(xoptarg);
            if (PrecalcMode < 0 || PrecalcMode > 3)
                FUNC0("Unknown precalc mode '%d'", PrecalcMode);
            break;

        case 'd':
        case 'D': {
            cmsFloat64Number ObserverAdaptationState = FUNC1(xoptarg);
            if (ObserverAdaptationState < 0 ||
                ObserverAdaptationState > 1.0)
                FUNC0("Adaptation states should be between 0 and 1");

            FUNC3(ContextID, ObserverAdaptationState);
                  }
                  break;

        case 'e':
        case 'E':
            lIsFloat = FALSE;
            break;

        case 'g':
        case 'G':
            GamutCheck = TRUE;
            break;

        case 'i':
        case 'I':
            if (lIsDeviceLink)
                FUNC0("icctrans: Device-link already specified");

            cInProf = xoptarg;
            break;

        case 'l':
        case 'L':
            cInProf = xoptarg;
            lIsDeviceLink = TRUE;
            break;

            // No extra intents for proofing
        case 'm':
        case 'M':
            ProofingIntent = FUNC2(xoptarg);
            if (ProofingIntent > 3)
                FUNC0("Unknown Proofing Intent '%d'", ProofingIntent);
            break;

            // For compatibility
        case 'n':
        case 'N':
            Verbose = 0;
            break;

            // Output profile
        case 'o':
        case 'O':
            if (lIsDeviceLink)
                FUNC0("icctrans: Device-link already specified");
            cOutProf = xoptarg;
            break;

            // Proofing profile
        case 'p':
        case 'P':
            cProofing = xoptarg;
            break;

            // Quantize (get rid of decimals)
        case 'q':
        case 'Q':
            lQuantize = TRUE;
            break;

            // Inhibit unbounded mode
        case 's':
        case 'S':
               lUnbounded = FALSE;
               break;

            // The intent
        case 't':
        case 'T':
            Intent = FUNC2(xoptarg);
            break;

            // Verbosity level
        case 'V':
        case 'v':
            Verbose = FUNC2(xoptarg);
            if (Verbose < 0 || Verbose > 3) {
                FUNC0("Unknown verbosity level '%d'", Verbose);
            }
            break;

            // Wide (16 bits)
        case 'W':
        case 'w':
            Width16 = TRUE;
            break;

            // Hexadecimal
        case 'x':
        case 'X':
            InHexa = TRUE;
            break;

        default:
            FUNC0("Unknown option - run without args to see valid ones.\n");
            }
    }


    // If output CGATS involved, switch to float
    if ((argc - xoptind) > 2) {
        lIsFloat = TRUE;
    }
}