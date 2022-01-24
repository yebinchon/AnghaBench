#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct redisCommand {int dummy; } ;
typedef  int /*<<< orphan*/  sds ;
typedef  int /*<<< orphan*/  redisGetKeysProc ;
struct TYPE_9__ {int arity; int flags; int firstkey; int lastkey; int keystep; int /*<<< orphan*/  id; scalar_t__ calls; scalar_t__ microseconds; int /*<<< orphan*/ * getkeys_proc; int /*<<< orphan*/  proc; int /*<<< orphan*/  name; } ;
struct TYPE_8__ {int /*<<< orphan*/  orig_commands; int /*<<< orphan*/  commands; scalar_t__ cluster_enabled; } ;
struct TYPE_7__ {TYPE_4__* rediscmd; int /*<<< orphan*/  func; int /*<<< orphan*/  module; } ;
struct TYPE_6__ {int /*<<< orphan*/  module; } ;
typedef  TYPE_1__ RedisModuleCtx ;
typedef  TYPE_2__ RedisModuleCommandProxy ;
typedef  int /*<<< orphan*/  RedisModuleCmdFunc ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int CMD_MODULE ; 
 int CMD_MODULE_NO_CLUSTER ; 
 int REDISMODULE_ERR ; 
 int REDISMODULE_OK ; 
 int /*<<< orphan*/  RedisModuleCommandDispatcher ; 
 int FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_4__*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char const*) ; 
 TYPE_3__ server ; 
 void* FUNC7 (int) ; 

int FUNC8(RedisModuleCtx *ctx, const char *name, RedisModuleCmdFunc cmdfunc, const char *strflags, int firstkey, int lastkey, int keystep) {
    int flags = strflags ? FUNC1((char*)strflags) : 0;
    if (flags == -1) return REDISMODULE_ERR;
    if ((flags & CMD_MODULE_NO_CLUSTER) && server.cluster_enabled)
        return REDISMODULE_ERR;

    struct redisCommand *rediscmd;
    RedisModuleCommandProxy *cp;
    sds cmdname = FUNC6(name);

    /* Check if the command name is busy. */
    if (FUNC3(cmdname) != NULL) {
        FUNC5(cmdname);
        return REDISMODULE_ERR;
    }

    /* Create a command "proxy", which is a structure that is referenced
     * in the command table, so that the generic command that works as
     * binding between modules and Redis, can know what function to call
     * and what the module is.
     *
     * Note that we use the Redis command table 'getkeys_proc' in order to
     * pass a reference to the command proxy structure. */
    cp = FUNC7(sizeof(*cp));
    cp->module = ctx->module;
    cp->func = cmdfunc;
    cp->rediscmd = FUNC7(sizeof(*rediscmd));
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
    FUNC2(server.commands,FUNC4(cmdname),cp->rediscmd);
    FUNC2(server.orig_commands,FUNC4(cmdname),cp->rediscmd);
    cp->rediscmd->id = FUNC0(cmdname); /* ID used for ACL. */
    return REDISMODULE_OK;
}