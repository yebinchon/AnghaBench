
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * ctx; } ;
typedef int RedisModuleCtx ;
typedef TYPE_1__ RedisModuleCallReply ;


 int REDISMODULE_AM_REPLY ;
 int RM_FreeCallReply_Rec (TYPE_1__*,int ) ;
 int autoMemoryFreed (int *,int ,TYPE_1__*) ;

void RM_FreeCallReply(RedisModuleCallReply *reply) {

    RedisModuleCtx *ctx = reply->ctx;
    RM_FreeCallReply_Rec(reply,0);
    autoMemoryFreed(ctx,REDISMODULE_AM_REPLY,reply);
}
