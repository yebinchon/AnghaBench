#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ sds ;
typedef  int /*<<< orphan*/  redisReply ;
struct TYPE_8__ {TYPE_2__* value; } ;
typedef  TYPE_1__ listNode ;
typedef  int /*<<< orphan*/  listIter ;
struct TYPE_9__ {char* ip; int port; int /*<<< orphan*/  context; } ;
typedef  TYPE_2__ clusterManagerNode ;
struct TYPE_10__ {int /*<<< orphan*/  nodes; } ;

/* Variables and functions */
 char* CLUSTER_MANAGER_INVALID_HOST_ARG ; 
 int REDIS_OK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 TYPE_2__* FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 TYPE_4__ cluster_manager ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int,char**,char**,int*) ; 
 TYPE_1__* FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int,char const**,size_t*) ; 
 int FUNC12 (int /*<<< orphan*/ ,void**) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__) ; 
 int /*<<< orphan*/  stderr ; 
 size_t FUNC14 (char*) ; 
 int /*<<< orphan*/  FUNC15 (size_t*) ; 
 size_t* FUNC16 (int) ; 

__attribute__((used)) static int FUNC17(int argc, char **argv) {
    int port = 0, i;
    char *ip = NULL;
    if (!FUNC7(1, argv, &ip, &port)) goto invalid_args;
    clusterManagerNode *refnode = FUNC3(ip, port);
    if (!FUNC1(refnode, 0)) return 0;
    argc--;
    argv++;
    size_t *argvlen = FUNC16(argc*sizeof(size_t));
    FUNC2(">>> Calling");
    for (i = 0; i < argc; i++) {
        argvlen[i] = FUNC14(argv[i]);
        FUNC10(" %s", argv[i]);
    }
    FUNC10("\n");
    listIter li;
    listNode *ln;
    FUNC9(cluster_manager.nodes, &li);
    while ((ln = FUNC8(&li)) != NULL) {
        clusterManagerNode *n = ln->value;
        if (!n->context && !FUNC4(n)) continue;
        redisReply *reply = NULL;
        FUNC11(n->context, argc, (const char **) argv, argvlen);
        int status = FUNC12(n->context, (void **)(&reply));
        if (status != REDIS_OK || reply == NULL )
            FUNC10("%s:%d: Failed!\n", n->ip, n->port);
        else {
            sds formatted_reply = FUNC0(reply);
            FUNC10("%s:%d: %s\n", n->ip, n->port, (char *) formatted_reply);
            FUNC13(formatted_reply);
        }
        if (reply != NULL) FUNC6(reply);
    }
    FUNC15(argvlen);
    return 1;
invalid_args:
    FUNC5(stderr, "%s", CLUSTER_MANAGER_INVALID_HOST_ARG);
    return 0;
}