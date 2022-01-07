
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {int integer; } ;
typedef TYPE_1__ redisReply ;
struct TYPE_13__ {TYPE_3__* value; } ;
typedef TYPE_2__ listNode ;
typedef int listIter ;
typedef int list ;
struct TYPE_14__ {int flags; scalar_t__ replicate; } ;
typedef TYPE_3__ clusterManagerNode ;


 TYPE_1__* CLUSTER_MANAGER_COMMAND (TYPE_3__*,char*,int) ;
 int CLUSTER_MANAGER_FLAG_SLAVE ;
 int CLUSTER_MANAGER_PRINT_REPLY_ERROR (TYPE_3__*,char**) ;
 int clusterManagerCheckRedisReply (TYPE_3__*,TYPE_1__*,char**) ;
 int freeReplyObject (TYPE_1__*) ;
 TYPE_2__* listNext (int *) ;
 int listRewind (int *,int *) ;

__attribute__((used)) static clusterManagerNode * clusterManagerGetNodeWithMostKeysInSlot(list *nodes,
                                                                    int slot,
                                                                    char **err)
{
    clusterManagerNode *node = ((void*)0);
    int numkeys = 0;
    listIter li;
    listNode *ln;
    listRewind(nodes, &li);
    if (err) *err = ((void*)0);
    while ((ln = listNext(&li)) != ((void*)0)) {
        clusterManagerNode *n = ln->value;
        if (n->flags & CLUSTER_MANAGER_FLAG_SLAVE || n->replicate)
            continue;
        redisReply *r =
            CLUSTER_MANAGER_COMMAND(n, "CLUSTER COUNTKEYSINSLOT %d", slot);
        int success = clusterManagerCheckRedisReply(n, r, err);
        if (success) {
            if (r->integer > numkeys || node == ((void*)0)) {
                numkeys = r->integer;
                node = n;
            }
        }
        if (r != ((void*)0)) freeReplyObject(r);

        if (!success) {
            if (err != ((void*)0) && *err != ((void*)0))
                CLUSTER_MANAGER_PRINT_REPLY_ERROR(n, err);
            node = ((void*)0);
            break;
        }
    }
    return node;
}
