#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  redisReply ;
struct TYPE_9__ {TYPE_2__* value; } ;
typedef  TYPE_1__ listNode ;
typedef  int /*<<< orphan*/  listIter ;
struct TYPE_10__ {int /*<<< orphan*/  port; int /*<<< orphan*/  ip; } ;
typedef  TYPE_2__ clusterManagerNode ;
struct TYPE_11__ {int /*<<< orphan*/  nodes; } ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (TYPE_2__*,char*,char*,...) ; 
 char* CLUSTER_MANAGER_INVALID_HOST_ARG ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (char*) ; 
 int FUNC3 (TYPE_2__*,int /*<<< orphan*/ *,char**) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC8 (char*,int) ; 
 TYPE_4__ cluster_manager ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int,char**,char**,int*) ; 
 TYPE_1__* FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 

__attribute__((used)) static int FUNC15(int argc, char **argv) {
    FUNC1(argc);
    int port = 0;
    char *ip = NULL;
    if (!FUNC11(1, argv, &ip, &port)) goto invalid_args;
    int timeout = FUNC2(argv[1]);
    if (timeout < 100) {
        FUNC9(stderr, "Setting a node timeout of less than 100 "
                "milliseconds is a bad idea.\n");
        return 0;
    }
    // Load cluster information
    clusterManagerNode *node = FUNC8(ip, port);
    if (!FUNC4(node, 0)) return 0;
    int ok_count = 0, err_count = 0;

    FUNC6(">>> Reconfiguring node timeout in every "
                          "cluster node...\n");
    listIter li;
    listNode *ln;
    FUNC13(cluster_manager.nodes, &li);
    while ((ln = FUNC12(&li)) != NULL) {
        clusterManagerNode *n = ln->value;
        char *err = NULL;
        redisReply *reply = FUNC0(n, "CONFIG %s %s %d",
                                                    "SET",
                                                    "cluster-node-timeout",
                                                    timeout);
        if (reply == NULL) goto reply_err;
        int ok = FUNC3(n, reply, &err);
        FUNC10(reply);
        if (!ok) goto reply_err;
        reply = FUNC0(n, "CONFIG %s", "REWRITE");
        if (reply == NULL) goto reply_err;
        ok = FUNC3(n, reply, &err);
        FUNC10(reply);
        if (!ok) goto reply_err;
        FUNC7("*** New timeout set for %s:%d\n", n->ip,
                              n->port);
        ok_count++;
        continue;
reply_err:;
        int need_free = 0;
        if (err == NULL) err = "";
        else need_free = 1;
        FUNC5("ERR setting node-timeot for %s:%d: %s\n", n->ip,
                             n->port, err);
        if (need_free) FUNC14(err);
        err_count++;
    }
    FUNC6(">>> New node timeout set. %d OK, %d ERR.\n",
                          ok_count, err_count);
    return 1;
invalid_args:
    FUNC9(stderr, "%s", CLUSTER_MANAGER_INVALID_HOST_ARG);
    return 0;
}