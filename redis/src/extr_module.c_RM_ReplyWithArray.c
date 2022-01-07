
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int client ;
struct TYPE_4__ {int postponed_arrays_count; int * postponed_arrays; } ;
typedef TYPE_1__ RedisModuleCtx ;


 int REDISMODULE_OK ;
 long REDISMODULE_POSTPONED_ARRAY_LEN ;
 int addReplyArrayLen (int *,long) ;
 int addReplyDeferredLen (int *) ;
 int * moduleGetReplyClient (TYPE_1__*) ;
 int * zrealloc (int *,int) ;

int RM_ReplyWithArray(RedisModuleCtx *ctx, long len) {
    client *c = moduleGetReplyClient(ctx);
    if (c == ((void*)0)) return REDISMODULE_OK;
    if (len == REDISMODULE_POSTPONED_ARRAY_LEN) {
        ctx->postponed_arrays = zrealloc(ctx->postponed_arrays,sizeof(void*)*
                (ctx->postponed_arrays_count+1));
        ctx->postponed_arrays[ctx->postponed_arrays_count] =
            addReplyDeferredLen(c);
        ctx->postponed_arrays_count++;
    } else {
        addReplyArrayLen(c,len);
    }
    return REDISMODULE_OK;
}
