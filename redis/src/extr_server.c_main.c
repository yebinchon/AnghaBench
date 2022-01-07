
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct timeval {int dummy; } ;
typedef int sds ;
typedef int hashseed ;
struct TYPE_2__ {char* configfile; scalar_t__ ipfd_count; scalar_t__ tlsfd_count; scalar_t__ sofd; int unixsocket; int maxmemory; int el; scalar_t__ cluster_enabled; scalar_t__ sentinel_mode; scalar_t__ pidfile; int supervised; scalar_t__ daemonize; int supervised_mode; int ** exec_argv; void* executable; } ;


 int ACLInit () ;
 int ACLLoadUsersAtStartup () ;
 scalar_t__ C_ERR ;
 int InitServerLast () ;
 int LC_COLLATE ;
 int LL_NOTICE ;
 int LL_WARNING ;
 int REDIS_VERSION ;
 int aeDeleteEventLoop (int ) ;
 int aeMain (int ) ;
 int aeSetAfterSleepProc (int ,int ) ;
 int aeSetBeforeSleepProc (int ,int ) ;
 int afterSleep ;
 int atoi (char*) ;
 int beforeSleep ;
 scalar_t__ checkForSentinelMode (int,char**) ;
 int checkTcpBacklogSettings () ;
 int crc64Test (int,char**) ;
 int createPidFile () ;
 int daemonize () ;
 int dictSetHashFunctionSeed (int *) ;
 int endianconvTest (int,char**) ;
 int exit (int) ;
 int fprintf (int ,char*) ;
 void* getAbsolutePath (char*) ;
 int getRandomBytes (int *,int) ;
 int getpid () ;
 int gettimeofday (struct timeval*,int *) ;
 int initSentinel () ;
 int initSentinelConfig () ;
 int initServer () ;
 int initServerConfig () ;
 int intsetTest (int,char**) ;
 int linuxMemoryWarnings () ;
 int loadDataFromDisk () ;
 int loadServerConfig (char*,int ) ;
 int memtest (int ,int) ;
 int moduleInitModulesSystem () ;
 int moduleLoadFromQueue () ;
 int quicklistTest (int,char**) ;
 int redisAsciiArt () ;
 int redisGitDirty () ;
 int redisGitSHA1 () ;
 int redisIsSupervised (int ) ;
 int redisOutOfMemoryHandler ;
 int redisSetProcTitle (char*) ;
 int redis_check_aof_main (int,char**) ;
 int redis_check_rdb_main (int,char**,int *) ;
 int resetServerSaveParams () ;
 int sdscat (int ,char*) ;
 int sdscatrepr (int ,char*,int ) ;
 int sdsempty () ;
 int sdsfree (int ) ;
 scalar_t__ sdslen (int ) ;
 int sentinelIsRunning () ;
 TYPE_1__ server ;
 int serverLog (int ,char*,...) ;
 int setlocale (int ,char*) ;
 int sha1Test (int,char**) ;
 int spt_init (int,char**) ;
 int srand (int) ;
 int stderr ;
 int strcasecmp (char*,char*) ;
 scalar_t__ strcmp (char*,char*) ;
 int strlen (char*) ;
 int * strstr (char*,char*) ;
 scalar_t__ strtol (int ,int *,int) ;
 int time (int *) ;
 int tlsInit () ;
 int tzset () ;
 int usage () ;
 int utilTest (int,char**) ;
 scalar_t__ verifyClusterConfigWithData () ;
 int version () ;
 int zfree (int *) ;
 int ziplistTest (int,char**) ;
 int zipmapTest (int,char**) ;
 int ** zmalloc (int) ;
 int zmalloc_set_oom_handler (int ) ;
 int zmalloc_test (int,char**) ;
 void* zstrdup (char*) ;

