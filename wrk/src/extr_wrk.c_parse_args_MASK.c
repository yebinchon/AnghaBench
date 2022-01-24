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
struct http_parser_url {int dummy; } ;
struct config {int threads; int connections; int duration; int timeout; int latency; void* script; } ;

/* Variables and functions */
 int SOCKET_TIMEOUT_MS ; 
 char* VERSION ; 
 char* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC2 (int,char**,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  longopts ; 
 int /*<<< orphan*/  FUNC3 (struct config*,int /*<<< orphan*/ ,int) ; 
 void* optarg ; 
 int optind ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (void*,int*) ; 
 int /*<<< orphan*/  FUNC6 (void*,int*) ; 
 int /*<<< orphan*/  FUNC7 (char*,struct http_parser_url*) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int FUNC8(struct config *cfg, char **url, struct http_parser_url *parts, char **headers, int argc, char **argv) {
    char **header = headers;
    int c;

    FUNC3(cfg, 0, sizeof(struct config));
    cfg->threads     = 2;
    cfg->connections = 10;
    cfg->duration    = 10;
    cfg->timeout     = SOCKET_TIMEOUT_MS;

    while ((c = FUNC2(argc, argv, "t:c:d:s:H:T:Lrv?", longopts, NULL)) != -1) {
        switch (c) {
            case 't':
                if (FUNC5(optarg, &cfg->threads)) return -1;
                break;
            case 'c':
                if (FUNC5(optarg, &cfg->connections)) return -1;
                break;
            case 'd':
                if (FUNC6(optarg, &cfg->duration)) return -1;
                break;
            case 's':
                cfg->script = optarg;
                break;
            case 'H':
                *header++ = optarg;
                break;
            case 'L':
                cfg->latency = true;
                break;
            case 'T':
                if (FUNC6(optarg, &cfg->timeout)) return -1;
                cfg->timeout *= 1000;
                break;
            case 'v':
                FUNC4("wrk %s [%s] ", VERSION, FUNC0());
                FUNC4("Copyright (C) 2012 Will Glozer\n");
                break;
            case 'h':
            case '?':
            case ':':
            default:
                return -1;
        }
    }

    if (optind == argc || !cfg->threads || !cfg->duration) return -1;

    if (!FUNC7(argv[optind], parts)) {
        FUNC1(stderr, "invalid URL: %s\n", argv[optind]);
        return -1;
    }

    if (!cfg->connections || cfg->connections < cfg->threads) {
        FUNC1(stderr, "number of connections must be >= threads\n");
        return -1;
    }

    *url    = argv[optind];
    *header = NULL;

    return 0;
}