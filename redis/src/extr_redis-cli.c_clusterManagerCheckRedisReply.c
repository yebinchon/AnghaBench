
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ type; int len; int str; } ;
typedef TYPE_1__ redisReply ;
typedef int clusterManagerNode ;


 int CLUSTER_MANAGER_PRINT_REPLY_ERROR (int *,int ) ;
 scalar_t__ REDIS_REPLY_ERROR ;
 int strcpy (char*,int ) ;
 char* zmalloc (int) ;

__attribute__((used)) static int clusterManagerCheckRedisReply(clusterManagerNode *n,
                                         redisReply *r, char **err)
{
    int is_err = 0;
    if (!r || (is_err = (r->type == REDIS_REPLY_ERROR))) {
        if (is_err) {
            if (err != ((void*)0)) {
                *err = zmalloc((r->len + 1) * sizeof(char));
                strcpy(*err, r->str);
            } else CLUSTER_MANAGER_PRINT_REPLY_ERROR(n, r->str);
        }
        return 0;
    }
    return 1;
}
