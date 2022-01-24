#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_28__   TYPE_7__ ;
typedef  struct TYPE_27__   TYPE_4__ ;
typedef  struct TYPE_26__   TYPE_3__ ;
typedef  struct TYPE_25__   TYPE_2__ ;
typedef  struct TYPE_24__   TYPE_1__ ;

/* Type definitions */
struct TYPE_25__ {scalar_t__ type; int len; char* str; size_t elements; } ;
typedef  TYPE_2__ redisReply ;
struct TYPE_26__ {char* value; } ;
typedef  TYPE_3__ listNode ;
typedef  int /*<<< orphan*/  listIter ;
typedef  int /*<<< orphan*/  list ;
struct TYPE_27__ {int /*<<< orphan*/  port; int /*<<< orphan*/  ip; } ;
typedef  TYPE_4__ clusterManagerNode ;
struct TYPE_24__ {int flags; } ;
struct TYPE_28__ {TYPE_1__ cluster_manager_command; } ;

/* Variables and functions */
 int CLUSTER_MANAGER_CMD_FLAG_FIX ; 
 int CLUSTER_MANAGER_CMD_FLAG_REPLACE ; 
 TYPE_2__* FUNC0 (TYPE_4__*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,char*) ; 
 scalar_t__ REDIS_REPLY_ARRAY ; 
 scalar_t__ REDIS_REPLY_ERROR ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (TYPE_4__*,TYPE_4__*,TYPE_2__*,int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC4 (TYPE_4__*,int,char**) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 TYPE_2__* FUNC7 (TYPE_4__*,TYPE_4__*,TYPE_2__*,int,int,char*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*,TYPE_4__*,int,char*,int /*<<< orphan*/ *) ; 
 TYPE_7__ config ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC11 () ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (char*,...) ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC17 (char*,char*) ; 
 int /*<<< orphan*/ * FUNC18 (char*,char*) ; 
 int /*<<< orphan*/  FUNC19 (char*) ; 
 char* FUNC20 (int) ; 

__attribute__((used)) static int FUNC21(clusterManagerNode *source,
                                           clusterManagerNode *target,
                                           int slot, int timeout,
                                           int pipeline, int verbose,
                                           char **err)
{
    int success = 1;
    int do_fix = config.cluster_manager_command.flags &
                 CLUSTER_MANAGER_CMD_FLAG_FIX;
    int do_replace = config.cluster_manager_command.flags &
                     CLUSTER_MANAGER_CMD_FLAG_REPLACE;
    while (1) {
        char *dots = NULL;
        redisReply *reply = NULL, *migrate_reply = NULL;
        reply = FUNC0(source, "CLUSTER "
                                        "GETKEYSINSLOT %d %d", slot,
                                        pipeline);
        success = (reply != NULL);
        if (!success) return 0;
        if (reply->type == REDIS_REPLY_ERROR) {
            success = 0;
            if (err != NULL) {
                *err = FUNC20((reply->len + 1) * sizeof(char));
                FUNC17(*err, reply->str);
                FUNC1(source, *err);
            }
            goto next;
        }
        FUNC2(reply->type == REDIS_REPLY_ARRAY);
        size_t count = reply->elements;
        if (count == 0) {
            FUNC10(reply);
            break;
        }
        if (verbose) dots = FUNC20((count+1) * sizeof(char));
        /* Calling MIGRATE command. */
        migrate_reply = FUNC7(source, target,
                                                         reply, 0, timeout,
                                                         dots);
        if (migrate_reply == NULL) goto next;
        if (migrate_reply->type == REDIS_REPLY_ERROR) {
            int is_busy = FUNC18(migrate_reply->str, "BUSYKEY") != NULL;
            int not_served = 0;
            if (!is_busy) {
                /* Check if the slot is unassigned (not served) in the
                 * source node's configuration. */
                char *get_owner_err = NULL;
                clusterManagerNode *served_by =
                    FUNC4(source, slot, &get_owner_err);
                if (!served_by) {
                    if (get_owner_err == NULL) not_served = 1;
                    else {
                        FUNC1(source,
                                                          get_owner_err);
                        FUNC19(get_owner_err);
                    }
                }
            }
            /* Try to handle errors. */
            if (is_busy || not_served) {
                /* If the key's slot is not served, try to assign slot
                 * to the target node. */
                if (do_fix && not_served) {
                    FUNC6("*** Slot was not served, setting "
                                          "owner to node %s:%d.\n",
                                          target->ip, target->port);
                    FUNC8(source, target, slot, "node", NULL);
                }
                /* If the key already exists in the target node (BUSYKEY),
                 * check whether its value is the same in both nodes.
                 * In case of equal values, retry migration with the
                 * REPLACE option.
                 * In case of different values:
                 *  - If the migration is requested by the fix command, stop
                 *    and warn the user.
                 *  - In other cases (ie. reshard), proceed only if the user
                 *    launched the command with the --cluster-replace option.*/
                if (is_busy) {
                    FUNC6("\n*** Target key exists\n");
                    if (!do_replace) {
                        FUNC6("*** Checking key values on "
                                              "both nodes...\n");
                        list *diffs = FUNC11();
                        success = FUNC3(source,
                            target, reply, diffs);
                        if (!success) {
                            FUNC5("*** Value check failed!\n");
                            FUNC14(diffs);
                            goto next;
                        }
                        if (FUNC12(diffs) > 0) {
                            success = 0;
                            FUNC5(
                                "*** Found %d key(s) in both source node and "
                                "target node having different values.\n"
                                "    Source node: %s:%d\n"
                                "    Target node: %s:%d\n"
                                "    Keys(s):\n",
                                FUNC12(diffs),
                                source->ip, source->port,
                                target->ip, target->port);
                            listIter dli;
                            listNode *dln;
                            FUNC15(diffs, &dli);
                            while((dln = FUNC13(&dli)) != NULL) {
                                char *k = dln->value;
                                FUNC5("    - %s\n", k);
                            }
                            FUNC5("Please fix the above key(s) "
                                                 "manually and try again "
                                                 "or relaunch the command \n"
                                                 "with --cluster-replace "
                                                 "option to force key "
                                                 "overriding.\n");
                            FUNC14(diffs);
                            goto next;
                        }
                        FUNC14(diffs);
                    }
                    FUNC6("*** Replacing target keys...\n");
                }
                FUNC10(migrate_reply);
                migrate_reply = FUNC7(source,
                                                                 target,
                                                                 reply,
                                                                 is_busy,
                                                                 timeout,
                                                                 NULL);
                success = (migrate_reply != NULL &&
                           migrate_reply->type != REDIS_REPLY_ERROR);
            } else success = 0;
            if (!success) {
                if (migrate_reply != NULL) {
                    if (err) {
                        *err = FUNC20((migrate_reply->len + 1) * sizeof(char));
                        FUNC17(*err, migrate_reply->str);
                    }
                    FUNC16("\n");
                    FUNC1(source,
                                                      migrate_reply->str);
                }
                goto next;
            }
        }
        if (verbose) {
            FUNC16("%s", dots);
            FUNC9(stdout);
        }
next:
        if (reply != NULL) FUNC10(reply);
        if (migrate_reply != NULL) FUNC10(migrate_reply);
        if (dots) FUNC19(dots);
        if (!success) break;
    }
    return success;
}