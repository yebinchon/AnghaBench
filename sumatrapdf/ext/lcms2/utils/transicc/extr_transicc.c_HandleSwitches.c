
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef double cmsFloat64Number ;
typedef int cmsContext ;


 void* BlackPointCompensation ;
 int EOF ;
 void* FALSE ;
 int FatalError (char*,...) ;
 void* GamutCheck ;
 void* InHexa ;
 void* IncludePart ;
 void* Intent ;
 int PrecalcMode ;
 int ProofingIntent ;
 void* TRUE ;
 int Verbose ;
 void* Width16 ;
 double atof (void*) ;
 void* atoi (void*) ;
 void* cInProf ;
 void* cOutProf ;
 void* cProofing ;
 int cmsSetAdaptationState (int ,double) ;
 void* lIsDeviceLink ;
 void* lIsFloat ;
 void* lQuantize ;
 void* lUnbounded ;
 int xgetopt (int,char**,char*) ;
 void* xoptarg ;
 int xoptind ;

__attribute__((used)) static
void HandleSwitches(cmsContext ContextID, int argc, char *argv[])
{
    int s;

    while ((s = xgetopt(argc, argv,
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
            PrecalcMode = atoi(xoptarg);
            if (PrecalcMode < 0 || PrecalcMode > 3)
                FatalError("Unknown precalc mode '%d'", PrecalcMode);
            break;

        case 'd':
        case 'D': {
            cmsFloat64Number ObserverAdaptationState = atof(xoptarg);
            if (ObserverAdaptationState < 0 ||
                ObserverAdaptationState > 1.0)
                FatalError("Adaptation states should be between 0 and 1");

            cmsSetAdaptationState(ContextID, ObserverAdaptationState);
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
                FatalError("icctrans: Device-link already specified");

            cInProf = xoptarg;
            break;

        case 'l':
        case 'L':
            cInProf = xoptarg;
            lIsDeviceLink = TRUE;
            break;


        case 'm':
        case 'M':
            ProofingIntent = atoi(xoptarg);
            if (ProofingIntent > 3)
                FatalError("Unknown Proofing Intent '%d'", ProofingIntent);
            break;


        case 'n':
        case 'N':
            Verbose = 0;
            break;


        case 'o':
        case 'O':
            if (lIsDeviceLink)
                FatalError("icctrans: Device-link already specified");
            cOutProf = xoptarg;
            break;


        case 'p':
        case 'P':
            cProofing = xoptarg;
            break;


        case 'q':
        case 'Q':
            lQuantize = TRUE;
            break;


        case 's':
        case 'S':
               lUnbounded = FALSE;
               break;


        case 't':
        case 'T':
            Intent = atoi(xoptarg);
            break;


        case 'V':
        case 'v':
            Verbose = atoi(xoptarg);
            if (Verbose < 0 || Verbose > 3) {
                FatalError("Unknown verbosity level '%d'", Verbose);
            }
            break;


        case 'W':
        case 'w':
            Width16 = TRUE;
            break;


        case 'x':
        case 'X':
            InHexa = TRUE;
            break;

        default:
            FatalError("Unknown option - run without args to see valid ones.\n");
            }
    }



    if ((argc - xoptind) > 2) {
        lIsFloat = TRUE;
    }
}
