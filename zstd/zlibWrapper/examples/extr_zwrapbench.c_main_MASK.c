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
typedef  void* U32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (void* const) ; 
 int /*<<< orphan*/  FUNC2 (char const**,unsigned int,char const*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  FUNC7 (int,char*,...) ; 
 char** FUNC8 (char const**,unsigned int,char**,unsigned int*,int) ; 
 int /*<<< orphan*/  FUNC9 (char const**,char*) ; 
 int /*<<< orphan*/  WELCOME_MESSAGE ; 
 int ZSTDCLI_CLEVEL_DEFAULT ; 
 int /*<<< orphan*/  FUNC10 (char const*) ; 
 int /*<<< orphan*/  displayOut ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (void*) ; 
 int /*<<< orphan*/  g_displayLevel ; 
 scalar_t__ FUNC13 (int) ; 
 void* FUNC14 (char const**) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC15 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (char const*) ; 
 char FUNC18 (char const) ; 
 int /*<<< orphan*/  FUNC19 (char const*) ; 
 int /*<<< orphan*/  FUNC20 () ; 

int FUNC21(int argCount, char** argv)
{
    int argNb,
        main_pause=0,
        nextEntryIsDictionary=0,
        operationResult=0,
        nextArgumentIsFile=0;
    int cLevel = ZSTDCLI_CLEVEL_DEFAULT;
    int cLevelLast = 1;
    unsigned recursive = 0;
    const char** filenameTable = (const char**)FUNC13(argCount * sizeof(const char*));   /* argCount >= 1 */
    unsigned filenameIdx = 0;
    const char* programName = argv[0];
    const char* dictFileName = NULL;
    char* dynNameSpace = NULL;
#ifdef UTIL_HAS_CREATEFILELIST
    const char** fileNamesTable = NULL;
    char* fileNamesBuf = NULL;
    unsigned fileNamesNb;
#endif

    /* init */
    if (filenameTable==NULL) { FUNC6("zstd: %s \n", FUNC16(errno)); FUNC11(1); }
    displayOut = stderr;

    /* Pick out program name from path. Don't rely on stdlib because of conflicting behavior */
    {   size_t pos;
        for (pos = (int)FUNC17(programName); pos > 0; pos--) { if (programName[pos] == '/') { pos++; break; } }
        programName += pos;
    }

     /* command switches */
    for(argNb=1; argNb<argCount; argNb++) {
        const char* argument = argv[argNb];
        if(!argument) continue;   /* Protection if argument empty */

        if (nextArgumentIsFile==0) {

            /* long commands (--long-word) */
            if (!FUNC15(argument, "--")) { nextArgumentIsFile=1; continue; }
            if (!FUNC15(argument, "--version")) { displayOut=stdout; FUNC6(WELCOME_MESSAGE); FUNC5(0); }
            if (!FUNC15(argument, "--help")) { displayOut=stdout; FUNC5(FUNC19(programName)); }
            if (!FUNC15(argument, "--verbose")) { g_displayLevel++; continue; }
            if (!FUNC15(argument, "--quiet")) { g_displayLevel--; continue; }

            /* Decode commands (note : aggregated commands are allowed) */
            if (argument[0]=='-') {
                argument++;

                while (argument[0]!=0) {
                    switch(argument[0])
                    {
                        /* Display help */
                    case 'V': displayOut=stdout; FUNC6(WELCOME_MESSAGE); FUNC5(0);   /* Version Only */
                    case 'H':
                    case 'h': displayOut=stdout; FUNC5(FUNC19(programName));

                        /* Use file content as dictionary */
                    case 'D': nextEntryIsDictionary = 1; argument++; break;

                        /* Verbose mode */
                    case 'v': g_displayLevel++; argument++; break;

                        /* Quiet mode */
                    case 'q': g_displayLevel--; argument++; break;

#ifdef UTIL_HAS_CREATEFILELIST
                        /* recursive */
                    case 'r': recursive=1; argument++; break;
#endif

                        /* Benchmark */
                    case 'b':
                            /* first compression Level */
                            argument++;
                            cLevel = FUNC14(&argument);
                            break;

                        /* range bench (benchmark only) */
                    case 'e':
                            /* last compression Level */
                            argument++;
                            cLevelLast = FUNC14(&argument);
                            break;

                        /* Modify Nb Iterations (benchmark only) */
                    case 'i':
                        argument++;
                        {   U32 const iters = FUNC14(&argument);
                            FUNC4(g_displayLevel);
                            FUNC1(iters);
                        }
                        break;

                        /* cut input into blocks (benchmark only) */
                    case 'B':
                        argument++;
                        {   size_t bSize = FUNC14(&argument);
                            if (FUNC18(*argument)=='K') bSize<<=10, argument++;  /* allows using KB notation */
                            if (FUNC18(*argument)=='M') bSize<<=20, argument++;
                            if (FUNC18(*argument)=='B') argument++;
                            FUNC4(g_displayLevel);
                            FUNC0(bSize);
                        }
                        break;

                        /* Pause at the end (-p) or set an additional param (-p#) (hidden option) */
                    case 'p': argument++;
                        if ((*argument>='0') && (*argument<='9')) {
                            FUNC3(FUNC14(&argument));
                        } else
                            main_pause=1;
                        break;
                        /* unknown command */
                    default : FUNC5(FUNC10(programName));
                    }
                }
                continue;
            }   /* if (argument[0]=='-') */

        }   /* if (nextArgumentIsAFile==0) */

        if (nextEntryIsDictionary) {
            nextEntryIsDictionary = 0;
            dictFileName = argument;
            continue;
        }

        /* add filename to list */
        filenameTable[filenameIdx++] = argument;
    }

    /* Welcome message (if verbose) */
    FUNC7(3, WELCOME_MESSAGE);

#ifdef UTIL_HAS_CREATEFILELIST
    if (recursive) {
        fileNamesTable = UTIL_createFileList(filenameTable, filenameIdx, &fileNamesBuf, &fileNamesNb, 1);
        if (fileNamesTable) {
            unsigned u;
            for (u=0; u<fileNamesNb; u++) DISPLAYLEVEL(4, "%u %s\n", u, fileNamesTable[u]);
            free((void*)filenameTable);
            filenameTable = fileNamesTable;
            filenameIdx = fileNamesNb;
        }
    }
#endif

    FUNC4(g_displayLevel);
    FUNC2(filenameTable, filenameIdx, dictFileName, cLevel, cLevelLast);

_end:
    if (main_pause) FUNC20();
    FUNC12(dynNameSpace);
#ifdef UTIL_HAS_CREATEFILELIST
    if (fileNamesTable)
        UTIL_freeFileList(fileNamesTable, fileNamesBuf);
    else
#endif
        FUNC12((void*)filenameTable);
    return operationResult;
}