int main(int argc, char **argv) {
    struct timeval tv;
    int j;
    setlocale(LC_COLLATE,"");
    tzset();
    zmalloc_set_oom_handler(redisOutOfMemoryHandler);
    srand(time(((void*)0))^getpid());
    gettimeofday(&tv,((void*)0));

    uint8_t hashseed[16];
    getRandomBytes(hashseed,sizeof(hashseed));
    dictSetHashFunctionSeed(hashseed);
    server.sentinel_mode = checkForSentinelMode(argc,argv);
    initServerConfig();
    ACLInit();

    moduleInitModulesSystem();
    tlsInit();



    server.executable = getAbsolutePath(argv[0]);
    server.exec_argv = zmalloc(sizeof(char*)*(argc+1));
    server.exec_argv[argc] = ((void*)0);
    for (j = 0; j < argc; j++) server.exec_argv[j] = zstrdup(argv[j]);




    if (server.sentinel_mode) {
        initSentinelConfig();
        initSentinel();
    }




    if (strstr(argv[0],"redis-check-rdb") != ((void*)0))
        redis_check_rdb_main(argc,argv,((void*)0));
    else if (strstr(argv[0],"redis-check-aof") != ((void*)0))
        redis_check_aof_main(argc,argv);

    if (argc >= 2) {
        j = 1;
        sds options = sdsempty();
        char *configfile = ((void*)0);


        if (strcmp(argv[1], "-v") == 0 ||
            strcmp(argv[1], "--version") == 0) version();
        if (strcmp(argv[1], "--help") == 0 ||
            strcmp(argv[1], "-h") == 0) usage();
        if (strcmp(argv[1], "--test-memory") == 0) {
            if (argc == 3) {
                memtest(atoi(argv[2]),50);
                exit(0);
            } else {
                fprintf(stderr,"Please specify the amount of memory to test in megabytes.\n");
                fprintf(stderr,"Example: ./redis-server --test-memory 4096\n\n");
                exit(1);
            }
        }


        if (argv[j][0] != '-' || argv[j][1] != '-') {
            configfile = argv[j];
            server.configfile = getAbsolutePath(configfile);


            zfree(server.exec_argv[j]);
            server.exec_argv[j] = zstrdup(server.configfile);
            j++;
        }





        while(j != argc) {
            if (argv[j][0] == '-' && argv[j][1] == '-') {

                if (!strcmp(argv[j], "--check-rdb")) {

                    j++;
                    continue;
                }
                if (sdslen(options)) options = sdscat(options,"\n");
                options = sdscat(options,argv[j]+2);
                options = sdscat(options," ");
            } else {

                options = sdscatrepr(options,argv[j],strlen(argv[j]));
                options = sdscat(options," ");
            }
            j++;
        }
        if (server.sentinel_mode && configfile && *configfile == '-') {
            serverLog(LL_WARNING,
                "Sentinel config from STDIN not allowed.");
            serverLog(LL_WARNING,
                "Sentinel needs config file on disk to save state.  Exiting...");
            exit(1);
        }
        resetServerSaveParams();
        loadServerConfig(configfile,options);
        sdsfree(options);
    }

    serverLog(LL_WARNING, "oO0OoO0OoO0Oo Redis is starting oO0OoO0OoO0Oo");
    serverLog(LL_WARNING,
        "Redis version=%s, bits=%d, commit=%s, modified=%d, pid=%d, just started",
            REDIS_VERSION,
            (sizeof(long) == 8) ? 64 : 32,
            redisGitSHA1(),
            strtol(redisGitDirty(),((void*)0),10) > 0,
            (int)getpid());

    if (argc == 1) {
        serverLog(LL_WARNING, "Warning: no config file specified, using the default config. In order to specify a config file use %s /path/to/%s.conf", argv[0], server.sentinel_mode ? "sentinel" : "redis");
    } else {
        serverLog(LL_WARNING, "Configuration loaded");
    }

    server.supervised = redisIsSupervised(server.supervised_mode);
    int background = server.daemonize && !server.supervised;
    if (background) daemonize();

    initServer();
    if (background || server.pidfile) createPidFile();
    redisSetProcTitle(argv[0]);
    redisAsciiArt();
    checkTcpBacklogSettings();

    if (!server.sentinel_mode) {

        serverLog(LL_WARNING,"Server initialized");

        linuxMemoryWarnings();

        moduleLoadFromQueue();
        ACLLoadUsersAtStartup();
        InitServerLast();
        loadDataFromDisk();
        if (server.cluster_enabled) {
            if (verifyClusterConfigWithData() == C_ERR) {
                serverLog(LL_WARNING,
                    "You can't have keys in a DB different than DB 0 when in "
                    "Cluster mode. Exiting.");
                exit(1);
            }
        }
        if (server.ipfd_count > 0 || server.tlsfd_count > 0)
            serverLog(LL_NOTICE,"Ready to accept connections");
        if (server.sofd > 0)
            serverLog(LL_NOTICE,"The server is now ready to accept connections at %s", server.unixsocket);
    } else {
        InitServerLast();
        sentinelIsRunning();
    }


    if (server.maxmemory > 0 && server.maxmemory < 1024*1024) {
        serverLog(LL_WARNING,"WARNING: You specified a maxmemory value that is less than 1MB (current value is %llu bytes). Are you sure this is what you really want?", server.maxmemory);
    }

    aeSetBeforeSleepProc(server.el,beforeSleep);
    aeSetAfterSleepProc(server.el,afterSleep);
    aeMain(server.el);
    aeDeleteEventLoop(server.el);
    return 0;
}
