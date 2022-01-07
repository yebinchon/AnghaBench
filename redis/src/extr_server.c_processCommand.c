
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_30__ TYPE_9__ ;
typedef struct TYPE_29__ TYPE_5__ ;
typedef struct TYPE_28__ TYPE_4__ ;
typedef struct TYPE_27__ TYPE_3__ ;
typedef struct TYPE_26__ TYPE_2__ ;
typedef struct TYPE_25__ TYPE_21__ ;
typedef struct TYPE_24__ TYPE_1__ ;
typedef struct TYPE_23__ TYPE_12__ ;


typedef int sds ;
typedef int clusterNode ;
struct TYPE_27__ {int flags; int argc; int resp; int woff; TYPE_9__* cmd; TYPE_12__** argv; int authenticated; TYPE_9__* lastcmd; } ;
typedef TYPE_3__ client ;
struct TYPE_30__ {int arity; scalar_t__ proc; scalar_t__ firstkey; int flags; int * getkeys_proc; int name; } ;
struct TYPE_29__ {scalar_t__ repl_min_slaves_to_write; scalar_t__ repl_good_slaves_count; scalar_t__ repl_state; scalar_t__ repl_serve_stale_data; int ready_keys; int master_repl_offset; scalar_t__ lua_timedout; scalar_t__ loading; int * masterhost; scalar_t__ repl_slave_ro; scalar_t__ repl_min_slaves_max_lag; int aof_last_write_errno; scalar_t__ tracking_clients; int * current_client; scalar_t__ maxmemory; TYPE_2__* cluster; TYPE_1__* lua_caller; scalar_t__ cluster_enabled; } ;
struct TYPE_28__ {int queued; int slowscripterr; int loadingerr; int masterdownerr; int roslaveerr; int noreplicaserr; int bgsaveerr; int oomerr; int noautherr; int ok; } ;
struct TYPE_26__ {int * myself; } ;
struct TYPE_25__ {int flags; } ;
struct TYPE_24__ {int flags; } ;
struct TYPE_23__ {scalar_t__ ptr; } ;


 int ACLCheckCommandPerm (TYPE_3__*) ;
 int ACL_DENIED_CMD ;
 int ACL_OK ;
 int CLIENT_CLOSE_AFTER_REPLY ;
 int CLIENT_LUA ;
 int CLIENT_MASTER ;
 int CLIENT_MULTI ;
 int CLIENT_PUBSUB ;
 int CMD_CALL_FULL ;
 int CMD_DENYOOM ;
 int CMD_LOADING ;
 int CMD_STALE ;
 int CMD_WRITE ;
 int C_ERR ;
 int C_OK ;
 int DISK_ERROR_TYPE_NONE ;
 int DISK_ERROR_TYPE_RDB ;
 TYPE_21__* DefaultUser ;
 scalar_t__ REPL_STATE_CONNECTED ;
 int USER_FLAG_DISABLED ;
 int USER_FLAG_NOPASS ;
 int addReply (TYPE_3__*,int ) ;
 int addReplyError (TYPE_3__*,char*) ;
 int addReplyErrorFormat (TYPE_3__*,char*,...) ;
 int addReplySds (TYPE_3__*,int ) ;
 scalar_t__ authCommand ;
 int call (TYPE_3__*,int ) ;
 int clusterRedirectClient (TYPE_3__*,int *,int,int) ;
 scalar_t__ discardCommand ;
 int discardTransaction (TYPE_3__*) ;
 scalar_t__ execCommand ;
 int flagTransaction (TYPE_3__*) ;
 int freeMemoryIfNeededAndSafe () ;
 int * getNodeByQuery (TYPE_3__*,TYPE_9__*,TYPE_12__**,int,int*,int*) ;
 int handleClientsBlockedOnKeys () ;
 scalar_t__ helloCommand ;
 scalar_t__ listLength (int ) ;
 TYPE_9__* lookupCommand (scalar_t__) ;
 int moduleCallCommandFilters (TYPE_3__*) ;
 scalar_t__ multiCommand ;
 scalar_t__ pingCommand ;
 scalar_t__ psubscribeCommand ;
 scalar_t__ punsubscribeCommand ;
 int queueMultiCommand (TYPE_3__*) ;
 scalar_t__ replconfCommand ;
 scalar_t__ scriptCommand ;
 int sdscatprintf (int ,char*,int,...) ;
 int sdsempty () ;
 int sdsfree (int ) ;
 int sdslen (int ) ;
 TYPE_5__ server ;
 TYPE_4__ shared ;
 scalar_t__ shutdownCommand ;
 int strcasecmp (scalar_t__,char*) ;
 int strerror (int ) ;
 scalar_t__ subscribeCommand ;
 char tolower (char) ;
 int trackingLimitUsedSlots () ;
 scalar_t__ unsubscribeCommand ;
 scalar_t__ watchCommand ;
 int writeCommandsDeniedByDiskError () ;

