
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int client ;
struct TYPE_6__ {size_t postponed_arrays_count; int * postponed_arrays; TYPE_1__* module; } ;
struct TYPE_5__ {int name; } ;
typedef TYPE_2__ RedisModuleCtx ;


 int LL_WARNING ;
 int * moduleGetReplyClient (TYPE_2__*) ;
 int serverLog (int ,char*,int ) ;
 int setDeferredArrayLen (int *,int ,long) ;
 int zfree (int *) ;

void RM_ReplySetArrayLength(RedisModuleCtx *ctx, long len) {
    client *c = moduleGetReplyClient(ctx);
    if (c == ((void*)0)) return;
    if (ctx->postponed_arrays_count == 0) {
        serverLog(LL_WARNING,
            "API misuse detected in module %s: "
            "RedisModule_ReplySetArrayLength() called without previous "
            "RedisModule_ReplyWithArray(ctx,REDISMODULE_POSTPONED_ARRAY_LEN) "
            "call.", ctx->module->name);
            return;
    }
    ctx->postponed_arrays_count--;
    setDeferredArrayLen(c,
            ctx->postponed_arrays[ctx->postponed_arrays_count],
            len);
    if (ctx->postponed_arrays_count == 0) {
        zfree(ctx->postponed_arrays);
        ctx->postponed_arrays = ((void*)0);
    }
}
