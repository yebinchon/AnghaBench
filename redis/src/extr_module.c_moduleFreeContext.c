
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int flags; int client; TYPE_1__* module; scalar_t__ postponed_arrays_count; scalar_t__ postponed_arrays; } ;
struct TYPE_7__ {int name; } ;
typedef TYPE_2__ RedisModuleCtx ;


 int LL_WARNING ;
 int REDISMODULE_CTX_THREAD_SAFE ;
 int autoMemoryCollect (TYPE_2__*) ;
 int freeClient (int ) ;
 int moduleHandlePropagationAfterCommandCallback (TYPE_2__*) ;
 int poolAllocRelease (TYPE_2__*) ;
 int serverLog (int ,char*,int ) ;
 int zfree (scalar_t__) ;

void moduleFreeContext(RedisModuleCtx *ctx) {
    moduleHandlePropagationAfterCommandCallback(ctx);
    autoMemoryCollect(ctx);
    poolAllocRelease(ctx);
    if (ctx->postponed_arrays) {
        zfree(ctx->postponed_arrays);
        ctx->postponed_arrays_count = 0;
        serverLog(LL_WARNING,
            "API misuse detected in module %s: "
            "RedisModule_ReplyWithArray(REDISMODULE_POSTPONED_ARRAY_LEN) "
            "not matched by the same number of RedisModule_SetReplyArrayLen() "
            "calls.",
            ctx->module->name);
    }
    if (ctx->flags & REDISMODULE_CTX_THREAD_SAFE) freeClient(ctx->client);
}
