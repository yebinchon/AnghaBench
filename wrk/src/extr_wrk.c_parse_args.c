
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct http_parser_url {int dummy; } ;
struct config {int threads; int connections; int duration; int timeout; int latency; void* script; } ;


 int SOCKET_TIMEOUT_MS ;
 char* VERSION ;
 char* aeGetApiName () ;
 int fprintf (int ,char*,...) ;
 int getopt_long (int,char**,char*,int ,int *) ;
 int longopts ;
 int memset (struct config*,int ,int) ;
 void* optarg ;
 int optind ;
 int printf (char*,...) ;
 int scan_metric (void*,int*) ;
 int scan_time (void*,int*) ;
 int script_parse_url (char*,struct http_parser_url*) ;
 int stderr ;

__attribute__((used)) static int parse_args(struct config *cfg, char **url, struct http_parser_url *parts, char **headers, int argc, char **argv) {
    char **header = headers;
    int c;

    memset(cfg, 0, sizeof(struct config));
    cfg->threads = 2;
    cfg->connections = 10;
    cfg->duration = 10;
    cfg->timeout = SOCKET_TIMEOUT_MS;

    while ((c = getopt_long(argc, argv, "t:c:d:s:H:T:Lrv?", longopts, ((void*)0))) != -1) {
        switch (c) {
            case 't':
                if (scan_metric(optarg, &cfg->threads)) return -1;
                break;
            case 'c':
                if (scan_metric(optarg, &cfg->connections)) return -1;
                break;
            case 'd':
                if (scan_time(optarg, &cfg->duration)) return -1;
                break;
            case 's':
                cfg->script = optarg;
                break;
            case 'H':
                *header++ = optarg;
                break;
            case 'L':
                cfg->latency = 1;
                break;
            case 'T':
                if (scan_time(optarg, &cfg->timeout)) return -1;
                cfg->timeout *= 1000;
                break;
            case 'v':
                printf("wrk %s [%s] ", VERSION, aeGetApiName());
                printf("Copyright (C) 2012 Will Glozer\n");
                break;
            case 'h':
            case '?':
            case ':':
            default:
                return -1;
        }
    }

    if (optind == argc || !cfg->threads || !cfg->duration) return -1;

    if (!script_parse_url(argv[optind], parts)) {
        fprintf(stderr, "invalid URL: %s\n", argv[optind]);
        return -1;
    }

    if (!cfg->connections || cfg->connections < cfg->threads) {
        fprintf(stderr, "number of connections must be >= threads\n");
        return -1;
    }

    *url = argv[optind];
    *header = ((void*)0);

    return 0;
}
