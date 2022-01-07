
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int robj ;
struct TYPE_9__ {int target; int argc; int argv; int dbid; int cmd; } ;
typedef TYPE_2__ redisOp ;
struct TYPE_10__ {int flags; TYPE_1__* db; } ;
typedef TYPE_3__ client ;
struct TYPE_13__ {int numops; TYPE_2__* ops; } ;
struct TYPE_12__ {TYPE_6__ also_propagate; int execCommand; } ;
struct TYPE_11__ {int flags; TYPE_6__ saved_oparray; TYPE_3__* client; } ;
struct TYPE_8__ {int id; } ;
typedef TYPE_4__ RedisModuleCtx ;


 int CLIENT_LUA ;
 int PROPAGATE_AOF ;
 int PROPAGATE_REPL ;
 int REDISMODULE_CTX_MODULE_COMMAND_CALL ;
 int REDISMODULE_CTX_MULTI_EMITTED ;
 int alsoPropagate (int ,int ,int **,int,int) ;
 int * createStringObject (char*,int) ;
 int decrRefCount (int *) ;
 int propagate (int ,int ,int ,int ,int) ;
 int redisOpArrayFree (TYPE_6__*) ;
 TYPE_5__ server ;

void moduleHandlePropagationAfterCommandCallback(RedisModuleCtx *ctx) {
    client *c = ctx->client;



    if (!(ctx->flags & REDISMODULE_CTX_MULTI_EMITTED)) return;

    if (c->flags & CLIENT_LUA) return;



    robj *propargv[1];
    propargv[0] = createStringObject("EXEC",4);
    alsoPropagate(server.execCommand,c->db->id,propargv,1,
        PROPAGATE_AOF|PROPAGATE_REPL);
    decrRefCount(propargv[0]);





    if (!(ctx->flags & REDISMODULE_CTX_MODULE_COMMAND_CALL) &&
        server.also_propagate.numops)
    {
        for (int j = 0; j < server.also_propagate.numops; j++) {
            redisOp *rop = &server.also_propagate.ops[j];
            int target = rop->target;
            if (target)
                propagate(rop->cmd,rop->dbid,rop->argv,rop->argc,target);
        }
        redisOpArrayFree(&server.also_propagate);

        server.also_propagate = ctx->saved_oparray;
    }
}
