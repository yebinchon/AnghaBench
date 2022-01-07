
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ type; int len; int str; } ;
typedef TYPE_1__ redisReply ;
typedef int clusterManagerNode ;


 TYPE_1__* CLUSTER_MANAGER_COMMAND (int *,char*) ;
 scalar_t__ REDIS_REPLY_ERROR ;
 int freeReplyObject (TYPE_1__*) ;
 int strcpy (char*,int ) ;
 char* zmalloc (int) ;

__attribute__((used)) static redisReply *clusterManagerGetNodeRedisInfo(clusterManagerNode *node,
                                                  char **err)
{
    redisReply *info = CLUSTER_MANAGER_COMMAND(node, "INFO");
    if (err != ((void*)0)) *err = ((void*)0);
    if (info == ((void*)0)) return ((void*)0);
    if (info->type == REDIS_REPLY_ERROR) {
        if (err != ((void*)0)) {
            *err = zmalloc((info->len + 1) * sizeof(char));
            strcpy(*err, info->str);
        }
        freeReplyObject(info);
        return ((void*)0);
    }
    return info;
}
