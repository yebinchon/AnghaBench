#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_8__ ;
typedef  struct TYPE_22__   TYPE_7__ ;
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
struct TYPE_19__ {scalar_t__ type; int len; int /*<<< orphan*/  str; } ;
typedef  TYPE_2__ redisReply ;
struct TYPE_20__ {TYPE_4__* value; } ;
typedef  TYPE_3__ listNode ;
typedef  int /*<<< orphan*/  listIter ;
struct TYPE_21__ {char* ip; int port; int flags; int* slots; int /*<<< orphan*/  name; } ;
typedef  TYPE_4__ clusterManagerNode ;
struct TYPE_23__ {int /*<<< orphan*/  nodes; } ;
struct TYPE_18__ {int pipeline; int timeout; } ;
struct TYPE_22__ {TYPE_1__ cluster_manager_command; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (TYPE_4__*,char*,int,char*,int /*<<< orphan*/ ) ; 
 int CLUSTER_MANAGER_FLAG_SLAVE ; 
 int CLUSTER_MANAGER_OPT_COLD ; 
 int CLUSTER_MANAGER_OPT_QUIET ; 
 int CLUSTER_MANAGER_OPT_UPDATE ; 
 int CLUSTER_MANAGER_OPT_VERBOSE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,char*) ; 
 scalar_t__ REDIS_REPLY_ERROR ; 
 int FUNC2 (TYPE_4__*,TYPE_4__*,int,int,int,int,char**) ; 
 int FUNC3 (TYPE_4__*,TYPE_4__*,int,char*,char**) ; 
 TYPE_8__ cluster_manager ; 
 TYPE_7__ config ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 TYPE_3__* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ) ; 
 char* FUNC10 (int) ; 

__attribute__((used)) static int FUNC11(clusterManagerNode *source,
                                  clusterManagerNode *target,
                                  int slot, int opts,  char**err)
{
    if (!(opts & CLUSTER_MANAGER_OPT_QUIET)) {
        FUNC8("Moving slot %d from %s:%d to %s:%d: ", slot, source->ip,
               source->port, target->ip, target->port);
        FUNC4(stdout);
    }
    if (err != NULL) *err = NULL;
    int pipeline = config.cluster_manager_command.pipeline,
        timeout = config.cluster_manager_command.timeout,
        print_dots = (opts & CLUSTER_MANAGER_OPT_VERBOSE),
        option_cold = (opts & CLUSTER_MANAGER_OPT_COLD),
        success = 1;
    if (!option_cold) {
        success = FUNC3(target, source, slot,
                                        "importing", err);
        if (!success) return 0;
        success = FUNC3(source, target, slot,
                                        "migrating", err);
        if (!success) return 0;
    }
    success = FUNC2(source, target, slot, timeout,
                                              pipeline, print_dots, err);
    if (!(opts & CLUSTER_MANAGER_OPT_QUIET)) FUNC8("\n");
    if (!success) return 0;
    /* Set the new node as the owner of the slot in all the known nodes. */
    if (!option_cold) {
        listIter li;
        listNode *ln;
        FUNC7(cluster_manager.nodes, &li);
        while ((ln = FUNC6(&li)) != NULL) {
            clusterManagerNode *n = ln->value;
            if (n->flags & CLUSTER_MANAGER_FLAG_SLAVE) continue;
            redisReply *r = FUNC0(n, "CLUSTER "
                                                    "SETSLOT %d %s %s",
                                                    slot, "node",
                                                    target->name);
            success = (r != NULL);
            if (!success) return 0;
            if (r->type == REDIS_REPLY_ERROR) {
                success = 0;
                if (err != NULL) {
                    *err = FUNC10((r->len + 1) * sizeof(char));
                    FUNC9(*err, r->str);
                    FUNC1(n, *err);
                }
            }
            FUNC5(r);
            if (!success) return 0;
        }
    }
    /* Update the node logical config */
    if (opts & CLUSTER_MANAGER_OPT_UPDATE) {
        source->slots[slot] = 0;
        target->slots[slot] = 1;
    }
    return 1;
}