
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {long long* list; int length; } ;
typedef TYPE_1__ fsl_t ;
typedef int RedisModuleString ;
typedef int RedisModuleCtx ;


 scalar_t__ REDISMODULE_OK ;
 int REDISMODULE_READ ;
 int RedisModule_BlockClientOnKeys (int *,int ,int ,int ,long long,int **,int,void*) ;
 int RedisModule_ReplyWithError (int *,char*) ;
 int RedisModule_ReplyWithLongLong (int *,long long) ;
 scalar_t__ RedisModule_StringToLongLong (int *,long long*) ;
 int RedisModule_WrongArity (int *) ;
 int bpopgt_free_privdata ;
 int bpopgt_reply_callback ;
 int bpopgt_timeout_callback ;
 int get_fsl (int *,int *,int ,int ,TYPE_1__**,int) ;

int fsl_bpopgt(RedisModuleCtx *ctx, RedisModuleString **argv, int argc) {
    if (argc != 4)
        return RedisModule_WrongArity(ctx);

    long long gt;
    if (RedisModule_StringToLongLong(argv[2],&gt) != REDISMODULE_OK)
        return RedisModule_ReplyWithError(ctx,"ERR invalid integer");

    long long timeout;
    if (RedisModule_StringToLongLong(argv[3],&timeout) != REDISMODULE_OK || timeout < 0)
        return RedisModule_ReplyWithError(ctx,"ERR invalid timeout");

    fsl_t *fsl;
    if (!get_fsl(ctx, argv[1], REDISMODULE_READ, 0, &fsl, 1))
        return REDISMODULE_OK;

    if (!fsl || fsl->list[fsl->length-1] <= gt) {

        RedisModule_BlockClientOnKeys(ctx, bpopgt_reply_callback, bpopgt_timeout_callback,
                                      bpopgt_free_privdata, timeout, &argv[1], 1, (void*)gt);
    } else {
        RedisModule_ReplyWithLongLong(ctx, fsl->list[--fsl->length]);
    }

    return REDISMODULE_OK;
}
