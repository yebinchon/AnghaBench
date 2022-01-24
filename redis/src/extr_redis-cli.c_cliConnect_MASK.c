#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_5__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {char* hostsocket; char* hostip; int hostport; scalar_t__ tls; } ;
struct TYPE_7__ {char* errstr; int /*<<< orphan*/  fd; scalar_t__ err; } ;

/* Variables and functions */
 int CC_FORCE ; 
 int CC_QUIET ; 
 int /*<<< orphan*/  REDIS_CLI_KEEPALIVE_INTERVAL ; 
 scalar_t__ REDIS_ERR ; 
 scalar_t__ REDIS_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 (TYPE_1__*,char const**) ; 
 scalar_t__ FUNC3 () ; 
 scalar_t__ FUNC4 () ; 
 TYPE_5__ config ; 
 TYPE_1__* context ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 TYPE_1__* FUNC6 (char*,int) ; 
 TYPE_1__* FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int FUNC9(int flags) {
    if (context == NULL || flags & CC_FORCE) {
        if (context != NULL) {
            FUNC8(context);
        }

        if (config.hostsocket == NULL) {
            context = FUNC6(config.hostip,config.hostport);
        } else {
            context = FUNC7(config.hostsocket);
        }

        if (!context->err && config.tls) {
            const char *err = NULL;
            if (FUNC2(context, &err) == REDIS_ERR && err) {
                FUNC5(stderr, "Could not negotiate a TLS connection: %s\n", err);
                context = NULL;
                FUNC8(context);
                return REDIS_ERR;
            }
        }

        if (context->err) {
            if (!(flags & CC_QUIET)) {
                FUNC5(stderr,"Could not connect to Redis at ");
                if (config.hostsocket == NULL)
                    FUNC5(stderr,"%s:%d: %s\n",
                        config.hostip,config.hostport,context->errstr);
                else
                    FUNC5(stderr,"%s: %s\n",
                        config.hostsocket,context->errstr);
            }
            FUNC8(context);
            context = NULL;
            return REDIS_ERR;
        }


        /* Set aggressive KEEP_ALIVE socket option in the Redis context socket
         * in order to prevent timeouts caused by the execution of long
         * commands. At the same time this improves the detection of real
         * errors. */
        FUNC0(NULL, context->fd, REDIS_CLI_KEEPALIVE_INTERVAL);

        /* Do AUTH, select the right DB, switch to RESP3 if needed. */
        if (FUNC1() != REDIS_OK)
            return REDIS_ERR;
        if (FUNC3() != REDIS_OK)
            return REDIS_ERR;
        if (FUNC4() != REDIS_OK)
            return REDIS_ERR;
    }
    return REDIS_OK;
}