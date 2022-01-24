#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct timeval {int dummy; } ;
typedef  int /*<<< orphan*/  sds ;
typedef  int /*<<< orphan*/  hashseed ;
struct TYPE_2__ {char* configfile; scalar_t__ ipfd_count; scalar_t__ tlsfd_count; scalar_t__ sofd; int unixsocket; int maxmemory; int /*<<< orphan*/  el; scalar_t__ cluster_enabled; scalar_t__ sentinel_mode; scalar_t__ pidfile; int /*<<< orphan*/  supervised; scalar_t__ daemonize; int /*<<< orphan*/  supervised_mode; int /*<<< orphan*/ ** exec_argv; void* executable; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ C_ERR ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  LC_COLLATE ; 
 int /*<<< orphan*/  LL_NOTICE ; 
 int /*<<< orphan*/  LL_WARNING ; 
 int /*<<< orphan*/  REDIS_VERSION ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  afterSleep ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  beforeSleep ; 
 scalar_t__ FUNC8 (int,char**) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int FUNC10 (int,char**) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int FUNC14 (int,char**) ; 
 int /*<<< orphan*/  FUNC15 (int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,char*) ; 
 void* FUNC17 (char*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int) ; 
 int FUNC19 () ; 
 int /*<<< orphan*/  FUNC20 (struct timeval*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 () ; 
 int /*<<< orphan*/  FUNC22 () ; 
 int /*<<< orphan*/  FUNC23 () ; 
 int /*<<< orphan*/  FUNC24 () ; 
 int FUNC25 (int,char**) ; 
 int /*<<< orphan*/  FUNC26 () ; 
 int /*<<< orphan*/  FUNC27 () ; 
 int /*<<< orphan*/  FUNC28 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC30 () ; 
 int /*<<< orphan*/  FUNC31 () ; 
 int /*<<< orphan*/  FUNC32 (int,char**) ; 
 int /*<<< orphan*/  FUNC33 () ; 
 int /*<<< orphan*/  FUNC34 () ; 
 int /*<<< orphan*/  FUNC35 () ; 
 int /*<<< orphan*/  FUNC36 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  redisOutOfMemoryHandler ; 
 int /*<<< orphan*/  FUNC37 (char*) ; 
 int /*<<< orphan*/  FUNC38 (int,char**) ; 
 int /*<<< orphan*/  FUNC39 (int,char**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC40 () ; 
 int /*<<< orphan*/  FUNC41 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC42 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC43 () ; 
 int /*<<< orphan*/  FUNC44 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC45 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC46 () ; 
 TYPE_1__ server ; 
 int /*<<< orphan*/  FUNC47 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC48 (int /*<<< orphan*/ ,char*) ; 
 int FUNC49 (int,char**) ; 
 int /*<<< orphan*/  FUNC50 (int,char**) ; 
 int /*<<< orphan*/  FUNC51 (int) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC52 (char*,char*) ; 
 scalar_t__ FUNC53 (char*,char*) ; 
 int /*<<< orphan*/  FUNC54 (char*) ; 
 int /*<<< orphan*/ * FUNC55 (char*,char*) ; 
 scalar_t__ FUNC56 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int FUNC57 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC58 () ; 
 int /*<<< orphan*/  FUNC59 () ; 
 int /*<<< orphan*/  FUNC60 () ; 
 int FUNC61 (int,char**) ; 
 scalar_t__ FUNC62 () ; 
 int /*<<< orphan*/  FUNC63 () ; 
 int /*<<< orphan*/  FUNC64 (int /*<<< orphan*/ *) ; 
 int FUNC65 (int,char**) ; 
 int FUNC66 (int,char**) ; 
 int /*<<< orphan*/ ** FUNC67 (int) ; 
 int /*<<< orphan*/  FUNC68 (int /*<<< orphan*/ ) ; 
 int FUNC69 (int,char**) ; 
 void* FUNC70 (char*) ; 

int FUNC71(int argc, char **argv) {
    struct timeval tv;
    int j;

#ifdef REDIS_TEST
    if (argc == 3 && !strcasecmp(argv[1], "test")) {
        if (!strcasecmp(argv[2], "ziplist")) {
            return ziplistTest(argc, argv);
        } else if (!strcasecmp(argv[2], "quicklist")) {
            quicklistTest(argc, argv);
        } else if (!strcasecmp(argv[2], "intset")) {
            return intsetTest(argc, argv);
        } else if (!strcasecmp(argv[2], "zipmap")) {
            return zipmapTest(argc, argv);
        } else if (!strcasecmp(argv[2], "sha1test")) {
            return sha1Test(argc, argv);
        } else if (!strcasecmp(argv[2], "util")) {
            return utilTest(argc, argv);
        } else if (!strcasecmp(argv[2], "endianconv")) {
            return endianconvTest(argc, argv);
        } else if (!strcasecmp(argv[2], "crc64")) {
            return crc64Test(argc, argv);
        } else if (!strcasecmp(argv[2], "zmalloc")) {
            return zmalloc_test(argc, argv);
        }

        return -1; /* test not found */
    }
#endif

    /* We need to initialize our libraries, and the server configuration. */
#ifdef INIT_SETPROCTITLE_REPLACEMENT
    spt_init(argc, argv);
#endif
    FUNC48(LC_COLLATE,"");
    FUNC59(); /* Populates 'timezone' global. */
    FUNC68(redisOutOfMemoryHandler);
    FUNC51(FUNC57(NULL)^FUNC19());
    FUNC20(&tv,NULL);

    uint8_t hashseed[16];
    FUNC18(hashseed,sizeof(hashseed));
    FUNC13(hashseed);
    server.sentinel_mode = FUNC8(argc,argv);
    FUNC24();
    FUNC0(); /* The ACL subsystem must be initialized ASAP because the
                  basic networking code and client creation depends on it. */
    FUNC30();
    FUNC58();

    /* Store the executable path and arguments in a safe place in order
     * to be able to restart the server later. */
    server.executable = FUNC17(argv[0]);
    server.exec_argv = FUNC67(sizeof(char*)*(argc+1));
    server.exec_argv[argc] = NULL;
    for (j = 0; j < argc; j++) server.exec_argv[j] = FUNC70(argv[j]);

    /* We need to init sentinel right now as parsing the configuration file
     * in sentinel mode will have the effect of populating the sentinel
     * data structures with master nodes to monitor. */
    if (server.sentinel_mode) {
        FUNC22();
        FUNC21();
    }

    /* Check if we need to start in redis-check-rdb/aof mode. We just execute
     * the program main. However the program is part of the Redis executable
     * so that we can easily execute an RDB check on loading errors. */
    if (FUNC55(argv[0],"redis-check-rdb") != NULL)
        FUNC39(argc,argv,NULL);
    else if (FUNC55(argv[0],"redis-check-aof") != NULL)
        FUNC38(argc,argv);

    if (argc >= 2) {
        j = 1; /* First option to parse in argv[] */
        sds options = FUNC43();
        char *configfile = NULL;

        /* Handle special options --help and --version */
        if (FUNC53(argv[1], "-v") == 0 ||
            FUNC53(argv[1], "--version") == 0) FUNC63();
        if (FUNC53(argv[1], "--help") == 0 ||
            FUNC53(argv[1], "-h") == 0) FUNC60();
        if (FUNC53(argv[1], "--test-memory") == 0) {
            if (argc == 3) {
                FUNC29(FUNC7(argv[2]),50);
                FUNC15(0);
            } else {
                FUNC16(stderr,"Please specify the amount of memory to test in megabytes.\n");
                FUNC16(stderr,"Example: ./redis-server --test-memory 4096\n\n");
                FUNC15(1);
            }
        }

        /* First argument is the config file name? */
        if (argv[j][0] != '-' || argv[j][1] != '-') {
            configfile = argv[j];
            server.configfile = FUNC17(configfile);
            /* Replace the config file in server.exec_argv with
             * its absolute path. */
            FUNC64(server.exec_argv[j]);
            server.exec_argv[j] = FUNC70(server.configfile);
            j++;
        }

        /* All the other options are parsed and conceptually appended to the
         * configuration file. For instance --port 6380 will generate the
         * string "port 6380\n" to be parsed after the actual file name
         * is parsed, if any. */
        while(j != argc) {
            if (argv[j][0] == '-' && argv[j][1] == '-') {
                /* Option name */
                if (!FUNC53(argv[j], "--check-rdb")) {
                    /* Argument has no options, need to skip for parsing. */
                    j++;
                    continue;
                }
                if (FUNC45(options)) options = FUNC41(options,"\n");
                options = FUNC41(options,argv[j]+2);
                options = FUNC41(options," ");
            } else {
                /* Option argument */
                options = FUNC42(options,argv[j],FUNC54(argv[j]));
                options = FUNC41(options," ");
            }
            j++;
        }
        if (server.sentinel_mode && configfile && *configfile == '-') {
            FUNC47(LL_WARNING,
                "Sentinel config from STDIN not allowed.");
            FUNC47(LL_WARNING,
                "Sentinel needs config file on disk to save state.  Exiting...");
            FUNC15(1);
        }
        FUNC40();
        FUNC28(configfile,options);
        FUNC44(options);
    }

    FUNC47(LL_WARNING, "oO0OoO0OoO0Oo Redis is starting oO0OoO0OoO0Oo");
    FUNC47(LL_WARNING,
        "Redis version=%s, bits=%d, commit=%s, modified=%d, pid=%d, just started",
            REDIS_VERSION,
            (sizeof(long) == 8) ? 64 : 32,
            FUNC35(),
            FUNC56(FUNC34(),NULL,10) > 0,
            (int)FUNC19());

    if (argc == 1) {
        FUNC47(LL_WARNING, "Warning: no config file specified, using the default config. In order to specify a config file use %s /path/to/%s.conf", argv[0], server.sentinel_mode ? "sentinel" : "redis");
    } else {
        FUNC47(LL_WARNING, "Configuration loaded");
    }

    server.supervised = FUNC36(server.supervised_mode);
    int background = server.daemonize && !server.supervised;
    if (background) FUNC12();

    FUNC23();
    if (background || server.pidfile) FUNC11();
    FUNC37(argv[0]);
    FUNC33();
    FUNC9();

    if (!server.sentinel_mode) {
        /* Things not needed when running in Sentinel mode. */
        FUNC47(LL_WARNING,"Server initialized");
    #ifdef __linux__
        FUNC26();
    #endif
        FUNC31();
        FUNC1();
        FUNC2();
        FUNC27();
        if (server.cluster_enabled) {
            if (FUNC62() == C_ERR) {
                FUNC47(LL_WARNING,
                    "You can't have keys in a DB different than DB 0 when in "
                    "Cluster mode. Exiting.");
                FUNC15(1);
            }
        }
        if (server.ipfd_count > 0 || server.tlsfd_count > 0)
            FUNC47(LL_NOTICE,"Ready to accept connections");
        if (server.sofd > 0)
            FUNC47(LL_NOTICE,"The server is now ready to accept connections at %s", server.unixsocket);
    } else {
        FUNC2();
        FUNC46();
    }

    /* Warning the user about suspicious maxmemory setting. */
    if (server.maxmemory > 0 && server.maxmemory < 1024*1024) {
        FUNC47(LL_WARNING,"WARNING: You specified a maxmemory value that is less than 1MB (current value is %llu bytes). Are you sure this is what you really want?", server.maxmemory);
    }

    FUNC6(server.el,beforeSleep);
    FUNC5(server.el,afterSleep);
    FUNC4(server.el);
    FUNC3(server.el);
    return 0;
}