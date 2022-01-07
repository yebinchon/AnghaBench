
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_8__ ;
typedef struct TYPE_22__ TYPE_7__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


struct TYPE_19__ {scalar_t__ type; int len; int str; } ;
typedef TYPE_2__ redisReply ;
struct TYPE_20__ {TYPE_4__* value; } ;
typedef TYPE_3__ listNode ;
typedef int listIter ;
struct TYPE_21__ {char* ip; int port; int flags; int* slots; int name; } ;
typedef TYPE_4__ clusterManagerNode ;
struct TYPE_23__ {int nodes; } ;
struct TYPE_18__ {int pipeline; int timeout; } ;
struct TYPE_22__ {TYPE_1__ cluster_manager_command; } ;


 TYPE_2__* CLUSTER_MANAGER_COMMAND (TYPE_4__*,char*,int,char*,int ) ;
 int CLUSTER_MANAGER_FLAG_SLAVE ;
 int CLUSTER_MANAGER_OPT_COLD ;
 int CLUSTER_MANAGER_OPT_QUIET ;
 int CLUSTER_MANAGER_OPT_UPDATE ;
 int CLUSTER_MANAGER_OPT_VERBOSE ;
 int CLUSTER_MANAGER_PRINT_REPLY_ERROR (TYPE_4__*,char*) ;
 scalar_t__ REDIS_REPLY_ERROR ;
 int clusterManagerMigrateKeysInSlot (TYPE_4__*,TYPE_4__*,int,int,int,int,char**) ;
 int clusterManagerSetSlot (TYPE_4__*,TYPE_4__*,int,char*,char**) ;
 TYPE_8__ cluster_manager ;
 TYPE_7__ config ;
 int fflush (int ) ;
 int freeReplyObject (TYPE_2__*) ;
 TYPE_3__* listNext (int *) ;
 int listRewind (int ,int *) ;
 int printf (char*,...) ;
 int stdout ;
 int strcpy (char*,int ) ;
 char* zmalloc (int) ;

__attribute__((used)) static int clusterManagerMoveSlot(clusterManagerNode *source,
                                  clusterManagerNode *target,
                                  int slot, int opts, char**err)
{
    if (!(opts & CLUSTER_MANAGER_OPT_QUIET)) {
        printf("Moving slot %d from %s:%d to %s:%d: ", slot, source->ip,
               source->port, target->ip, target->port);
        fflush(stdout);
    }
    if (err != ((void*)0)) *err = ((void*)0);
    int pipeline = config.cluster_manager_command.pipeline,
        timeout = config.cluster_manager_command.timeout,
        print_dots = (opts & CLUSTER_MANAGER_OPT_VERBOSE),
        option_cold = (opts & CLUSTER_MANAGER_OPT_COLD),
        success = 1;
    if (!option_cold) {
        success = clusterManagerSetSlot(target, source, slot,
                                        "importing", err);
        if (!success) return 0;
        success = clusterManagerSetSlot(source, target, slot,
                                        "migrating", err);
        if (!success) return 0;
    }
    success = clusterManagerMigrateKeysInSlot(source, target, slot, timeout,
                                              pipeline, print_dots, err);
    if (!(opts & CLUSTER_MANAGER_OPT_QUIET)) printf("\n");
    if (!success) return 0;

    if (!option_cold) {
        listIter li;
        listNode *ln;
        listRewind(cluster_manager.nodes, &li);
        while ((ln = listNext(&li)) != ((void*)0)) {
            clusterManagerNode *n = ln->value;
            if (n->flags & CLUSTER_MANAGER_FLAG_SLAVE) continue;
            redisReply *r = CLUSTER_MANAGER_COMMAND(n, "CLUSTER "
                                                    "SETSLOT %d %s %s",
                                                    slot, "node",
                                                    target->name);
            success = (r != ((void*)0));
            if (!success) return 0;
            if (r->type == REDIS_REPLY_ERROR) {
                success = 0;
                if (err != ((void*)0)) {
                    *err = zmalloc((r->len + 1) * sizeof(char));
                    strcpy(*err, r->str);
                    CLUSTER_MANAGER_PRINT_REPLY_ERROR(n, *err);
                }
            }
            freeReplyObject(r);
            if (!success) return 0;
        }
    }

    if (opts & CLUSTER_MANAGER_OPT_UPDATE) {
        source->slots[slot] = 0;
        target->slots[slot] = 1;
    }
    return 1;
}
