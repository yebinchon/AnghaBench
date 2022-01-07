
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ type; int len; int str; } ;
typedef TYPE_1__ redisReply ;
struct TYPE_9__ {scalar_t__ dirty; int * replicate; } ;
typedef TYPE_2__ clusterManagerNode ;


 TYPE_1__* CLUSTER_MANAGER_COMMAND (TYPE_2__*,char*,int *) ;
 scalar_t__ REDIS_REPLY_ERROR ;
 int clusterManagerAddSlots (TYPE_2__*,char**) ;
 int freeReplyObject (TYPE_1__*) ;
 int strcpy (char*,int ) ;
 char* zmalloc (int) ;

__attribute__((used)) static int clusterManagerFlushNodeConfig(clusterManagerNode *node, char **err) {
    if (!node->dirty) return 0;
    redisReply *reply = ((void*)0);
    int is_err = 0, success = 1;
    if (err != ((void*)0)) *err = ((void*)0);
    if (node->replicate != ((void*)0)) {
        reply = CLUSTER_MANAGER_COMMAND(node, "CLUSTER REPLICATE %s",
                                        node->replicate);
        if (reply == ((void*)0) || (is_err = (reply->type == REDIS_REPLY_ERROR))) {
            if (is_err && err != ((void*)0)) {
                *err = zmalloc((reply->len + 1) * sizeof(char));
                strcpy(*err, reply->str);
            }
            success = 0;




            goto cleanup;
        }
    } else {
        int added = clusterManagerAddSlots(node, err);
        if (!added || *err != ((void*)0)) success = 0;
    }
    node->dirty = 0;
cleanup:
    if (reply != ((void*)0)) freeReplyObject(reply);
    return success;
}
