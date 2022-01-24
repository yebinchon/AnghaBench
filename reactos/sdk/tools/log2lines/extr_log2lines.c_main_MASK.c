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
typedef  int /*<<< orphan*/  REVINFO ;
typedef  int /*<<< orphan*/  LIST ;

/* Variables and functions */
 int /*<<< orphan*/  LINESIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  cache ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  conIn ; 
 int /*<<< orphan*/  conOut ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dbgIn ; 
 int /*<<< orphan*/  dbgOut ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (char const*) ; 
 int /*<<< orphan*/  FUNC8 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ logFile ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * opt_Pipe ; 
 int /*<<< orphan*/ * opt_Revision ; 
 scalar_t__ opt_exit ; 
 int /*<<< orphan*/  opt_force ; 
 int FUNC11 (int,char const**) ; 
 int FUNC12 (int,char const**) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  revinfo ; 
 scalar_t__ FUNC15 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC16 (char*,int /*<<< orphan*/ ,char*,char const*,char const*) ; 
 int /*<<< orphan*/  sources ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stdin ; 
 int /*<<< orphan*/  stdout ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  summ ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,char*,char*,char*) ; 
 int FUNC22 () ; 

int
FUNC23(int argc, const char **argv)
{
    int res = 0;
    int optInit = 0;
    int optCount = 0;

    dbgIn = stdin;
    conOut = stdout;
    (void)conIn;
    (void)dbgOut;

    FUNC10(&cache, 0, sizeof(LIST));
    FUNC10(&sources, 0, sizeof(LIST));
    FUNC17(&summ);
    FUNC10(&revinfo, 0, sizeof(REVINFO));
    FUNC3();

    optInit = FUNC11(argc, argv);
    optCount = FUNC12(argc, argv);

    if (optCount < 0 || optInit < 0)
    {
        res = optCount;
        goto cleanup;
    }

    argc -= optCount;

    if (opt_Revision && (FUNC18(opt_Revision, "update") == 0))
    {
        res = FUNC22();
        goto cleanup;
    }

    if (FUNC2(opt_force))
    {
        res = 3;
        goto cleanup;
    }

    FUNC4(opt_force, 0);
    if (opt_exit)
    {
        res = 0;
        goto cleanup;
    }

    FUNC13();
    FUNC8(4, "Cache read complete\n");

    if (FUNC15(&logFile))
    {
        res = 2;
        goto cleanup;
    }
    FUNC8(4, "opt_logFile processed\n");

    if (opt_Pipe)
    {
        FUNC8(3, "Command line: \"%s\"\n",opt_Pipe);

        if (!(dbgIn = FUNC1(opt_Pipe, "r")))
        {
            dbgIn = stdin; //restore
            FUNC8(0, "Could not popen '%s' (%s)\n", opt_Pipe, FUNC19(errno));
            FUNC6(opt_Pipe);
            opt_Pipe = NULL;
        }
    }
    FUNC8(4, "opt_Pipe processed\n");

    if (argc > 1)
    {   // translate {<exefile> <offset>}
        int i = 1;
        const char *exefile = NULL;
        const char *offset = NULL;
        char Line[LINESIZE + 1];
        char PathBuffer[LINESIZE + 1];
        char LineOutBuffer[LINESIZE + 1];

        // TODO: Re-use one translate_files(), instead of repeated translate_line().
        while (i < argc)
        {
            offset = argv[optCount + i++];
            if (FUNC7(offset))
            {
                if (exefile)
                {
                    FUNC8(2, "translating %s %s\n", exefile, offset);

                    FUNC16(Line, LINESIZE, "<%s:%s>\n", exefile, offset);
                    FUNC21(conOut, Line, PathBuffer, LineOutBuffer);
                    FUNC14(conOut);
                }
                else
                {
                    FUNC8(0, "<exefile> expected\n");
                    res = 3;
                    break;
                }
            }
            else
            {
                // Not an offset so must be an exefile:
                exefile = offset;
            }
        }
    }
    else
    {   // translate logging from stdin
        FUNC20(dbgIn, conOut);
    }

    if (logFile)
        FUNC5(logFile);

    if (opt_Pipe)
        FUNC0(dbgIn);

cleanup:
    // See optionParse().
    if (opt_Revision)
    {
        FUNC6(opt_Revision);
        opt_Revision = NULL;
    }

    // See optionInit().
    if (opt_Pipe)
    {
        FUNC6(opt_Pipe);
        opt_Pipe = NULL;
    }

    FUNC9(&sources);
    FUNC9(&cache);

    return res;
}