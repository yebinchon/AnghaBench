
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct redisCommand {int dummy; } ;
typedef int sds ;
typedef int redisGetKeysProc ;
struct TYPE_9__ {int arity; int flags; int firstkey; int lastkey; int keystep; int id; scalar_t__ calls; scalar_t__ microseconds; int * getkeys_proc; int proc; int name; } ;
struct TYPE_8__ {int orig_commands; int commands; scalar_t__ cluster_enabled; } ;
struct TYPE_7__ {TYPE_4__* rediscmd; int func; int module; } ;
struct TYPE_6__ {int module; } ;
typedef TYPE_1__ RedisModuleCtx ;
typedef TYPE_2__ RedisModuleCommandProxy ;
typedef int RedisModuleCmdFunc ;


 int ACLGetCommandID (int ) ;
 int CMD_MODULE ;
 int CMD_MODULE_NO_CLUSTER ;
 int REDISMODULE_ERR ;
 int REDISMODULE_OK ;
 int RedisModuleCommandDispatcher ;
 int commandFlagsFromString (char*) ;
 int dictAdd (int ,int ,TYPE_4__*) ;
 int * lookupCommand (int ) ;
 int sdsdup (int ) ;
 int sdsfree (int ) ;
 int sdsnew (char const*) ;
 TYPE_3__ server ;
 void* zmalloc (int) ;

int RM_CreateCommand(RedisModuleCtx *ctx, const char *name, RedisModuleCmdFunc cmdfunc, const char *strflags, int firstkey, int lastkey, int keystep) {
    int flags = strflags ? commandFlagsFromString((char*)strflags) : 0;
    if (flags == -1) return REDISMODULE_ERR;
    if ((flags & CMD_MODULE_NO_CLUSTER) && server.cluster_enabled)
        return REDISMODULE_ERR;

    struct redisCommand *rediscmd;
    RedisModuleCommandProxy *cp;
    sds cmdname = sdsnew(name);


    if (lookupCommand(cmdname) != ((void*)0)) {
        sdsfree(cmdname);
        return REDISMODULE_ERR;
    }
    cp = zmalloc(sizeof(*cp));
    cp->module = ctx->module;
    cp->func = cmdfunc;
    cp->rediscmd = zmalloc(sizeof(*rediscmd));
    cp->rediscmd->name = cmdname;
    cp->rediscmd->proc = RedisModuleCommandDispatcher;
    cp->rediscmd->arity = -1;
    cp->rediscmd->flags = flags | CMD_MODULE;
    cp->rediscmd->getkeys_proc = (redisGetKeysProc*)(unsigned long)cp;
    cp->rediscmd->firstkey = firstkey;
    cp->rediscmd->lastkey = lastkey;
    cp->rediscmd->keystep = keystep;
    cp->rediscmd->microseconds = 0;
    cp->rediscmd->calls = 0;
    dictAdd(server.commands,sdsdup(cmdname),cp->rediscmd);
    dictAdd(server.orig_commands,sdsdup(cmdname),cp->rediscmd);
    cp->rediscmd->id = ACLGetCommandID(cmdname);
    return REDISMODULE_OK;
}
