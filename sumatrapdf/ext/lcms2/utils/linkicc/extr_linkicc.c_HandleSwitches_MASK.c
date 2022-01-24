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
 void* BlackPointCompensation ; 
 void* Copyright ; 
 void* Description ; 
 int EOF ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 double InkLimit ; 
 void* Intent ; 
 void* KeepLinearization ; 
 void* NumOfGridPoints ; 
 double ObserverAdaptationState ; 
 int PrecalcMode ; 
 void* TRUE ; 
 void* TagResult ; 
 int Verbose ; 
 double Version ; 
 double FUNC2 (void*) ; 
 void* FUNC3 (void*) ; 
 void* cOutProf ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 void* lUse8bits ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC5 (int,char**,char*) ; 
 void* xoptarg ; 

__attribute__((used)) static
void FUNC6(int argc, char *argv[])
{
    int s;

    while ((s = FUNC5(argc,argv,"a:A:BbC:c:D:d:h:H:k:K:lLn:N:O:o:r:R:T:t:V:v:xX8y:Y:")) != EOF) {

    switch (s) {


        case 'a':
        case 'A':
            ObserverAdaptationState = FUNC2(xoptarg);
            if (ObserverAdaptationState < 0 ||
                ObserverAdaptationState > 1.0)
                       FUNC0("Adaptation state should be 0..1");
            break;

        case 'b':
        case 'B':
            BlackPointCompensation = TRUE;
           break;

        case 'c':
        case 'C':
            PrecalcMode = FUNC3(xoptarg);
            if (PrecalcMode < 0 || PrecalcMode > 2) {
                FUNC0("Unknown precalc mode '%d'", PrecalcMode);
            }
           break;

       case 'd':
       case 'D':
           // Doing that is correct and safe: Description points to memory allocated in the command line.
           // same for Copyright and output devicelink.
           Description = xoptarg;
           break;

        case 'h':
        case 'H':
            FUNC1(FUNC3(xoptarg));
            return;

        case 'k':
        case 'K':
            InkLimit = FUNC2(xoptarg);
            if (InkLimit < 0.0 || InkLimit > 400.0) {
                FUNC0("Ink limit must be 0%%..400%%");
            }
           break;


        case 'l':
        case 'L': KeepLinearization = TRUE;
           break;

       case 'n':
       case 'N':
           if (PrecalcMode != 1) {
               FUNC0("Precalc mode already specified");
           }
           NumOfGridPoints = FUNC3(xoptarg);
           break;

        case 'o':
        case 'O':
            cOutProf = xoptarg;
           break;


       case 'r':
       case 'R':
          Version = FUNC2(xoptarg);
          if (Version < 2.0 || Version > 4.3) {
              FUNC4(stderr, "WARNING: lcms was not aware of this version, tag types may be wrong!\n");
          }
          break;

        case 't':
        case 'T':
            Intent = FUNC3(xoptarg);  // Will be validated latter on
            break;

        case 'V':
        case 'v':
            Verbose = FUNC3(xoptarg);
            if (Verbose < 0 || Verbose > 3) {
                FUNC0("Unknown verbosity level '%d'", Verbose);
            }
            break;

        case '8':
            lUse8bits = TRUE;
            break;



        case 'y':
        case 'Y':
            Copyright = xoptarg;
            break;



       case 'x':
       case 'X': TagResult = TRUE;
           break;



       default:

           FUNC0("Unknown option - run without args to see valid ones.\n");
        }
    }
}