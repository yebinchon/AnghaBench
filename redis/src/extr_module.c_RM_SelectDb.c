
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int client; } ;
typedef TYPE_1__ RedisModuleCtx ;


 int C_OK ;
 int REDISMODULE_ERR ;
 int REDISMODULE_OK ;
 int selectDb (int ,int) ;

int RM_SelectDb(RedisModuleCtx *ctx, int newid) {
    int retval = selectDb(ctx->client,newid);
    return (retval == C_OK) ? REDISMODULE_OK : REDISMODULE_ERR;
}
