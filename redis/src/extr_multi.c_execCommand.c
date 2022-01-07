
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_7__ ;
typedef struct TYPE_22__ TYPE_6__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


struct redisCommand {int flags; } ;
typedef int robj ;
struct TYPE_19__ {int cmd_flags; int count; TYPE_1__* commands; } ;
struct TYPE_21__ {int flags; size_t resp; int argc; int ** argv; TYPE_3__* db; struct redisCommand* cmd; TYPE_2__ mstate; } ;
typedef TYPE_4__ client ;
struct TYPE_23__ {int monitors; scalar_t__ loading; scalar_t__ repl_backlog; int dirty; int * masterhost; scalar_t__ repl_slave_ro; } ;
struct TYPE_22__ {int * nullarray; int execaborterr; } ;
struct TYPE_20__ {int id; } ;
struct TYPE_18__ {int argc; struct redisCommand* cmd; int ** argv; } ;


 int ACLCheckCommandPerm (TYPE_4__*) ;
 int ACL_DENIED_CMD ;
 int ACL_OK ;
 int CLIENT_DIRTY_CAS ;
 int CLIENT_DIRTY_EXEC ;
 int CLIENT_MASTER ;
 int CLIENT_MULTI ;
 int CMD_ADMIN ;
 int CMD_CALL_FULL ;
 int CMD_CALL_NONE ;
 int CMD_READONLY ;
 int CMD_WRITE ;
 int addReply (TYPE_4__*,int ) ;
 int addReplyArrayLen (TYPE_4__*,int) ;
 int addReplyError (TYPE_4__*,char*) ;
 int addReplyErrorFormat (TYPE_4__*,char*,char*) ;
 int call (TYPE_4__*,int ) ;
 int discardTransaction (TYPE_4__*) ;
 int execCommandPropagateMulti (TYPE_4__*) ;
 int feedReplicationBacklog (char*,int ) ;
 scalar_t__ listLength (int ) ;
 int replicationFeedMonitors (TYPE_4__*,int ,int ,int **,int) ;
 TYPE_7__ server ;
 TYPE_6__ shared ;
 int strlen (char*) ;
 int unwatchAllKeys (TYPE_4__*) ;

void execCommand(client *c) {
    int j;
    robj **orig_argv;
    int orig_argc;
    struct redisCommand *orig_cmd;
    int must_propagate = 0;
    int was_master = server.masterhost == ((void*)0);

    if (!(c->flags & CLIENT_MULTI)) {
        addReplyError(c,"EXEC without MULTI");
        return;
    }







    if (c->flags & (CLIENT_DIRTY_CAS|CLIENT_DIRTY_EXEC)) {
        addReply(c, c->flags & CLIENT_DIRTY_EXEC ? shared.execaborterr :
                                                   shared.nullarray[c->resp]);
        discardTransaction(c);
        goto handle_monitor;
    }






    if (!server.loading && server.masterhost && server.repl_slave_ro &&
        !(c->flags & CLIENT_MASTER) && c->mstate.cmd_flags & CMD_WRITE)
    {
        addReplyError(c,
            "Transaction contains write commands but instance "
            "is now a read-only replica. EXEC aborted.");
        discardTransaction(c);
        goto handle_monitor;
    }


    unwatchAllKeys(c);
    orig_argv = c->argv;
    orig_argc = c->argc;
    orig_cmd = c->cmd;
    addReplyArrayLen(c,c->mstate.count);
    for (j = 0; j < c->mstate.count; j++) {
        c->argc = c->mstate.commands[j].argc;
        c->argv = c->mstate.commands[j].argv;
        c->cmd = c->mstate.commands[j].cmd;






        if (!must_propagate && !(c->cmd->flags & (CMD_READONLY|CMD_ADMIN))) {
            execCommandPropagateMulti(c);
            must_propagate = 1;
        }

        int acl_retval = ACLCheckCommandPerm(c);
        if (acl_retval != ACL_OK) {
            addReplyErrorFormat(c,
                "-NOPERM ACLs rules changed between the moment the "
                "transaction was accumulated and the EXEC call. "
                "This command is no longer allowed for the "
                "following reason: %s",
                (acl_retval == ACL_DENIED_CMD) ?
                "no permission to execute the command or subcommand" :
                "no permission to touch the specified keys");
        } else {
            call(c,server.loading ? CMD_CALL_NONE : CMD_CALL_FULL);
        }


        c->mstate.commands[j].argc = c->argc;
        c->mstate.commands[j].argv = c->argv;
        c->mstate.commands[j].cmd = c->cmd;
    }
    c->argv = orig_argv;
    c->argc = orig_argc;
    c->cmd = orig_cmd;
    discardTransaction(c);



    if (must_propagate) {
        int is_master = server.masterhost == ((void*)0);
        server.dirty++;





        if (server.repl_backlog && was_master && !is_master) {
            char *execcmd = "*1\r\n$4\r\nEXEC\r\n";
            feedReplicationBacklog(execcmd,strlen(execcmd));
        }
    }

handle_monitor:





    if (listLength(server.monitors) && !server.loading)
        replicationFeedMonitors(c,server.monitors,c->db->id,c->argv,c->argc);
}
