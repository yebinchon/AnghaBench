
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int client ;
struct TYPE_2__ {int emptyarray; } ;
typedef int RedisModuleCtx ;


 int REDISMODULE_OK ;
 int addReply (int *,int ) ;
 int * moduleGetReplyClient (int *) ;
 TYPE_1__ shared ;

int RM_ReplyWithEmptyArray(RedisModuleCtx *ctx) {
    client *c = moduleGetReplyClient(ctx);
    if (c == ((void*)0)) return REDISMODULE_OK;
    addReply(c,shared.emptyarray);
    return REDISMODULE_OK;
}
