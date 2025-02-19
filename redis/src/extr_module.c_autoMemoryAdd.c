
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct AutoMemEntry {int dummy; } ;
struct TYPE_6__ {int type; void* ptr; } ;
struct TYPE_5__ {int flags; int amqueue_used; int amqueue_len; TYPE_2__* amqueue; } ;
typedef TYPE_1__ RedisModuleCtx ;


 int REDISMODULE_CTX_AUTO_MEMORY ;
 TYPE_2__* zrealloc (TYPE_2__*,int) ;

void autoMemoryAdd(RedisModuleCtx *ctx, int type, void *ptr) {
    if (!(ctx->flags & REDISMODULE_CTX_AUTO_MEMORY)) return;
    if (ctx->amqueue_used == ctx->amqueue_len) {
        ctx->amqueue_len *= 2;
        if (ctx->amqueue_len < 16) ctx->amqueue_len = 16;
        ctx->amqueue = zrealloc(ctx->amqueue,sizeof(struct AutoMemEntry)*ctx->amqueue_len);
    }
    ctx->amqueue[ctx->amqueue_used].type = type;
    ctx->amqueue[ctx->amqueue_used].ptr = ptr;
    ctx->amqueue_used++;
}
