
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct redis_stat {scalar_t__ st_size; } ;
struct TYPE_7__ {TYPE_2__* value; } ;
typedef TYPE_1__ listNode ;
typedef int listIter ;
struct TYPE_8__ {scalar_t__ replstate; int slave_capa; int repl_put_online_on_ack; int repldbfd; int conn; scalar_t__ repldbsize; int replpreamble; scalar_t__ repldboff; int repl_ack_time; } ;
typedef TYPE_2__ client ;
struct TYPE_9__ {int rdb_filename; int unixtime; int slaves; } ;


 int C_ERR ;
 int C_OK ;
 int LL_NOTICE ;
 int LL_WARNING ;
 int O_RDONLY ;
 int RDB_CHILD_TYPE_SOCKET ;
 scalar_t__ SLAVE_STATE_ONLINE ;
 scalar_t__ SLAVE_STATE_SEND_BULK ;
 scalar_t__ SLAVE_STATE_WAIT_BGSAVE_END ;
 scalar_t__ SLAVE_STATE_WAIT_BGSAVE_START ;
 int connSetWriteHandler (int ,int *) ;
 int errno ;
 int freeClient (TYPE_2__*) ;
 TYPE_1__* listNext (int *) ;
 int listRewind (int ,int *) ;
 int open (int ,int ) ;
 int redis_fstat (int,struct redis_stat*) ;
 int replicationGetSlaveName (TYPE_2__*) ;
 int sdscatprintf (int ,char*,unsigned long long) ;
 int sdsempty () ;
 int * sendBulkToSlave ;
 TYPE_3__ server ;
 int serverLog (int ,char*,...) ;
 int startBgsaveForReplication (int) ;
 int strerror (int ) ;

void updateSlavesWaitingBgsave(int bgsaveerr, int type) {
    listNode *ln;
    int startbgsave = 0;
    int mincapa = -1;
    listIter li;

    listRewind(server.slaves,&li);
    while((ln = listNext(&li))) {
        client *slave = ln->value;

        if (slave->replstate == SLAVE_STATE_WAIT_BGSAVE_START) {
            startbgsave = 1;
            mincapa = (mincapa == -1) ? slave->slave_capa :
                                        (mincapa & slave->slave_capa);
        } else if (slave->replstate == SLAVE_STATE_WAIT_BGSAVE_END) {
            struct redis_stat buf;






            if (type == RDB_CHILD_TYPE_SOCKET) {
                serverLog(LL_NOTICE,
                    "Streamed RDB transfer with replica %s succeeded (socket). Waiting for REPLCONF ACK from slave to enable streaming",
                        replicationGetSlaveName(slave));
                slave->replstate = SLAVE_STATE_ONLINE;
                slave->repl_put_online_on_ack = 1;
                slave->repl_ack_time = server.unixtime;
            } else {
                if (bgsaveerr != C_OK) {
                    freeClient(slave);
                    serverLog(LL_WARNING,"SYNC failed. BGSAVE child returned an error");
                    continue;
                }
                if ((slave->repldbfd = open(server.rdb_filename,O_RDONLY)) == -1 ||
                    redis_fstat(slave->repldbfd,&buf) == -1) {
                    freeClient(slave);
                    serverLog(LL_WARNING,"SYNC failed. Can't open/stat DB after BGSAVE: %s", strerror(errno));
                    continue;
                }
                slave->repldboff = 0;
                slave->repldbsize = buf.st_size;
                slave->replstate = SLAVE_STATE_SEND_BULK;
                slave->replpreamble = sdscatprintf(sdsempty(),"$%lld\r\n",
                    (unsigned long long) slave->repldbsize);

                connSetWriteHandler(slave->conn,((void*)0));
                if (connSetWriteHandler(slave->conn,sendBulkToSlave) == C_ERR) {
                    freeClient(slave);
                    continue;
                }
            }
        }
    }
    if (startbgsave) startBgsaveForReplication(mincapa);
}
