
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ type; size_t elements; struct TYPE_7__** element; } ;
typedef TYPE_1__ redisReply ;
typedef int (* clusterManagerOnReplyError ) (TYPE_1__*,int *,size_t) ;
typedef int clusterManagerNode ;


 TYPE_1__* CLUSTER_MANAGER_COMMAND (int *,char*) ;
 int CLUSTER_MANAGER_PRINT_REPLY_ERROR (int *,char*) ;
 scalar_t__ REDIS_REPLY_ARRAY ;
 int clusterManagerCheckRedisReply (int *,TYPE_1__*,char**) ;
 int freeReplyObject (TYPE_1__*) ;
 int zfree (char*) ;

__attribute__((used)) static int clusterManagerExecTransaction(clusterManagerNode *node,
                                         clusterManagerOnReplyError onerror)
{
    redisReply *reply = CLUSTER_MANAGER_COMMAND(node, "EXEC");
    int success = clusterManagerCheckRedisReply(node, reply, ((void*)0));
    if (success) {
        if (reply->type != REDIS_REPLY_ARRAY) {
            success = 0;
            goto cleanup;
        }
        size_t i;
        for (i = 0; i < reply->elements; i++) {
            redisReply *r = reply->element[i];
            char *err = ((void*)0);
            success = clusterManagerCheckRedisReply(node, r, &err);
            if (!success && onerror) success = onerror(r, node, i);
            if (err) {
                if (!success)
                    CLUSTER_MANAGER_PRINT_REPLY_ERROR(node, err);
                zfree(err);
            }
            if (!success) break;
        }
    }
cleanup:
    if (reply) freeReplyObject(reply);
    return success;
}
