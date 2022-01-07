
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_28__ TYPE_7__ ;
typedef struct TYPE_27__ TYPE_4__ ;
typedef struct TYPE_26__ TYPE_3__ ;
typedef struct TYPE_25__ TYPE_2__ ;
typedef struct TYPE_24__ TYPE_1__ ;


struct TYPE_25__ {scalar_t__ type; int len; char* str; size_t elements; } ;
typedef TYPE_2__ redisReply ;
struct TYPE_26__ {char* value; } ;
typedef TYPE_3__ listNode ;
typedef int listIter ;
typedef int list ;
struct TYPE_27__ {int port; int ip; } ;
typedef TYPE_4__ clusterManagerNode ;
struct TYPE_24__ {int flags; } ;
struct TYPE_28__ {TYPE_1__ cluster_manager_command; } ;


 int CLUSTER_MANAGER_CMD_FLAG_FIX ;
 int CLUSTER_MANAGER_CMD_FLAG_REPLACE ;
 TYPE_2__* CLUSTER_MANAGER_COMMAND (TYPE_4__*,char*,int,int) ;
 int CLUSTER_MANAGER_PRINT_REPLY_ERROR (TYPE_4__*,char*) ;
 scalar_t__ REDIS_REPLY_ARRAY ;
 scalar_t__ REDIS_REPLY_ERROR ;
 int assert (int) ;
 int clusterManagerCompareKeysValues (TYPE_4__*,TYPE_4__*,TYPE_2__*,int *) ;
 TYPE_4__* clusterManagerGetSlotOwner (TYPE_4__*,int,char**) ;
 int clusterManagerLogErr (char*,...) ;
 int clusterManagerLogWarn (char*,...) ;
 TYPE_2__* clusterManagerMigrateKeysInReply (TYPE_4__*,TYPE_4__*,TYPE_2__*,int,int,char*) ;
 int clusterManagerSetSlot (TYPE_4__*,TYPE_4__*,int,char*,int *) ;
 TYPE_7__ config ;
 int fflush (int ) ;
 int freeReplyObject (TYPE_2__*) ;
 int * listCreate () ;
 scalar_t__ listLength (int *) ;
 TYPE_3__* listNext (int *) ;
 int listRelease (int *) ;
 int listRewind (int *,int *) ;
 int printf (char*,...) ;
 int stdout ;
 int strcpy (char*,char*) ;
 int * strstr (char*,char*) ;
 int zfree (char*) ;
 char* zmalloc (int) ;

__attribute__((used)) static int clusterManagerMigrateKeysInSlot(clusterManagerNode *source,
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
        char *dots = ((void*)0);
        redisReply *reply = ((void*)0), *migrate_reply = ((void*)0);
        reply = CLUSTER_MANAGER_COMMAND(source, "CLUSTER "
                                        "GETKEYSINSLOT %d %d", slot,
                                        pipeline);
        success = (reply != ((void*)0));
        if (!success) return 0;
        if (reply->type == REDIS_REPLY_ERROR) {
            success = 0;
            if (err != ((void*)0)) {
                *err = zmalloc((reply->len + 1) * sizeof(char));
                strcpy(*err, reply->str);
                CLUSTER_MANAGER_PRINT_REPLY_ERROR(source, *err);
            }
            goto next;
        }
        assert(reply->type == REDIS_REPLY_ARRAY);
        size_t count = reply->elements;
        if (count == 0) {
            freeReplyObject(reply);
            break;
        }
        if (verbose) dots = zmalloc((count+1) * sizeof(char));

        migrate_reply = clusterManagerMigrateKeysInReply(source, target,
                                                         reply, 0, timeout,
                                                         dots);
        if (migrate_reply == ((void*)0)) goto next;
        if (migrate_reply->type == REDIS_REPLY_ERROR) {
            int is_busy = strstr(migrate_reply->str, "BUSYKEY") != ((void*)0);
            int not_served = 0;
            if (!is_busy) {


                char *get_owner_err = ((void*)0);
                clusterManagerNode *served_by =
                    clusterManagerGetSlotOwner(source, slot, &get_owner_err);
                if (!served_by) {
                    if (get_owner_err == ((void*)0)) not_served = 1;
                    else {
                        CLUSTER_MANAGER_PRINT_REPLY_ERROR(source,
                                                          get_owner_err);
                        zfree(get_owner_err);
                    }
                }
            }

            if (is_busy || not_served) {


                if (do_fix && not_served) {
                    clusterManagerLogWarn("*** Slot was not served, setting "
                                          "owner to node %s:%d.\n",
                                          target->ip, target->port);
                    clusterManagerSetSlot(source, target, slot, "node", ((void*)0));
                }
                if (is_busy) {
                    clusterManagerLogWarn("\n*** Target key exists\n");
                    if (!do_replace) {
                        clusterManagerLogWarn("*** Checking key values on "
                                              "both nodes...\n");
                        list *diffs = listCreate();
                        success = clusterManagerCompareKeysValues(source,
                            target, reply, diffs);
                        if (!success) {
                            clusterManagerLogErr("*** Value check failed!\n");
                            listRelease(diffs);
                            goto next;
                        }
                        if (listLength(diffs) > 0) {
                            success = 0;
                            clusterManagerLogErr(
                                "*** Found %d key(s) in both source node and "
                                "target node having different values.\n"
                                "    Source node: %s:%d\n"
                                "    Target node: %s:%d\n"
                                "    Keys(s):\n",
                                listLength(diffs),
                                source->ip, source->port,
                                target->ip, target->port);
                            listIter dli;
                            listNode *dln;
                            listRewind(diffs, &dli);
                            while((dln = listNext(&dli)) != ((void*)0)) {
                                char *k = dln->value;
                                clusterManagerLogErr("    - %s\n", k);
                            }
                            clusterManagerLogErr("Please fix the above key(s) "
                                                 "manually and try again "
                                                 "or relaunch the command \n"
                                                 "with --cluster-replace "
                                                 "option to force key "
                                                 "overriding.\n");
                            listRelease(diffs);
                            goto next;
                        }
                        listRelease(diffs);
                    }
                    clusterManagerLogWarn("*** Replacing target keys...\n");
                }
                freeReplyObject(migrate_reply);
                migrate_reply = clusterManagerMigrateKeysInReply(source,
                                                                 target,
                                                                 reply,
                                                                 is_busy,
                                                                 timeout,
                                                                 ((void*)0));
                success = (migrate_reply != ((void*)0) &&
                           migrate_reply->type != REDIS_REPLY_ERROR);
            } else success = 0;
            if (!success) {
                if (migrate_reply != ((void*)0)) {
                    if (err) {
                        *err = zmalloc((migrate_reply->len + 1) * sizeof(char));
                        strcpy(*err, migrate_reply->str);
                    }
                    printf("\n");
                    CLUSTER_MANAGER_PRINT_REPLY_ERROR(source,
                                                      migrate_reply->str);
                }
                goto next;
            }
        }
        if (verbose) {
            printf("%s", dots);
            fflush(stdout);
        }
next:
        if (reply != ((void*)0)) freeReplyObject(reply);
        if (migrate_reply != ((void*)0)) freeReplyObject(migrate_reply);
        if (dots) zfree(dots);
        if (!success) break;
    }
    return success;
}
