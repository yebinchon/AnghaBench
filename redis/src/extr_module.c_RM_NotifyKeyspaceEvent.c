
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* client; } ;
struct TYPE_6__ {TYPE_1__* db; } ;
struct TYPE_5__ {int id; } ;
typedef int RedisModuleString ;
typedef TYPE_3__ RedisModuleCtx ;


 int REDISMODULE_ERR ;
 int REDISMODULE_OK ;
 int notifyKeyspaceEvent (int,char*,int *,int ) ;

int RM_NotifyKeyspaceEvent(RedisModuleCtx *ctx, int type, const char *event, RedisModuleString *key) {
    if (!ctx || !ctx->client)
        return REDISMODULE_ERR;
    notifyKeyspaceEvent(type, (char *)event, key, ctx->client->db->id);
    return REDISMODULE_OK;
}
