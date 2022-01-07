
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int rdbSaveInfo ;
struct TYPE_8__ {TYPE_2__* value; } ;
typedef TYPE_1__ listNode ;
typedef int listIter ;
struct TYPE_9__ {scalar_t__ replstate; int flags; } ;
typedef TYPE_2__ client ;
struct TYPE_10__ {int slaves; int rdb_filename; scalar_t__ repl_diskless_sync; } ;


 int CLIENT_CLOSE_AFTER_REPLY ;
 int CLIENT_SLAVE ;
 int C_ERR ;
 int C_OK ;
 int LL_NOTICE ;
 int LL_WARNING ;
 scalar_t__ REPL_STATE_NONE ;
 int SLAVE_CAPA_EOF ;
 scalar_t__ SLAVE_STATE_WAIT_BGSAVE_START ;
 int addReplyError (TYPE_2__*,char*) ;
 int getPsyncInitialOffset () ;
 int listDelNode (int ,TYPE_1__*) ;
 TYPE_1__* listNext (int *) ;
 int listRewind (int ,int *) ;
 int * rdbPopulateSaveInfo (int *) ;
 int rdbSaveBackground (int ,int *) ;
 int rdbSaveToSlavesSockets (int *) ;
 int replicationScriptCacheFlush () ;
 int replicationSetupSlaveForFullResync (TYPE_2__*,int ) ;
 TYPE_3__ server ;
 int serverLog (int ,char*,...) ;

int startBgsaveForReplication(int mincapa) {
    int retval;
    int socket_target = server.repl_diskless_sync && (mincapa & SLAVE_CAPA_EOF);
    listIter li;
    listNode *ln;

    serverLog(LL_NOTICE,"Starting BGSAVE for SYNC with target: %s",
        socket_target ? "replicas sockets" : "disk");

    rdbSaveInfo rsi, *rsiptr;
    rsiptr = rdbPopulateSaveInfo(&rsi);


    if (rsiptr) {
        if (socket_target)
            retval = rdbSaveToSlavesSockets(rsiptr);
        else
            retval = rdbSaveBackground(server.rdb_filename,rsiptr);
    } else {
        serverLog(LL_WARNING,"BGSAVE for replication: replication information not available, can't generate the RDB file right now. Try later.");
        retval = C_ERR;
    }




    if (retval == C_ERR) {
        serverLog(LL_WARNING,"BGSAVE for replication failed");
        listRewind(server.slaves,&li);
        while((ln = listNext(&li))) {
            client *slave = ln->value;

            if (slave->replstate == SLAVE_STATE_WAIT_BGSAVE_START) {
                slave->replstate = REPL_STATE_NONE;
                slave->flags &= ~CLIENT_SLAVE;
                listDelNode(server.slaves,ln);
                addReplyError(slave,
                    "BGSAVE failed, replication can't continue");
                slave->flags |= CLIENT_CLOSE_AFTER_REPLY;
            }
        }
        return retval;
    }



    if (!socket_target) {
        listRewind(server.slaves,&li);
        while((ln = listNext(&li))) {
            client *slave = ln->value;

            if (slave->replstate == SLAVE_STATE_WAIT_BGSAVE_START) {
                    replicationSetupSlaveForFullResync(slave,
                            getPsyncInitialOffset());
            }
        }
    }



    if (retval == C_OK) replicationScriptCacheFlush();
    return retval;
}