int processCommand(client *c) {
    moduleCallCommandFilters(c);





    if (!strcasecmp(c->argv[0]->ptr,"quit")) {
        addReply(c,shared.ok);
        c->flags |= CLIENT_CLOSE_AFTER_REPLY;
        return C_ERR;
    }



    c->cmd = c->lastcmd = lookupCommand(c->argv[0]->ptr);
    if (!c->cmd) {
        flagTransaction(c);
        sds args = sdsempty();
        int i;
        for (i=1; i < c->argc && sdslen(args) < 128; i++)
            args = sdscatprintf(args, "`%.*s`, ", 128-(int)sdslen(args), (char*)c->argv[i]->ptr);
        addReplyErrorFormat(c,"unknown command `%s`, with args beginning with: %s",
            (char*)c->argv[0]->ptr, args);
        sdsfree(args);
        return C_OK;
    } else if ((c->cmd->arity > 0 && c->cmd->arity != c->argc) ||
               (c->argc < -c->cmd->arity)) {
        flagTransaction(c);
        addReplyErrorFormat(c,"wrong number of arguments for '%s' command",
            c->cmd->name);
        return C_OK;
    }



    int auth_required = (!(DefaultUser->flags & USER_FLAG_NOPASS) ||
                           DefaultUser->flags & USER_FLAG_DISABLED) &&
                        !c->authenticated;
    if (auth_required) {

        if (c->cmd->proc != authCommand && c->cmd->proc != helloCommand) {
            flagTransaction(c);
            addReply(c,shared.noautherr);
            return C_OK;
        }
    }



    int acl_retval = ACLCheckCommandPerm(c);
    if (acl_retval != ACL_OK) {
        flagTransaction(c);
        if (acl_retval == ACL_DENIED_CMD)
            addReplyErrorFormat(c,
                "-NOPERM this user has no permissions to run "
                "the '%s' command or its subcommand", c->cmd->name);
        else
            addReplyErrorFormat(c,
                "-NOPERM this user has no permissions to access "
                "one of the keys used as arguments");
        return C_OK;
    }





    if (server.cluster_enabled &&
        !(c->flags & CLIENT_MASTER) &&
        !(c->flags & CLIENT_LUA &&
          server.lua_caller->flags & CLIENT_MASTER) &&
        !(c->cmd->getkeys_proc == ((void*)0) && c->cmd->firstkey == 0 &&
          c->cmd->proc != execCommand))
    {
        int hashslot;
        int error_code;
        clusterNode *n = getNodeByQuery(c,c->cmd,c->argv,c->argc,
                                        &hashslot,&error_code);
        if (n == ((void*)0) || n != server.cluster->myself) {
            if (c->cmd->proc == execCommand) {
                discardTransaction(c);
            } else {
                flagTransaction(c);
            }
            clusterRedirectClient(c,n,hashslot,error_code);
            return C_OK;
        }
    }







    if (server.maxmemory && !server.lua_timedout) {
        int out_of_memory = freeMemoryIfNeededAndSafe() == C_ERR;


        if (server.current_client == ((void*)0)) return C_ERR;




        if (out_of_memory &&
            (c->cmd->flags & CMD_DENYOOM ||
             (c->flags & CLIENT_MULTI &&
              c->cmd->proc != execCommand &&
              c->cmd->proc != discardCommand)))
        {
            flagTransaction(c);
            addReply(c, shared.oomerr);
            return C_OK;
        }
    }



    if (server.tracking_clients) trackingLimitUsedSlots();



    int deny_write_type = writeCommandsDeniedByDiskError();
    if (deny_write_type != DISK_ERROR_TYPE_NONE &&
        server.masterhost == ((void*)0) &&
        (c->cmd->flags & CMD_WRITE ||
         c->cmd->proc == pingCommand))
    {
        flagTransaction(c);
        if (deny_write_type == DISK_ERROR_TYPE_RDB)
            addReply(c, shared.bgsaveerr);
        else
            addReplySds(c,
                sdscatprintf(sdsempty(),
                "-MISCONF Errors writing to the AOF file: %s\r\n",
                strerror(server.aof_last_write_errno)));
        return C_OK;
    }



    if (server.masterhost == ((void*)0) &&
        server.repl_min_slaves_to_write &&
        server.repl_min_slaves_max_lag &&
        c->cmd->flags & CMD_WRITE &&
        server.repl_good_slaves_count < server.repl_min_slaves_to_write)
    {
        flagTransaction(c);
        addReply(c, shared.noreplicaserr);
        return C_OK;
    }



    if (server.masterhost && server.repl_slave_ro &&
        !(c->flags & CLIENT_MASTER) &&
        c->cmd->flags & CMD_WRITE)
    {
        addReply(c, shared.roslaveerr);
        return C_OK;
    }



    if ((c->flags & CLIENT_PUBSUB && c->resp == 2) &&
        c->cmd->proc != pingCommand &&
        c->cmd->proc != subscribeCommand &&
        c->cmd->proc != unsubscribeCommand &&
        c->cmd->proc != psubscribeCommand &&
        c->cmd->proc != punsubscribeCommand) {
        addReplyError(c,"only (P)SUBSCRIBE / (P)UNSUBSCRIBE / PING / QUIT allowed in this context");
        return C_OK;
    }




    if (server.masterhost && server.repl_state != REPL_STATE_CONNECTED &&
        server.repl_serve_stale_data == 0 &&
        !(c->cmd->flags & CMD_STALE))
    {
        flagTransaction(c);
        addReply(c, shared.masterdownerr);
        return C_OK;
    }



    if (server.loading && !(c->cmd->flags & CMD_LOADING)) {
        addReply(c, shared.loadingerr);
        return C_OK;
    }


    if (server.lua_timedout &&
          c->cmd->proc != authCommand &&
          c->cmd->proc != helloCommand &&
          c->cmd->proc != replconfCommand &&
        !(c->cmd->proc == shutdownCommand &&
          c->argc == 2 &&
          tolower(((char*)c->argv[1]->ptr)[0]) == 'n') &&
        !(c->cmd->proc == scriptCommand &&
          c->argc == 2 &&
          tolower(((char*)c->argv[1]->ptr)[0]) == 'k'))
    {
        flagTransaction(c);
        addReply(c, shared.slowscripterr);
        return C_OK;
    }


    if (c->flags & CLIENT_MULTI &&
        c->cmd->proc != execCommand && c->cmd->proc != discardCommand &&
        c->cmd->proc != multiCommand && c->cmd->proc != watchCommand)
    {
        queueMultiCommand(c);
        addReply(c,shared.queued);
    } else {
        call(c,CMD_CALL_FULL);
        c->woff = server.master_repl_offset;
        if (listLength(server.ready_keys))
            handleClientsBlockedOnKeys();
    }
    return C_OK;
}
