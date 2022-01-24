#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sds ;
struct TYPE_4__ {int /*<<< orphan*/  value; } ;
typedef  TYPE_1__ listNode ;
typedef  int /*<<< orphan*/  listIter ;
typedef  int /*<<< orphan*/  list ;
typedef  int /*<<< orphan*/  dictIterator ;
typedef  int /*<<< orphan*/  dictEntry ;
typedef  int /*<<< orphan*/  dict ;
struct TYPE_5__ {int /*<<< orphan*/  nodes; } ;

/* Variables and functions */
 int CLUSTER_JOIN_CHECK_AFTER ; 
 int /*<<< orphan*/ * FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 TYPE_3__ cluster_manager ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 float FUNC12 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,char**,int*,int*) ; 
 int /*<<< orphan*/  FUNC16 (char*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int) ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static void FUNC19(void) {
    FUNC16("Waiting for the cluster to join\n");
    int counter = 0,
        check_after = CLUSTER_JOIN_CHECK_AFTER +
                      (int)(FUNC12(cluster_manager.nodes) * 0.15f);
    while(!FUNC1()) {
        FUNC16(".");
        FUNC10(stdout);
        FUNC18(1);
        if (++counter > check_after) {
            dict *status = FUNC0();
            dictIterator *iter = NULL;
            if (status != NULL && FUNC9(status) > 0) {
                FUNC16("\n");
                FUNC2("Warning: %d node(s) may "
                                     "be unreachable\n", FUNC9(status));
                iter = FUNC3(status);
                dictEntry *entry;
                while ((entry = FUNC6(iter)) != NULL) {
                    sds nodeaddr = (sds) FUNC4(entry);
                    char *node_ip = NULL;
                    int node_port = 0, node_bus_port = 0;
                    list *from = (list *) FUNC5(entry);
                    if (FUNC15(nodeaddr, &node_ip,
                        &node_port, &node_bus_port) && node_bus_port) {
                        FUNC2(" - The port %d of node %s may "
                                             "be unreachable from:\n",
                                             node_bus_port, node_ip);
                    } else {
                        FUNC2(" - Node %s may be unreachable "
                                             "from:\n", nodeaddr);
                    }
                    listIter li;
                    listNode *ln;
                    FUNC14(from, &li);
                    while ((ln = FUNC13(&li)) != NULL) {
                        sds from_addr = ln->value;
                        FUNC2("   %s\n", from_addr);
                        FUNC17(from_addr);
                    }
                    FUNC2("Cluster bus ports must be reachable "
                                         "by every node.\nRemember that "
                                         "cluster bus ports are different "
                                         "from standard instance ports.\n");
                    FUNC11(from);
                }
            }
            if (iter != NULL) FUNC8(iter);
            if (status != NULL) FUNC7(status);
            counter = 0;
        }
    }
    FUNC16("\n");
}