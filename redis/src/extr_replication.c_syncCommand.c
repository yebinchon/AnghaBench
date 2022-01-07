
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_17__ {TYPE_3__* value; } ;
typedef TYPE_2__ listNode ;
typedef int listIter ;
struct TYPE_18__ {int flags; scalar_t__ replstate; int repldbfd; int slave_capa; int psync_initial_offset; int conn; TYPE_1__** argv; } ;
typedef TYPE_3__ client ;
struct TYPE_19__ {scalar_t__ repl_state; int rdb_child_pid; scalar_t__ rdb_child_type; scalar_t__ repl_diskless_sync_delay; scalar_t__ repl_diskless_sync; int slaves; int * repl_backlog; scalar_t__ repl_disable_tcp_nodelay; int stat_sync_full; int stat_sync_partial_err; int stat_sync_partial_ok; scalar_t__ masterhost; } ;
struct TYPE_16__ {char* ptr; } ;


 int CLIENT_PRE_PSYNC ;
 int CLIENT_SLAVE ;
 scalar_t__ C_OK ;
 int LL_NOTICE ;
 scalar_t__ RDB_CHILD_TYPE_DISK ;
 scalar_t__ RDB_CHILD_TYPE_SOCKET ;
 scalar_t__ REPL_STATE_CONNECTED ;
 int SLAVE_CAPA_EOF ;
 scalar_t__ SLAVE_STATE_WAIT_BGSAVE_END ;
 scalar_t__ SLAVE_STATE_WAIT_BGSAVE_START ;
 int addReplyError (TYPE_3__*,char*) ;
 int addReplySds (TYPE_3__*,int ) ;
 int changeReplicationId () ;
 int clearReplicationId2 () ;
 scalar_t__ clientHasPendingReplies (TYPE_3__*) ;
 int connDisableTcpNoDelay (int ) ;
 int copyClientOutputBuffer (TYPE_3__*,TYPE_3__*) ;
 int createReplicationBacklog () ;
 int hasActiveChildProcess () ;
 int listAddNodeTail (int ,TYPE_3__*) ;
 int listLength (int ) ;
 TYPE_2__* listNext (int *) ;
 int listRewind (int ,int *) ;
 scalar_t__ masterTryPartialResynchronization (TYPE_3__*) ;
 int replicationGetSlaveName (TYPE_3__*) ;
 int replicationSetupSlaveForFullResync (TYPE_3__*,int ) ;
 int sdsnew (char*) ;
 TYPE_5__ server ;
 int serverLog (int ,char*,...) ;
 int startBgsaveForReplication (int) ;
 int strcasecmp (char*,char*) ;

void syncCommand(client *c) {

    if (c->flags & CLIENT_SLAVE) return;



    if (server.masterhost && server.repl_state != REPL_STATE_CONNECTED) {
        addReplySds(c,sdsnew("-NOMASTERLINK Can't SYNC while not connected with my master\r\n"));
        return;
    }





    if (clientHasPendingReplies(c)) {
        addReplyError(c,"SYNC and PSYNC are invalid with pending output");
        return;
    }

    serverLog(LL_NOTICE,"Replica %s asks for synchronization",
        replicationGetSlaveName(c));
    if (!strcasecmp(c->argv[0]->ptr,"psync")) {
        if (masterTryPartialResynchronization(c) == C_OK) {
            server.stat_sync_partial_ok++;
            return;
        } else {
            char *master_replid = c->argv[1]->ptr;





            if (master_replid[0] != '?') server.stat_sync_partial_err++;
        }
    } else {



        c->flags |= CLIENT_PRE_PSYNC;
    }


    server.stat_sync_full++;



    c->replstate = SLAVE_STATE_WAIT_BGSAVE_START;
    if (server.repl_disable_tcp_nodelay)
        connDisableTcpNoDelay(c->conn);
    c->repldbfd = -1;
    c->flags |= CLIENT_SLAVE;
    listAddNodeTail(server.slaves,c);


    if (listLength(server.slaves) == 1 && server.repl_backlog == ((void*)0)) {



        changeReplicationId();
        clearReplicationId2();
        createReplicationBacklog();
    }


    if (server.rdb_child_pid != -1 &&
        server.rdb_child_type == RDB_CHILD_TYPE_DISK)
    {



        client *slave;
        listNode *ln;
        listIter li;

        listRewind(server.slaves,&li);
        while((ln = listNext(&li))) {
            slave = ln->value;
            if (slave->replstate == SLAVE_STATE_WAIT_BGSAVE_END) break;
        }


        if (ln && ((c->slave_capa & slave->slave_capa) == slave->slave_capa)) {


            copyClientOutputBuffer(c,slave);
            replicationSetupSlaveForFullResync(c,slave->psync_initial_offset);
            serverLog(LL_NOTICE,"Waiting for end of BGSAVE for SYNC");
        } else {


            serverLog(LL_NOTICE,"Can't attach the replica to the current BGSAVE. Waiting for next BGSAVE for SYNC");
        }


    } else if (server.rdb_child_pid != -1 &&
               server.rdb_child_type == RDB_CHILD_TYPE_SOCKET)
    {



        serverLog(LL_NOTICE,"Current BGSAVE has socket target. Waiting for next BGSAVE for SYNC");


    } else {
        if (server.repl_diskless_sync && (c->slave_capa & SLAVE_CAPA_EOF)) {



            if (server.repl_diskless_sync_delay)
                serverLog(LL_NOTICE,"Delay next BGSAVE for diskless SYNC");
        } else {



            if (!hasActiveChildProcess()) {
                startBgsaveForReplication(c->slave_capa);
            } else {
                serverLog(LL_NOTICE,
                    "No BGSAVE in progress, but another BG operation is active. "
                    "BGSAVE for replication delayed");
            }
        }
    }
    return;
}
