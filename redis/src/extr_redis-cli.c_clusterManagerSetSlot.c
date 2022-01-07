
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ type; int len; int str; } ;
typedef TYPE_1__ redisReply ;
struct TYPE_10__ {scalar_t__ name; } ;
typedef TYPE_2__ clusterManagerNode ;


 TYPE_1__* CLUSTER_MANAGER_COMMAND (TYPE_2__*,char*,int,char const*,char*) ;
 int CLUSTER_MANAGER_PRINT_REPLY_ERROR (TYPE_2__*,int ) ;
 scalar_t__ REDIS_REPLY_ERROR ;
 int freeReplyObject (TYPE_1__*) ;
 int strcpy (char*,int ) ;
 char* zmalloc (int) ;

__attribute__((used)) static int clusterManagerSetSlot(clusterManagerNode *node1,
                                 clusterManagerNode *node2,
                                 int slot, const char *status, char **err) {
    redisReply *reply = CLUSTER_MANAGER_COMMAND(node1, "CLUSTER "
                                                "SETSLOT %d %s %s",
                                                slot, status,
                                                (char *) node2->name);
    if (err != ((void*)0)) *err = ((void*)0);
    if (!reply) return 0;
    int success = 1;
    if (reply->type == REDIS_REPLY_ERROR) {
        success = 0;
        if (err != ((void*)0)) {
            *err = zmalloc((reply->len + 1) * sizeof(char));
            strcpy(*err, reply->str);
        } else CLUSTER_MANAGER_PRINT_REPLY_ERROR(node1, reply->str);
        goto cleanup;
    }
cleanup:
    freeReplyObject(reply);
    return success;
}
