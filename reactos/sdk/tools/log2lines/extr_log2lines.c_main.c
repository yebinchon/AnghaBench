
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int REVINFO ;
typedef int LIST ;


 int LINESIZE ;
 int PCLOSE (int ) ;
 int POPEN (int *,char*) ;
 int cache ;
 scalar_t__ check_directory (int ) ;
 int clearLastLine () ;
 int conIn ;
 int conOut ;
 int create_cache (int ,int ) ;
 int dbgIn ;
 int dbgOut ;
 int errno ;
 int fclose (scalar_t__) ;
 int free (int *) ;
 scalar_t__ isOffset (char const*) ;
 int l2l_dbg (int,char*,...) ;
 int list_clear (int *) ;
 scalar_t__ logFile ;
 int memset (int *,int ,int) ;
 int * opt_Pipe ;
 int * opt_Revision ;
 scalar_t__ opt_exit ;
 int opt_force ;
 int optionInit (int,char const**) ;
 int optionParse (int,char const**) ;
 int read_cache () ;
 int report (int ) ;
 int revinfo ;
 scalar_t__ set_LogFile (scalar_t__*) ;
 int snprintf (char*,int ,char*,char const*,char const*) ;
 int sources ;
 int stat_clear (int *) ;
 int stdin ;
 int stdout ;
 scalar_t__ strcmp (int *,char*) ;
 int strerror (int ) ;
 int summ ;
 int translate_files (int ,int ) ;
 int translate_line (int ,char*,char*,char*) ;
 int updateSvnlog () ;

int
main(int argc, const char **argv)
{
    int res = 0;
    int optInit = 0;
    int optCount = 0;

    dbgIn = stdin;
    conOut = stdout;
    (void)conIn;
    (void)dbgOut;

    memset(&cache, 0, sizeof(LIST));
    memset(&sources, 0, sizeof(LIST));
    stat_clear(&summ);
    memset(&revinfo, 0, sizeof(REVINFO));
    clearLastLine();

    optInit = optionInit(argc, argv);
    optCount = optionParse(argc, argv);

    if (optCount < 0 || optInit < 0)
    {
        res = optCount;
        goto cleanup;
    }

    argc -= optCount;

    if (opt_Revision && (strcmp(opt_Revision, "update") == 0))
    {
        res = updateSvnlog();
        goto cleanup;
    }

    if (check_directory(opt_force))
    {
        res = 3;
        goto cleanup;
    }

    create_cache(opt_force, 0);
    if (opt_exit)
    {
        res = 0;
        goto cleanup;
    }

    read_cache();
    l2l_dbg(4, "Cache read complete\n");

    if (set_LogFile(&logFile))
    {
        res = 2;
        goto cleanup;
    }
    l2l_dbg(4, "opt_logFile processed\n");

    if (opt_Pipe)
    {
        l2l_dbg(3, "Command line: \"%s\"\n",opt_Pipe);

        if (!(dbgIn = POPEN(opt_Pipe, "r")))
        {
            dbgIn = stdin;
            l2l_dbg(0, "Could not popen '%s' (%s)\n", opt_Pipe, strerror(errno));
            free(opt_Pipe);
            opt_Pipe = ((void*)0);
        }
    }
    l2l_dbg(4, "opt_Pipe processed\n");

    if (argc > 1)
    {
        int i = 1;
        const char *exefile = ((void*)0);
        const char *offset = ((void*)0);
        char Line[LINESIZE + 1];
        char PathBuffer[LINESIZE + 1];
        char LineOutBuffer[LINESIZE + 1];


        while (i < argc)
        {
            offset = argv[optCount + i++];
            if (isOffset(offset))
            {
                if (exefile)
                {
                    l2l_dbg(2, "translating %s %s\n", exefile, offset);

                    snprintf(Line, LINESIZE, "<%s:%s>\n", exefile, offset);
                    translate_line(conOut, Line, PathBuffer, LineOutBuffer);
                    report(conOut);
                }
                else
                {
                    l2l_dbg(0, "<exefile> expected\n");
                    res = 3;
                    break;
                }
            }
            else
            {

                exefile = offset;
            }
        }
    }
    else
    {
        translate_files(dbgIn, conOut);
    }

    if (logFile)
        fclose(logFile);

    if (opt_Pipe)
        PCLOSE(dbgIn);

cleanup:

    if (opt_Revision)
    {
        free(opt_Revision);
        opt_Revision = ((void*)0);
    }


    if (opt_Pipe)
    {
        free(opt_Pipe);
        opt_Pipe = ((void*)0);
    }

    list_clear(&sources);
    list_clear(&cache);

    return res;
}
