#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_7__ ;
typedef  struct TYPE_24__   TYPE_6__ ;
typedef  struct TYPE_23__   TYPE_3__ ;
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  redisReply ;
struct TYPE_22__ {char* ip; int port; int /*<<< orphan*/  name; } ;
typedef  TYPE_2__ clusterManagerNode ;
struct TYPE_25__ {int /*<<< orphan*/  nodes; } ;
struct TYPE_21__ {int flags; char* master_id; } ;
struct TYPE_24__ {TYPE_1__ cluster_manager_command; } ;
struct TYPE_23__ {TYPE_2__* value; } ;

/* Variables and functions */
 int CLUSTER_MANAGER_CMD_FLAG_SLAVE ; 
 int /*<<< orphan*/ * FUNC0 (TYPE_2__*,char*,char*,...) ; 
 char* CLUSTER_MANAGER_INVALID_HOST_ARG ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,int,...) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 TYPE_2__* FUNC9 (char*,int) ; 
 TYPE_2__* FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*) ; 
 int FUNC12 (TYPE_2__*,char**) ; 
 int FUNC13 (TYPE_2__*,char**) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*,int /*<<< orphan*/ ,char**) ; 
 TYPE_2__* FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC18 () ; 
 TYPE_7__ cluster_manager ; 
 TYPE_6__ config ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int,char**,char**,int*) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 TYPE_3__* FUNC24 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC26 (int) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC27 (char*) ; 

__attribute__((used)) static int FUNC28(int argc, char **argv) {
    int success = 1;
    redisReply *reply = NULL;
    char *ref_ip = NULL, *ip = NULL;
    int ref_port = 0, port = 0;
    if (!FUNC22(argc - 1, argv + 1, &ref_ip, &ref_port))
        goto invalid_args;
    if (!FUNC22(1, argv, &ip, &port))
        goto invalid_args;
    FUNC7(">>> Adding node %s:%d to cluster %s:%d\n", ip, port,
                          ref_ip, ref_port);
    // Check the existing cluster
    clusterManagerNode *refnode = FUNC9(ref_ip, ref_port);
    if (!FUNC5(refnode, 0)) return 0;
    if (!FUNC3(0)) return 0;

    /* If --cluster-master-id was specified, try to resolve it now so that we
     * abort before starting with the node configuration. */
    clusterManagerNode *master_node = NULL;
    if (config.cluster_manager_command.flags & CLUSTER_MANAGER_CMD_FLAG_SLAVE) {
        char *master_id = config.cluster_manager_command.master_id;
        if (master_id != NULL) {
            master_node = FUNC10(master_id);
            if (master_node == NULL) {
                FUNC6("[ERR] No such master ID %s\n", master_id);
                return 0;
            }
        } else {
            master_node = FUNC15();
            FUNC2(master_node != NULL);
            FUNC25("Automatically selected master %s:%d\n", master_node->ip,
                   master_node->port);
        }
    }

    // Add the new node
    clusterManagerNode *new_node = FUNC9(ip, port);
    int added = 0;
    if (!FUNC11(new_node)) {
        FUNC6("[ERR] Sorry, can't connect to node %s:%d\n",
                             ip, port);
        success = 0;
        goto cleanup;
    }
    char *err = NULL;
    if (!(success = FUNC12(new_node, &err))) {
        FUNC16(new_node, err);
        if (err) FUNC27(err);
        goto cleanup;
    }
    if (!FUNC14(new_node, 0, &err)) {
        if (err) {
            FUNC1(new_node, err);
            FUNC27(err);
        }
        success = 0;
        goto cleanup;
    }
    if (!(success = FUNC13(new_node, &err))) {
        FUNC17(new_node, err);
        if (err) FUNC27(err);
        goto cleanup;
    }
    clusterManagerNode *first = FUNC24(cluster_manager.nodes)->value;
    FUNC23(cluster_manager.nodes, new_node);
    added = 1;

    // Send CLUSTER MEET command to the new node
    FUNC7(">>> Send CLUSTER MEET to node %s:%d to make it "
                          "join the cluster.\n", ip, port);
    reply = FUNC0(new_node, "CLUSTER MEET %s %d",
                                    first->ip, first->port);
    if (!(success = FUNC4(new_node, reply, NULL)))
        goto cleanup;

    /* Additional configuration is needed if the node is added as a slave. */
    if (master_node) {
        FUNC26(1);
        FUNC18();
        FUNC7(">>> Configure node as replica of %s:%d.\n",
                              master_node->ip, master_node->port);
        FUNC21(reply);
        reply = FUNC0(new_node, "CLUSTER REPLICATE %s",
                                        master_node->name);
        if (!(success = FUNC4(new_node, reply, NULL)))
            goto cleanup;
    }
    FUNC8("[OK] New node added correctly.\n");
cleanup:
    if (!added && new_node) FUNC20(new_node);
    if (reply) FUNC21(reply);
    return success;
invalid_args:
    FUNC19(stderr, "%s", CLUSTER_MANAGER_INVALID_HOST_ARG);
    return 0;
}