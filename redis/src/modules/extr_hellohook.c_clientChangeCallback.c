
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_2__ {int port; int addr; int id; } ;
typedef int * RedisModuleEvent ;
typedef int RedisModuleCtx ;
typedef TYPE_1__ RedisModuleClientInfo ;


 int REDISMODULE_NOT_USED (int *) ;
 scalar_t__ REDISMODULE_SUBEVENT_CLIENT_CHANGE_CONNECTED ;
 int printf (char*,char*,int ,int ,int ) ;

void clientChangeCallback(RedisModuleCtx *ctx, RedisModuleEvent e, uint64_t sub, void *data)
{
    REDISMODULE_NOT_USED(ctx);
    REDISMODULE_NOT_USED(e);

    RedisModuleClientInfo *ci = data;
    printf("Client %s event for client #%llu %s:%d\n",
        (sub == REDISMODULE_SUBEVENT_CLIENT_CHANGE_CONNECTED) ?
            "connection" : "disconnection",
        ci->id,ci->addr,ci->port);
}
