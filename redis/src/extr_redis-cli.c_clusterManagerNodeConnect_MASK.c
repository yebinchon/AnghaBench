#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  redisReply ;
struct TYPE_9__ {char* ip; int port; TYPE_2__* context; } ;
typedef  TYPE_1__ clusterManagerNode ;
struct TYPE_11__ {scalar_t__ auth; int /*<<< orphan*/ * user; scalar_t__ tls; } ;
struct TYPE_10__ {char* errstr; int /*<<< orphan*/  fd; scalar_t__ err; } ;

/* Variables and functions */
 int /*<<< orphan*/  REDIS_CLI_KEEPALIVE_INTERVAL ; 
 scalar_t__ REDIS_ERR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_2__*,char const**) ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_5__ config ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_2__*,char*,int /*<<< orphan*/ *,...) ; 
 TYPE_2__* FUNC6 (char*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int FUNC8(clusterManagerNode *node) {
    if (node->context) FUNC7(node->context);
    node->context = FUNC6(node->ip, node->port);
    if (!node->context->err && config.tls) {
        const char *err = NULL;
        if (FUNC1(node->context, &err) == REDIS_ERR && err) {
            FUNC3(stderr,"TLS Error: %s\n", err);
            FUNC7(node->context);
            node->context = NULL;
            return 0;
        }
    }
    if (node->context->err) {
        FUNC3(stderr,"Could not connect to Redis at ");
        FUNC3(stderr,"%s:%d: %s\n", node->ip, node->port,
                node->context->errstr);
        FUNC7(node->context);
        node->context = NULL;
        return 0;
    }
    /* Set aggressive KEEP_ALIVE socket option in the Redis context socket
     * in order to prevent timeouts caused by the execution of long
     * commands. At the same time this improves the detection of real
     * errors. */
    FUNC0(NULL, node->context->fd, REDIS_CLI_KEEPALIVE_INTERVAL);
    if (config.auth) {
        redisReply *reply;
        if (config.user == NULL)
            reply = FUNC5(node->context,"AUTH %s", config.auth);
        else
            reply = FUNC5(node->context,"AUTH %s %s",
                                 config.user,config.auth);
        int ok = FUNC2(node, reply, NULL);
        if (reply != NULL) FUNC4(reply);
        if (!ok) return 0;
    }
    return 1;
}