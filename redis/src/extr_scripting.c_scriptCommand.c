
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_7__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


typedef int * sds ;
struct TYPE_20__ {int argc; int flags; TYPE_7__** argv; } ;
typedef TYPE_2__ client ;
struct TYPE_23__ {int ptr; } ;
struct TYPE_22__ {int lua_kill; scalar_t__ lua_write_dirty; TYPE_1__* lua_caller; int lua; int lua_scripts; int dirty; } ;
struct TYPE_21__ {int ok; int czero; int cone; } ;
struct TYPE_19__ {int flags; } ;


 int CLIENT_LUA_DEBUG_SYNC ;
 int CLIENT_MASTER ;
 int PROPAGATE_AOF ;
 int PROPAGATE_REPL ;
 int addReply (TYPE_2__*,int ) ;
 int addReplyArrayLen (TYPE_2__*,int) ;
 int addReplyBulkCBuffer (TYPE_2__*,int *,int) ;
 int addReplyError (TYPE_2__*,char*) ;
 int addReplyHelp (TYPE_2__*,char const**) ;
 int addReplySds (TYPE_2__*,int ) ;
 int addReplySubcommandSyntaxError (TYPE_2__*) ;
 scalar_t__ clientHasPendingReplies (TYPE_2__*) ;
 scalar_t__ dictFind (int ,int ) ;
 int forceCommandPropagation (TYPE_2__*,int) ;
 int ldbDisable (TYPE_2__*) ;
 int ldbEnable (TYPE_2__*) ;
 int * luaCreateFunction (TYPE_2__*,int ,TYPE_7__*) ;
 int replicationScriptCacheFlush () ;
 int scriptingReset () ;
 int sdsnew (char*) ;
 TYPE_4__ server ;
 TYPE_3__ shared ;
 int strcasecmp (int ,char*) ;

void scriptCommand(client *c) {
    if (c->argc == 2 && !strcasecmp(c->argv[1]->ptr,"help")) {
        const char *help[] = {
"DEBUG (yes|sync|no) -- Set the debug mode for subsequent scripts executed.",
"EXISTS <sha1> [<sha1> ...] -- Return information about the existence of the scripts in the script cache.",
"FLUSH -- Flush the Lua scripts cache. Very dangerous on replicas.",
"KILL -- Kill the currently executing Lua script.",
"LOAD <script> -- Load a script into the scripts cache, without executing it.",
((void*)0)
        };
        addReplyHelp(c, help);
    } else if (c->argc == 2 && !strcasecmp(c->argv[1]->ptr,"flush")) {
        scriptingReset();
        addReply(c,shared.ok);
        replicationScriptCacheFlush();
        server.dirty++;
    } else if (c->argc >= 2 && !strcasecmp(c->argv[1]->ptr,"exists")) {
        int j;

        addReplyArrayLen(c, c->argc-2);
        for (j = 2; j < c->argc; j++) {
            if (dictFind(server.lua_scripts,c->argv[j]->ptr))
                addReply(c,shared.cone);
            else
                addReply(c,shared.czero);
        }
    } else if (c->argc == 3 && !strcasecmp(c->argv[1]->ptr,"load")) {
        sds sha = luaCreateFunction(c,server.lua,c->argv[2]);
        if (sha == ((void*)0)) return;
        addReplyBulkCBuffer(c,sha,40);
        forceCommandPropagation(c,PROPAGATE_REPL|PROPAGATE_AOF);
    } else if (c->argc == 2 && !strcasecmp(c->argv[1]->ptr,"kill")) {
        if (server.lua_caller == ((void*)0)) {
            addReplySds(c,sdsnew("-NOTBUSY No scripts in execution right now.\r\n"));
        } else if (server.lua_caller->flags & CLIENT_MASTER) {
            addReplySds(c,sdsnew("-UNKILLABLE The busy script was sent by a master instance in the context of replication and cannot be killed.\r\n"));
        } else if (server.lua_write_dirty) {
            addReplySds(c,sdsnew("-UNKILLABLE Sorry the script already executed write commands against the dataset. You can either wait the script termination or kill the server in a hard way using the SHUTDOWN NOSAVE command.\r\n"));
        } else {
            server.lua_kill = 1;
            addReply(c,shared.ok);
        }
    } else if (c->argc == 3 && !strcasecmp(c->argv[1]->ptr,"debug")) {
        if (clientHasPendingReplies(c)) {
            addReplyError(c,"SCRIPT DEBUG must be called outside a pipeline");
            return;
        }
        if (!strcasecmp(c->argv[2]->ptr,"no")) {
            ldbDisable(c);
            addReply(c,shared.ok);
        } else if (!strcasecmp(c->argv[2]->ptr,"yes")) {
            ldbEnable(c);
            addReply(c,shared.ok);
        } else if (!strcasecmp(c->argv[2]->ptr,"sync")) {
            ldbEnable(c);
            addReply(c,shared.ok);
            c->flags |= CLIENT_LUA_DEBUG_SYNC;
        } else {
            addReplyError(c,"Use SCRIPT DEBUG yes/sync/no");
            return;
        }
    } else {
        addReplySubcommandSyntaxError(c);
    }
}
