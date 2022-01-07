
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int length; int * list; } ;
typedef TYPE_1__ fsl_t ;
typedef int RedisModuleString ;
typedef int RedisModuleCtx ;


 scalar_t__ REDISMODULE_OK ;
 int REDISMODULE_READ ;
 int RedisModule_BlockClientOnKeys (int *,int ,int ,int *,long long,int **,int,int *) ;
 int RedisModule_ReplyWithArray (int *,int) ;
 int RedisModule_ReplyWithError (int *,char*) ;
 int RedisModule_ReplyWithLongLong (int *,int ) ;
 scalar_t__ RedisModule_StringToLongLong (int *,long long*) ;
 int RedisModule_WrongArity (int *) ;
 int bpop2_reply_callback ;
 int bpop2_timeout_callback ;
 int get_fsl (int *,int *,int ,int ,TYPE_1__**,int) ;

int fsl_bpop2(RedisModuleCtx *ctx, RedisModuleString **argv, int argc) {
    if (argc != 3)
        return RedisModule_WrongArity(ctx);

    long long timeout;
    if (RedisModule_StringToLongLong(argv[2],&timeout) != REDISMODULE_OK || timeout < 0)
        return RedisModule_ReplyWithError(ctx,"ERR invalid timeout");

    fsl_t *fsl;
    if (!get_fsl(ctx, argv[1], REDISMODULE_READ, 0, &fsl, 1))
        return REDISMODULE_OK;

    if (!fsl || fsl->length < 2) {

        RedisModule_BlockClientOnKeys(ctx, bpop2_reply_callback, bpop2_timeout_callback,
                                      ((void*)0), timeout, &argv[1], 1, ((void*)0));
    } else {
        RedisModule_ReplyWithArray(ctx, 2);
        RedisModule_ReplyWithLongLong(ctx, fsl->list[--fsl->length]);
        RedisModule_ReplyWithLongLong(ctx, fsl->list[--fsl->length]);
    }

    return REDISMODULE_OK;
}
