
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int rio ;
typedef int rdbSaveInfo ;
typedef int pid_t ;
struct TYPE_6__ {TYPE_2__* value; } ;
typedef TYPE_1__ listNode ;
typedef int listIter ;
typedef int connection ;
struct TYPE_7__ {scalar_t__ replstate; int conn; } ;
typedef TYPE_2__ client ;
struct TYPE_8__ {int rdb_pipe_read; int rdb_pipe_write; int rdb_child_pid; int el; int rdb_child_type; int rdb_save_time_start; scalar_t__ rdb_pipe_numconns_writing; scalar_t__ rdb_pipe_numconns; int * rdb_pipe_conns; int slaves; } ;


 scalar_t__ AE_ERR ;
 int AE_READABLE ;
 int CHILD_INFO_TYPE_RDB ;
 int C_ERR ;
 int C_OK ;
 int LL_NOTICE ;
 int LL_WARNING ;
 int RDB_CHILD_TYPE_SOCKET ;
 scalar_t__ SLAVE_STATE_WAIT_BGSAVE_END ;
 scalar_t__ SLAVE_STATE_WAIT_BGSAVE_START ;
 scalar_t__ aeCreateFileEvent (int ,int,int ,int ,int *) ;
 int anetNonBlock (int *,int) ;
 int close (int) ;
 int closeChildInfoPipe () ;
 int errno ;
 int exitFromChild (int) ;
 int getPsyncInitialOffset () ;
 scalar_t__ hasActiveChildProcess () ;
 int listLength (int ) ;
 TYPE_1__* listNext (int *) ;
 int listRewind (int ,int *) ;
 int openChildInfoPipe () ;
 int pipe (int*) ;
 int rdbPipeReadHandler ;
 int rdbSaveRioWithEOFMark (int *,int *,int *) ;
 int redisFork () ;
 int redisSetProcTitle (char*) ;
 int replicationSetupSlaveForFullResync (TYPE_2__*,int ) ;
 scalar_t__ rioFlush (int *) ;
 int rioFreeFd (int *) ;
 int rioInitWithFd (int *,int) ;
 int sendChildCOWInfo (int ,char*) ;
 TYPE_3__ server ;
 int serverLog (int ,char*,int) ;
 int serverPanic (char*) ;
 int strerror (int ) ;
 int time (int *) ;
 int zfree (int *) ;
 int * zmalloc (int) ;

int rdbSaveToSlavesSockets(rdbSaveInfo *rsi) {
    listNode *ln;
    listIter li;
    pid_t childpid;
    int pipefds[2];

    if (hasActiveChildProcess()) return C_ERR;



    if (server.rdb_pipe_conns) return C_ERR;





    if (pipe(pipefds) == -1) return C_ERR;
    server.rdb_pipe_read = pipefds[0];
    server.rdb_pipe_write = pipefds[1];
    anetNonBlock(((void*)0), server.rdb_pipe_read);



    server.rdb_pipe_conns = zmalloc(sizeof(connection *)*listLength(server.slaves));
    server.rdb_pipe_numconns = 0;
    server.rdb_pipe_numconns_writing = 0;
    listRewind(server.slaves,&li);
    while((ln = listNext(&li))) {
        client *slave = ln->value;
        if (slave->replstate == SLAVE_STATE_WAIT_BGSAVE_START) {
            server.rdb_pipe_conns[server.rdb_pipe_numconns++] = slave->conn;
            replicationSetupSlaveForFullResync(slave,getPsyncInitialOffset());
        }
    }


    openChildInfoPipe();
    if ((childpid = redisFork()) == 0) {

        int retval;
        rio rdb;

        rioInitWithFd(&rdb,server.rdb_pipe_write);

        redisSetProcTitle("redis-rdb-to-slaves");

        retval = rdbSaveRioWithEOFMark(&rdb,((void*)0),rsi);
        if (retval == C_OK && rioFlush(&rdb) == 0)
            retval = C_ERR;

        if (retval == C_OK) {
            sendChildCOWInfo(CHILD_INFO_TYPE_RDB, "RDB");
        }

        rioFreeFd(&rdb);
        close(server.rdb_pipe_write);
        exitFromChild((retval == C_OK) ? 0 : 1);
    } else {

        if (childpid == -1) {
            serverLog(LL_WARNING,"Can't save in background: fork: %s",
                strerror(errno));




            listRewind(server.slaves,&li);
            while((ln = listNext(&li))) {
                client *slave = ln->value;
                if (slave->replstate == SLAVE_STATE_WAIT_BGSAVE_END) {
                    slave->replstate = SLAVE_STATE_WAIT_BGSAVE_START;
                }
            }
            close(server.rdb_pipe_write);
            close(server.rdb_pipe_read);
            zfree(server.rdb_pipe_conns);
            server.rdb_pipe_conns = ((void*)0);
            server.rdb_pipe_numconns = 0;
            server.rdb_pipe_numconns_writing = 0;
            closeChildInfoPipe();
        } else {
            serverLog(LL_NOTICE,"Background RDB transfer started by pid %d",
                childpid);
            server.rdb_save_time_start = time(((void*)0));
            server.rdb_child_pid = childpid;
            server.rdb_child_type = RDB_CHILD_TYPE_SOCKET;
            close(server.rdb_pipe_write);
            if (aeCreateFileEvent(server.el, server.rdb_pipe_read, AE_READABLE, rdbPipeReadHandler,((void*)0)) == AE_ERR) {
                serverPanic("Unrecoverable error creating server.rdb_pipe_read file event.");
            }
        }
        return (childpid == -1) ? C_ERR : C_OK;
    }
    return C_OK;
}
