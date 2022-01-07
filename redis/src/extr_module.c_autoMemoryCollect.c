
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int type; void* ptr; } ;
struct TYPE_4__ {int flags; int amqueue_used; scalar_t__ amqueue_len; TYPE_2__* amqueue; } ;
typedef TYPE_1__ RedisModuleCtx ;






 int REDISMODULE_CTX_AUTO_MEMORY ;
 int RM_CloseKey (void*) ;
 int RM_FreeCallReply (void*) ;
 int RM_FreeDict (int *,void*) ;
 int decrRefCount (void*) ;
 int zfree (TYPE_2__*) ;

void autoMemoryCollect(RedisModuleCtx *ctx) {
    if (!(ctx->flags & REDISMODULE_CTX_AUTO_MEMORY)) return;



    ctx->flags &= ~REDISMODULE_CTX_AUTO_MEMORY;
    int j;
    for (j = 0; j < ctx->amqueue_used; j++) {
        void *ptr = ctx->amqueue[j].ptr;
        switch(ctx->amqueue[j].type) {
        case 128: decrRefCount(ptr); break;
        case 129: RM_FreeCallReply(ptr); break;
        case 130: RM_CloseKey(ptr); break;
        case 131: RM_FreeDict(((void*)0),ptr); break;
        }
    }
    ctx->flags |= REDISMODULE_CTX_AUTO_MEMORY;
    zfree(ctx->amqueue);
    ctx->amqueue = ((void*)0);
    ctx->amqueue_len = 0;
    ctx->amqueue_used = 0;
}
