
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef char* sds ;
struct TYPE_2__ {int interactive; char* prompt; int eval_ldb; scalar_t__ output; scalar_t__ eval_ldb_sync; scalar_t__ eval_ldb_end; int hostport; int hostip; scalar_t__ eval; } ;


 int CC_FORCE ;
 scalar_t__ EINVAL ;
 scalar_t__ ERANGE ;
 scalar_t__ OUTPUT_RAW ;
 scalar_t__ OUTPUT_STANDARD ;
 int REDIS_CLI_HISTFILE_DEFAULT ;
 int REDIS_CLI_HISTFILE_ENV ;
 int atoi (char*) ;
 int cliConnect (int ) ;
 int cliInitHelp () ;
 int cliIntegrateHelp () ;
 int cliLoadPreferences () ;
 int cliReadReply (int ) ;
 int cliRefreshPrompt () ;
 int cliSetPreferences (char**,int,int) ;
 char** cliSplitArgs (char*,int*) ;
 int completionCallback ;
 TYPE_1__ config ;
 scalar_t__ context ;
 scalar_t__ errno ;
 int exit (int ) ;
 int fileno (int ) ;
 int fputs (char*,int ) ;
 int freeHintsCallback ;
 char* getDotfilePath (int ,int ) ;
 int hintsCallback ;
 scalar_t__ isatty (int ) ;
 int issueCommandRepeat (int,char**,long) ;
 char* linenoise (char*) ;
 int linenoiseClearScreen () ;
 int linenoiseFree (char*) ;
 int linenoiseHistoryAdd (char*) ;
 int linenoiseHistoryLoad (char*) ;
 int linenoiseHistorySave (char*) ;
 int linenoiseSetCompletionCallback (int ) ;
 int linenoiseSetFreeHintsCallback (int ) ;
 int linenoiseSetHintsCallback (int ) ;
 int linenoiseSetMultiLine (int) ;
 long long mstime () ;
 int printf (char*,...) ;
 int sdsfree (int ) ;
 int sdsfreesplitres (char**,int) ;
 int sdsnew (char*) ;
 int stdin ;
 int stdout ;
 scalar_t__ strcasecmp (char*,char*) ;
 long strtol (char*,char**,int) ;

__attribute__((used)) static void repl(void) {
    sds historyfile = ((void*)0);
    int history = 0;
    char *line;
    int argc;
    sds *argv;



    cliInitHelp();
    cliIntegrateHelp();

    config.interactive = 1;
    linenoiseSetMultiLine(1);
    linenoiseSetCompletionCallback(completionCallback);
    linenoiseSetHintsCallback(hintsCallback);
    linenoiseSetFreeHintsCallback(freeHintsCallback);


    if (isatty(fileno(stdin))) {
        historyfile = getDotfilePath(REDIS_CLI_HISTFILE_ENV,REDIS_CLI_HISTFILE_DEFAULT);

        history = 1;
        if (historyfile != ((void*)0)) {
            linenoiseHistoryLoad(historyfile);
        }
        cliLoadPreferences();
    }

    cliRefreshPrompt();
    while((line = linenoise(context ? config.prompt : "not connected> ")) != ((void*)0)) {
        if (line[0] != '\0') {
            long repeat = 1;
            int skipargs = 0;
            char *endptr = ((void*)0);

            argv = cliSplitArgs(line,&argc);



            if (argv && argc > 0) {
                errno = 0;
                repeat = strtol(argv[0], &endptr, 10);
                if (argc > 1 && *endptr == '\0') {
                    if (errno == ERANGE || errno == EINVAL || repeat <= 0) {
                        fputs("Invalid redis-cli repeat command option value.\n", stdout);
                        sdsfreesplitres(argv, argc);
                        linenoiseFree(line);
                        continue;
                    }
                    skipargs = 1;
                } else {
                    repeat = 1;
                }
            }


            if (!(argv && argc > 0 && !strcasecmp(argv[0+skipargs], "auth"))) {
                if (history) linenoiseHistoryAdd(line);
                if (historyfile) linenoiseHistorySave(historyfile);
            }

            if (argv == ((void*)0)) {
                printf("Invalid argument(s)\n");
                linenoiseFree(line);
                continue;
            } else if (argc > 0) {
                if (strcasecmp(argv[0],"quit") == 0 ||
                    strcasecmp(argv[0],"exit") == 0)
                {
                    exit(0);
                } else if (argv[0][0] == ':') {
                    cliSetPreferences(argv,argc,1);
                    sdsfreesplitres(argv,argc);
                    linenoiseFree(line);
                    continue;
                } else if (strcasecmp(argv[0],"restart") == 0) {
                    if (config.eval) {
                        config.eval_ldb = 1;
                        config.output = OUTPUT_RAW;
                        return;
                    } else {
                        printf("Use 'restart' only in Lua debugging mode.");
                    }
                } else if (argc == 3 && !strcasecmp(argv[0],"connect")) {
                    sdsfree(config.hostip);
                    config.hostip = sdsnew(argv[1]);
                    config.hostport = atoi(argv[2]);
                    cliRefreshPrompt();
                    cliConnect(CC_FORCE);
                } else if (argc == 1 && !strcasecmp(argv[0],"clear")) {
                    linenoiseClearScreen();
                } else {
                    long long start_time = mstime(), elapsed;

                    issueCommandRepeat(argc-skipargs, argv+skipargs, repeat);



                    if (config.eval_ldb_end) {
                        config.eval_ldb_end = 0;
                        cliReadReply(0);
                        printf("\n(Lua debugging session ended%s)\n\n",
                            config.eval_ldb_sync ? "" :
                            " -- dataset changes rolled back");
                    }

                    elapsed = mstime()-start_time;
                    if (elapsed >= 500 &&
                        config.output == OUTPUT_STANDARD)
                    {
                        printf("(%.2fs)\n",(double)elapsed/1000);
                    }
                }
            }

            sdsfreesplitres(argv,argc);
        }

        linenoiseFree(line);
    }
    exit(0);
}
