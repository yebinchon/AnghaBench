
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int length; int * list; } ;
typedef TYPE_1__ fsl_t ;
typedef int RedisModuleString ;
typedef int RedisModuleCtx ;


 int REDISMODULE_ERR ;
 int REDISMODULE_NOT_USED (int) ;
 int REDISMODULE_OK ;
 int REDISMODULE_READ ;
 int * RedisModule_GetBlockedClientReadyKey (int *) ;
 int RedisModule_ReplyWithArray (int *,int) ;
 int RedisModule_ReplyWithLongLong (int *,int ) ;
 int get_fsl (int *,int *,int ,int ,TYPE_1__**,int ) ;

int bpop2_reply_callback(RedisModuleCtx *ctx, RedisModuleString **argv, int argc) {
    REDISMODULE_NOT_USED(argv);
    REDISMODULE_NOT_USED(argc);
    RedisModuleString *keyname = RedisModule_GetBlockedClientReadyKey(ctx);

    fsl_t *fsl;
    if (!get_fsl(ctx, keyname, REDISMODULE_READ, 0, &fsl, 0))
        return REDISMODULE_ERR;

    if (!fsl || fsl->length < 2)
        return REDISMODULE_ERR;

    RedisModule_ReplyWithArray(ctx, 2);
    RedisModule_ReplyWithLongLong(ctx, fsl->list[--fsl->length]);
    RedisModule_ReplyWithLongLong(ctx, fsl->list[--fsl->length]);
    return REDISMODULE_OK;
}
