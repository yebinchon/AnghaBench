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
typedef  int /*<<< orphan*/  time_t ;
typedef  int /*<<< orphan*/  t ;
typedef  int e_api ;
typedef  int U32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int FUZ_COMPRESSIBILITY_DEFAULT ; 
 int FUNC1 (char const* const) ; 
 int SEC_TO_MICRO ; 
 int FUNC2 (int /*<<< orphan*/  const*,int,int) ; 
 int /*<<< orphan*/  ZSTD_VERSION_STRING ; 
#define  advanced_api 130 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,double) ; 
 int FUNC5 (int,int,int,double,int) ; 
 int FUNC6 (int,int,int,double,int) ; 
 int FUNC7 (int,int,int,double,int) ; 
 int g_clockTime ; 
 int /*<<< orphan*/  g_displayLevel ; 
 int FUNC8 () ; 
#define  mt_api 129 
 int nbTestsDefault ; 
#define  simple_api 128 
 int /*<<< orphan*/  FUNC9 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

int FUNC11(int argc, const char** argv)
{
    U32 seed = 0;
    int seedset = 0;
    int nbTests = nbTestsDefault;
    int testNb = 0;
    int proba = FUZ_COMPRESSIBILITY_DEFAULT;
    int result = 0;
    int mainPause = 0;
    int bigTests = (sizeof(size_t) == 8);
    e_api selected_api = simple_api;
    const char* const programName = argv[0];
    int argNb;

    /* Check command line */
    for(argNb=1; argNb<argc; argNb++) {
        const char* argument = argv[argNb];
        FUNC3(argument != NULL);

        /* Parsing commands. Aggregated commands are allowed */
        if (argument[0]=='-') {

            if (!FUNC9(argument, "--mt")) { selected_api=mt_api; testNb += !testNb; continue; }
            if (!FUNC9(argument, "--newapi")) { selected_api=advanced_api; testNb += !testNb; continue; }
            if (!FUNC9(argument, "--no-big-tests")) { bigTests=0; continue; }

            argument++;
            while (*argument!=0) {
                switch(*argument)
                {
                case 'h':
                    return FUNC1(programName);

                case 'v':
                    argument++;
                    g_displayLevel++;
                    break;

                case 'q':
                    argument++;
                    g_displayLevel--;
                    break;

                case 'p': /* pause at the end */
                    argument++;
                    mainPause = 1;
                    break;

                case 'i':   /* limit tests by nb of iterations (default) */
                    argument++;
                    nbTests=0; g_clockTime=0;
                    while ((*argument>='0') && (*argument<='9')) {
                        nbTests *= 10;
                        nbTests += *argument - '0';
                        argument++;
                    }
                    break;

                case 'T':   /* limit tests by time */
                    argument++;
                    nbTests=0; g_clockTime=0;
                    while ((*argument>='0') && (*argument<='9')) {
                        g_clockTime *= 10;
                        g_clockTime += *argument - '0';
                        argument++;
                    }
                    if (*argument=='m') {    /* -T1m == -T60 */
                        g_clockTime *=60, argument++;
                        if (*argument=='n') argument++; /* -T1mn == -T60 */
                    } else if (*argument=='s') argument++; /* -T10s == -T10 */
                    g_clockTime *= SEC_TO_MICRO;
                    break;

                case 's':   /* manually select seed */
                    argument++;
                    seedset=1;
                    seed=0;
                    while ((*argument>='0') && (*argument<='9')) {
                        seed *= 10;
                        seed += *argument - '0';
                        argument++;
                    }
                    break;

                case 't':   /* select starting test number */
                    argument++;
                    testNb=0;
                    while ((*argument>='0') && (*argument<='9')) {
                        testNb *= 10;
                        testNb += *argument - '0';
                        argument++;
                    }
                    break;

                case 'P':   /* compressibility % */
                    argument++;
                    proba=0;
                    while ((*argument>='0') && (*argument<='9')) {
                        proba *= 10;
                        proba += *argument - '0';
                        argument++;
                    }
                    if (proba<0) proba=0;
                    if (proba>100) proba=100;
                    break;

                default:
                    return FUNC1(programName);
                }
    }   }   }   /* for(argNb=1; argNb<argc; argNb++) */

    /* Get Seed */
    FUNC0("Starting zstream tester (%i-bits, %s)\n", (int)(sizeof(size_t)*8), ZSTD_VERSION_STRING);

    if (!seedset) {
        time_t const t = FUNC10(NULL);
        U32 const h = FUNC2(&t, sizeof(t), 1);
        seed = h % 10000;
    }

    FUNC0("Seed = %u\n", (unsigned)seed);
    if (proba!=FUZ_COMPRESSIBILITY_DEFAULT) FUNC0("Compressibility : %i%%\n", proba);

    if (nbTests<=0) nbTests=1;

    if (testNb==0) {
        result = FUNC4(0, ((double)proba) / 100);  /* constant seed for predictability */
    }

    if (!result) {
        switch(selected_api)
        {
        case simple_api :
            result = FUNC5(seed, nbTests, testNb, ((double)proba) / 100, bigTests);
            break;
        case mt_api :
            result = FUNC6(seed, nbTests, testNb, ((double)proba) / 100, bigTests);
            break;
        case advanced_api :
            result = FUNC7(seed, nbTests, testNb, ((double)proba) / 100, bigTests);
            break;
        default :
            FUNC3(0);   /* impossible */
        }
    }

    if (mainPause) {
        int unused;
        FUNC0("Press Enter \n");
        unused = FUNC8();
        (void)unused;
    }
    return result;
}