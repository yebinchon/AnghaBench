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
struct TYPE_2__ {int datasize; int pipeline; int randomkeys; scalar_t__ randomkeys_keyspacelen; int quiet; int csv; int loop; int idlemode; int showerrors; scalar_t__ precision; scalar_t__ num_threads; int cluster_mode; int enable_tracking; void* dbnum; int /*<<< orphan*/  dbnumstr; void* tests; void* auth; void* hostsocket; void* hostport; void* hostip; void* keepalive; void* requests; void* numclients; } ;

/* Variables and functions */
 scalar_t__ MAX_LATENCY_PRECISION ; 
 scalar_t__ MAX_THREADS ; 
 void* FUNC0 (char const*) ; 
 TYPE_1__ config ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 void* FUNC3 (void*,char*) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 void* FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 
 int /*<<< orphan*/  FUNC7 (char const*,char*) ; 
 void* FUNC8 (char const*) ; 

int FUNC9(int argc, const char **argv) {
    int i;
    int lastarg;
    int exit_status = 1;

    for (i = 1; i < argc; i++) {
        lastarg = (i == (argc-1));

        if (!FUNC7(argv[i],"-c")) {
            if (lastarg) goto invalid;
            config.numclients = FUNC0(argv[++i]);
        } else if (!FUNC7(argv[i],"-n")) {
            if (lastarg) goto invalid;
            config.requests = FUNC0(argv[++i]);
        } else if (!FUNC7(argv[i],"-k")) {
            if (lastarg) goto invalid;
            config.keepalive = FUNC0(argv[++i]);
        } else if (!FUNC7(argv[i],"-h")) {
            if (lastarg) goto invalid;
            config.hostip = FUNC8(argv[++i]);
        } else if (!FUNC7(argv[i],"-p")) {
            if (lastarg) goto invalid;
            config.hostport = FUNC0(argv[++i]);
        } else if (!FUNC7(argv[i],"-s")) {
            if (lastarg) goto invalid;
            config.hostsocket = FUNC8(argv[++i]);
        } else if (!FUNC7(argv[i],"-a") ) {
            if (lastarg) goto invalid;
            config.auth = FUNC8(argv[++i]);
        } else if (!FUNC7(argv[i],"-d")) {
            if (lastarg) goto invalid;
            config.datasize = FUNC0(argv[++i]);
            if (config.datasize < 1) config.datasize=1;
            if (config.datasize > 1024*1024*1024) config.datasize = 1024*1024*1024;
        } else if (!FUNC7(argv[i],"-P")) {
            if (lastarg) goto invalid;
            config.pipeline = FUNC0(argv[++i]);
            if (config.pipeline <= 0) config.pipeline=1;
        } else if (!FUNC7(argv[i],"-r")) {
            if (lastarg) goto invalid;
            const char *next = argv[++i], *p = next;
            if (*p == '-') {
                p++;
                if (*p < '0' || *p > '9') goto invalid;
            }
            config.randomkeys = 1;
            config.randomkeys_keyspacelen = FUNC0(next);
            if (config.randomkeys_keyspacelen < 0)
                config.randomkeys_keyspacelen = 0;
        } else if (!FUNC7(argv[i],"-q")) {
            config.quiet = 1;
        } else if (!FUNC7(argv[i],"--csv")) {
            config.csv = 1;
        } else if (!FUNC7(argv[i],"-l")) {
            config.loop = 1;
        } else if (!FUNC7(argv[i],"-I")) {
            config.idlemode = 1;
        } else if (!FUNC7(argv[i],"-e")) {
            config.showerrors = 1;
        } else if (!FUNC7(argv[i],"-t")) {
            if (lastarg) goto invalid;
            /* We get the list of tests to run as a string in the form
             * get,set,lrange,...,test_N. Then we add a comma before and
             * after the string in order to make sure that searching
             * for ",testname," will always get a match if the test is
             * enabled. */
            config.tests = FUNC5(",");
            config.tests = FUNC3(config.tests,(char*)argv[++i]);
            config.tests = FUNC3(config.tests,",");
            FUNC6(config.tests);
        } else if (!FUNC7(argv[i],"--dbnum")) {
            if (lastarg) goto invalid;
            config.dbnum = FUNC0(argv[++i]);
            config.dbnumstr = FUNC4(config.dbnum);
        } else if (!FUNC7(argv[i],"--precision")) {
            if (lastarg) goto invalid;
            config.precision = FUNC0(argv[++i]);
            if (config.precision < 0) config.precision = 0;
            if (config.precision > MAX_LATENCY_PRECISION) config.precision = MAX_LATENCY_PRECISION;
        } else if (!FUNC7(argv[i],"--threads")) {
             if (lastarg) goto invalid;
             config.num_threads = FUNC0(argv[++i]);
             if (config.num_threads > MAX_THREADS) {
                FUNC2("WARNING: too many threads, limiting threads to %d.\n",
                       MAX_THREADS);
                config.num_threads = MAX_THREADS;
             } else if (config.num_threads < 0) config.num_threads = 0;
        } else if (!FUNC7(argv[i],"--cluster")) {
            config.cluster_mode = 1;
        } else if (!FUNC7(argv[i],"--enable-tracking")) {
            config.enable_tracking = 1;
        } else if (!FUNC7(argv[i],"--help")) {
            exit_status = 0;
            goto usage;
        } else {
            /* Assume the user meant to provide an option when the arg starts
             * with a dash. We're done otherwise and should use the remainder
             * as the command and arguments for running the benchmark. */
            if (argv[i][0] == '-') goto invalid;
            return i;
        }
    }

    return i;

invalid:
    FUNC2("Invalid option \"%s\" or option argument missing\n\n",argv[i]);

usage:
    FUNC2(
"Usage: redis-benchmark [-h <host>] [-p <port>] [-c <clients>] [-n <requests>] [-k <boolean>]\n\n"
" -h <hostname>      Server hostname (default 127.0.0.1)\n"
" -p <port>          Server port (default 6379)\n"
" -s <socket>        Server socket (overrides host and port)\n"
" -a <password>      Password for Redis Auth\n"
" -c <clients>       Number of parallel connections (default 50)\n"
" -n <requests>      Total number of requests (default 100000)\n"
" -d <size>          Data size of SET/GET value in bytes (default 3)\n"
" --dbnum <db>       SELECT the specified db number (default 0)\n"
" --threads <num>    Enable multi-thread mode.\n"
" --cluster          Enable cluster mode.\n"
" --enable-tracking  Send CLIENT TRACKING on before starting benchmark.\n"
" -k <boolean>       1=keep alive 0=reconnect (default 1)\n"
" -r <keyspacelen>   Use random keys for SET/GET/INCR, random values for SADD\n"
"  Using this option the benchmark will expand the string __rand_int__\n"
"  inside an argument with a 12 digits number in the specified range\n"
"  from 0 to keyspacelen-1. The substitution changes every time a command\n"
"  is executed. Default tests use this to hit random keys in the\n"
"  specified range.\n"
" -P <numreq>        Pipeline <numreq> requests. Default 1 (no pipeline).\n"
" -e                 If server replies with errors, show them on stdout.\n"
"                    (no more than 1 error per second is displayed)\n"
" -q                 Quiet. Just show query/sec values\n"
" --precision        Number of decimal places to display in latency output (default 0)\n"
" --csv              Output in CSV format\n"
" -l                 Loop. Run the tests forever\n"
" -t <tests>         Only run the comma separated list of tests. The test\n"
"                    names are the same as the ones produced as output.\n"
" -I                 Idle mode. Just open N idle connections and wait.\n\n"
"Examples:\n\n"
" Run the benchmark with the default configuration against 127.0.0.1:6379:\n"
"   $ redis-benchmark\n\n"
" Use 20 parallel clients, for a total of 100k requests, against 192.168.1.1:\n"
"   $ redis-benchmark -h 192.168.1.1 -p 6379 -n 100000 -c 20\n\n"
" Fill 127.0.0.1:6379 with about 1 million keys only using the SET test:\n"
"   $ redis-benchmark -t set -n 1000000 -r 100000000\n\n"
" Benchmark 127.0.0.1:6379 for a few commands producing CSV output:\n"
"   $ redis-benchmark -t ping,set,get -n 100000 --csv\n\n"
" Benchmark a specific command line:\n"
"   $ redis-benchmark -r 10000 -n 10000 eval 'return redis.call(\"ping\")' 0\n\n"
" Fill a list with 10000 random elements:\n"
"   $ redis-benchmark -r 10000 -n 10000 lpush mylist __rand_int__\n\n"
" On user specified command lines __rand_int__ is replaced with a random integer\n"
" with a range of values selected by the -r option.\n"
    );
    FUNC1(exit_status);
}