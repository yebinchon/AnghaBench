
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {int dirty; } ;
struct TYPE_8__ {TYPE_2__* client; } ;
struct TYPE_7__ {int argc; int argv; TYPE_1__* db; int cmd; } ;
struct TYPE_6__ {int id; } ;
typedef TYPE_3__ RedisModuleCtx ;


 int PROPAGATE_AOF ;
 int PROPAGATE_REPL ;
 int REDISMODULE_OK ;
 int alsoPropagate (int ,int ,int ,int ,int) ;
 TYPE_4__ server ;

int RM_ReplicateVerbatim(RedisModuleCtx *ctx) {
    alsoPropagate(ctx->client->cmd,ctx->client->db->id,
        ctx->client->argv,ctx->client->argc,
        PROPAGATE_AOF|PROPAGATE_REPL);
    server.dirty++;
    return REDISMODULE_OK;
}
