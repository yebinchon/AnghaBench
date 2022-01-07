
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int ustime_t ;
struct redisCommand {int flags; int calls; int microseconds; int (* proc ) (TYPE_4__*) ;} ;
struct TYPE_14__ {int numops; TYPE_3__* ops; } ;
typedef TYPE_2__ redisOpArray ;
struct TYPE_15__ {int target; int argc; int argv; int dbid; struct redisCommand* cmd; } ;
typedef TYPE_3__ redisOp ;
struct TYPE_16__ {int flags; struct redisCommand* cmd; int argc; int argv; TYPE_1__* db; } ;
typedef TYPE_4__ client ;
struct TYPE_17__ {long long dirty; int ustime; int stat_numcommands; int call_depth; TYPE_4__* lua_caller; TYPE_2__ also_propagate; scalar_t__ loading; int monitors; } ;
struct TYPE_13__ {int id; } ;


 int CLIENT_FORCE_AOF ;
 int CLIENT_FORCE_REPL ;
 int CLIENT_LUA ;
 int CLIENT_PREVENT_AOF_PROP ;
 int CLIENT_PREVENT_PROP ;
 int CLIENT_PREVENT_REPL_PROP ;
 int CLIENT_TRACKING ;
 int CMD_ADMIN ;
 int CMD_CALL_PROPAGATE ;
 int CMD_CALL_PROPAGATE_AOF ;
 int CMD_CALL_PROPAGATE_REPL ;
 int CMD_CALL_SLOWLOG ;
 int CMD_CALL_STATS ;
 int CMD_FAST ;
 int CMD_MODULE ;
 int CMD_READONLY ;
 int CMD_SKIP_MONITOR ;
 int CMD_SKIP_SLOWLOG ;
 int PROPAGATE_AOF ;
 int PROPAGATE_NONE ;
 int PROPAGATE_REPL ;
 int latencyAddSampleIfNeeded (char*,int) ;
 scalar_t__ listLength (int ) ;
 int propagate (struct redisCommand*,int ,int ,int ,int) ;
 int redisOpArrayFree (TYPE_2__*) ;
 int redisOpArrayInit (TYPE_2__*) ;
 int replicationFeedMonitors (TYPE_4__*,int ,int ,int ,int ) ;
 TYPE_8__ server ;
 int slowlogPushEntryIfNeeded (TYPE_4__*,int ,int ,int) ;
 int stub1 (TYPE_4__*) ;
 int trackingRememberKeys (TYPE_4__*) ;
 int updateCachedTime (int ) ;
 int ustime () ;

void call(client *c, int flags) {
    long long dirty;
    ustime_t start, duration;
    int client_old_flags = c->flags;
    struct redisCommand *real_cmd = c->cmd;

    server.call_depth++;



    if (listLength(server.monitors) &&
        !server.loading &&
        !(c->cmd->flags & (CMD_SKIP_MONITOR|CMD_ADMIN)))
    {
        replicationFeedMonitors(c,server.monitors,c->db->id,c->argv,c->argc);
    }



    c->flags &= ~(CLIENT_FORCE_AOF|CLIENT_FORCE_REPL|CLIENT_PREVENT_PROP);
    redisOpArray prev_also_propagate = server.also_propagate;
    redisOpArrayInit(&server.also_propagate);


    dirty = server.dirty;
    updateCachedTime(0);
    start = server.ustime;
    c->cmd->proc(c);
    duration = ustime()-start;
    dirty = server.dirty-dirty;
    if (dirty < 0) dirty = 0;



    if (server.loading && c->flags & CLIENT_LUA)
        flags &= ~(CMD_CALL_SLOWLOG | CMD_CALL_STATS);




    if (c->flags & CLIENT_LUA && server.lua_caller) {
        if (c->flags & CLIENT_FORCE_REPL)
            server.lua_caller->flags |= CLIENT_FORCE_REPL;
        if (c->flags & CLIENT_FORCE_AOF)
            server.lua_caller->flags |= CLIENT_FORCE_AOF;
    }



    if (flags & CMD_CALL_SLOWLOG && !(c->cmd->flags & CMD_SKIP_SLOWLOG)) {
        char *latency_event = (c->cmd->flags & CMD_FAST) ?
                              "fast-command" : "command";
        latencyAddSampleIfNeeded(latency_event,duration/1000);
        slowlogPushEntryIfNeeded(c,c->argv,c->argc,duration);
    }

    if (flags & CMD_CALL_STATS) {



        real_cmd->microseconds += duration;
        real_cmd->calls++;
    }


    if (flags & CMD_CALL_PROPAGATE &&
        (c->flags & CLIENT_PREVENT_PROP) != CLIENT_PREVENT_PROP)
    {
        int propagate_flags = PROPAGATE_NONE;



        if (dirty) propagate_flags |= (PROPAGATE_AOF|PROPAGATE_REPL);



        if (c->flags & CLIENT_FORCE_REPL) propagate_flags |= PROPAGATE_REPL;
        if (c->flags & CLIENT_FORCE_AOF) propagate_flags |= PROPAGATE_AOF;




        if (c->flags & CLIENT_PREVENT_REPL_PROP ||
            !(flags & CMD_CALL_PROPAGATE_REPL))
                propagate_flags &= ~PROPAGATE_REPL;
        if (c->flags & CLIENT_PREVENT_AOF_PROP ||
            !(flags & CMD_CALL_PROPAGATE_AOF))
                propagate_flags &= ~PROPAGATE_AOF;




        if (propagate_flags != PROPAGATE_NONE && !(c->cmd->flags & CMD_MODULE))
            propagate(c->cmd,c->db->id,c->argv,c->argc,propagate_flags);
    }



    c->flags &= ~(CLIENT_FORCE_AOF|CLIENT_FORCE_REPL|CLIENT_PREVENT_PROP);
    c->flags |= client_old_flags &
        (CLIENT_FORCE_AOF|CLIENT_FORCE_REPL|CLIENT_PREVENT_PROP);




    if (server.also_propagate.numops) {
        int j;
        redisOp *rop;

        if (flags & CMD_CALL_PROPAGATE) {
            for (j = 0; j < server.also_propagate.numops; j++) {
                rop = &server.also_propagate.ops[j];
                int target = rop->target;

                if (!(flags&CMD_CALL_PROPAGATE_AOF)) target &= ~PROPAGATE_AOF;
                if (!(flags&CMD_CALL_PROPAGATE_REPL)) target &= ~PROPAGATE_REPL;
                if (target)
                    propagate(rop->cmd,rop->dbid,rop->argv,rop->argc,target);
            }
        }
        redisOpArrayFree(&server.also_propagate);
    }
    server.also_propagate = prev_also_propagate;



    if (c->cmd->flags & CMD_READONLY) {
        client *caller = (c->flags & CLIENT_LUA && server.lua_caller) ?
                            server.lua_caller : c;
        if (caller->flags & CLIENT_TRACKING)
            trackingRememberKeys(caller);
    }

    server.call_depth--;
    server.stat_numcommands++;
}
