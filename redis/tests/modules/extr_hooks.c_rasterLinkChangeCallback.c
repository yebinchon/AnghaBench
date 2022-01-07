
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef void* RedisModuleEvent ;
typedef int RedisModuleCtx ;


 int LogNumericEvent (int *,char*,int ) ;
 int REDISMODULE_NOT_USED (void*) ;
 scalar_t__ REDISMODULE_SUBEVENT_MASTER_LINK_UP ;

void rasterLinkChangeCallback(RedisModuleCtx *ctx, RedisModuleEvent e, uint64_t sub, void *data)
{
    REDISMODULE_NOT_USED(e);
    REDISMODULE_NOT_USED(data);

    char *keyname = (sub == REDISMODULE_SUBEVENT_MASTER_LINK_UP) ?
        "masterlink-up" : "masterlink-down";
    LogNumericEvent(ctx, keyname, 0);
}
