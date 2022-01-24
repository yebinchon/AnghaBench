#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_6__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {TYPE_2__* value; } ;
typedef  TYPE_1__ listNode ;
typedef  int /*<<< orphan*/  listIter ;
struct TYPE_15__ {int flags; int /*<<< orphan*/  replicas_count; int /*<<< orphan*/ * replicate; int /*<<< orphan*/  port; int /*<<< orphan*/  ip; int /*<<< orphan*/ * friends; int /*<<< orphan*/ * context; } ;
typedef  TYPE_2__ clusterManagerNode ;
struct TYPE_16__ {int /*<<< orphan*/ * nodes; } ;

/* Variables and functions */
 int CLUSTER_MANAGER_FLAG_DISCONNECT ; 
 int CLUSTER_MANAGER_FLAG_FAIL ; 
 int CLUSTER_MANAGER_FLAG_NOADDR ; 
 int CLUSTER_MANAGER_OPT_GETFRIENDS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,char**) ; 
 scalar_t__ FUNC6 (TYPE_2__*,int,char**) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,char*) ; 
 TYPE_6__ cluster_manager ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC10 () ; 
 TYPE_1__* FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 

__attribute__((used)) static int FUNC15(clusterManagerNode *node, int opts) {
    if (node->context == NULL && !FUNC4(node)) {
        FUNC8(node);
        return 0;
    }
    opts |= CLUSTER_MANAGER_OPT_GETFRIENDS;
    char *e = NULL;
    if (!FUNC5(node, &e)) {
        FUNC7(node, e);
        if (e) FUNC14(e);
        FUNC8(node);
        return 0;
    }
    e = NULL;
    if (!FUNC6(node, opts, &e)) {
        if (e) {
            FUNC0(node, e);
            FUNC14(e);
        }
        FUNC8(node);
        return 0;
    }
    listIter li;
    listNode *ln;
    if (cluster_manager.nodes != NULL) {
        FUNC13(cluster_manager.nodes, &li);
        while ((ln = FUNC11(&li)) != NULL)
            FUNC8((clusterManagerNode *) ln->value);
        FUNC12(cluster_manager.nodes);
    }
    cluster_manager.nodes = FUNC10();
    FUNC9(cluster_manager.nodes, node);
    if (node->friends != NULL) {
        FUNC13(node->friends, &li);
        while ((ln = FUNC11(&li)) != NULL) {
            clusterManagerNode *friend = ln->value;
            if (!friend->ip || !friend->port) goto invalid_friend;
            if (!friend->context && !FUNC4(friend))
                goto invalid_friend;
            e = NULL;
            if (FUNC6(friend, 0, &e)) {
                if (friend->flags & (CLUSTER_MANAGER_FLAG_NOADDR |
                                     CLUSTER_MANAGER_FLAG_DISCONNECT |
                                     CLUSTER_MANAGER_FLAG_FAIL))
                    goto invalid_friend;
                FUNC9(cluster_manager.nodes, friend);
            } else {
                FUNC1("[ERR] Unable to load info for "
                                     "node %s:%d\n",
                                     friend->ip, friend->port);
                goto invalid_friend;
            }
            continue;
invalid_friend:
            FUNC8(friend);
        }
        FUNC12(node->friends);
        node->friends = NULL;
    }
    // Count replicas for each node
    FUNC13(cluster_manager.nodes, &li);
    while ((ln = FUNC11(&li)) != NULL) {
        clusterManagerNode *n = ln->value;
        if (n->replicate != NULL) {
            clusterManagerNode *master = FUNC3(n->replicate);
            if (master == NULL) {
                FUNC2("*** WARNING: %s:%d claims to be "
                                      "slave of unknown node ID %s.\n",
                                      n->ip, n->port, n->replicate);
            } else master->replicas_count++;
        }
    }
    return 1;
}