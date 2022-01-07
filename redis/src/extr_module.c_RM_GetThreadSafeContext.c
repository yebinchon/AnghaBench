
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int empty ;
struct TYPE_15__ {int id; } ;
struct TYPE_14__ {TYPE_1__* client; int dbid; int module; } ;
struct TYPE_13__ {TYPE_5__* client; int flags; int module; TYPE_3__* blocked_client; } ;
struct TYPE_12__ {int id; } ;
typedef TYPE_2__ RedisModuleCtx ;
typedef TYPE_3__ RedisModuleBlockedClient ;


 TYPE_2__ REDISMODULE_CTX_INIT ;
 int REDISMODULE_CTX_THREAD_SAFE ;
 TYPE_5__* createClient (int *) ;
 int memcpy (TYPE_2__*,TYPE_2__*,int) ;
 int selectDb (TYPE_5__*,int ) ;
 TYPE_2__* zmalloc (int) ;

RedisModuleCtx *RM_GetThreadSafeContext(RedisModuleBlockedClient *bc) {
    RedisModuleCtx *ctx = zmalloc(sizeof(*ctx));
    RedisModuleCtx empty = REDISMODULE_CTX_INIT;
    memcpy(ctx,&empty,sizeof(empty));
    if (bc) {
        ctx->blocked_client = bc;
        ctx->module = bc->module;
    }
    ctx->flags |= REDISMODULE_CTX_THREAD_SAFE;




    ctx->client = createClient(((void*)0));
    if (bc) {
        selectDb(ctx->client,bc->dbid);
        if (bc->client) ctx->client->id = bc->client->id;
    }
    return ctx;
}
