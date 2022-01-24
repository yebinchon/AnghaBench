#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct redis_stat {scalar_t__ st_size; } ;
struct TYPE_7__ {TYPE_2__* value; } ;
typedef  TYPE_1__ listNode ;
typedef  int /*<<< orphan*/  listIter ;
struct TYPE_8__ {scalar_t__ replstate; int slave_capa; int repl_put_online_on_ack; int repldbfd; int /*<<< orphan*/  conn; scalar_t__ repldbsize; int /*<<< orphan*/  replpreamble; scalar_t__ repldboff; int /*<<< orphan*/  repl_ack_time; } ;
typedef  TYPE_2__ client ;
struct TYPE_9__ {int /*<<< orphan*/  rdb_filename; int /*<<< orphan*/  unixtime; int /*<<< orphan*/  slaves; } ;

/* Variables and functions */
 int /*<<< orphan*/  C_ERR ; 
 int C_OK ; 
 int /*<<< orphan*/  LL_NOTICE ; 
 int /*<<< orphan*/  LL_WARNING ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int RDB_CHILD_TYPE_SOCKET ; 
 scalar_t__ SLAVE_STATE_ONLINE ; 
 scalar_t__ SLAVE_STATE_SEND_BULK ; 
 scalar_t__ SLAVE_STATE_WAIT_BGSAVE_END ; 
 scalar_t__ SLAVE_STATE_WAIT_BGSAVE_START ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int,struct redis_stat*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,unsigned long long) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/ * sendBulkToSlave ; 
 TYPE_3__ server ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

void FUNC12(int bgsaveerr, int type) {
    listNode *ln;
    int startbgsave = 0;
    int mincapa = -1;
    listIter li;

    FUNC3(server.slaves,&li);
    while((ln = FUNC2(&li))) {
        client *slave = ln->value;

        if (slave->replstate == SLAVE_STATE_WAIT_BGSAVE_START) {
            startbgsave = 1;
            mincapa = (mincapa == -1) ? slave->slave_capa :
                                        (mincapa & slave->slave_capa);
        } else if (slave->replstate == SLAVE_STATE_WAIT_BGSAVE_END) {
            struct redis_stat buf;

            /* If this was an RDB on disk save, we have to prepare to send
             * the RDB from disk to the slave socket. Otherwise if this was
             * already an RDB -> Slaves socket transfer, used in the case of
             * diskless replication, our work is trivial, we can just put
             * the slave online. */
            if (type == RDB_CHILD_TYPE_SOCKET) {
                FUNC9(LL_NOTICE,
                    "Streamed RDB transfer with replica %s succeeded (socket). Waiting for REPLCONF ACK from slave to enable streaming",
                        FUNC6(slave));
                /* Note: we wait for a REPLCONF ACK message from the replica in
                 * order to really put it online (install the write handler
                 * so that the accumulated data can be transferred). However
                 * we change the replication state ASAP, since our slave
                 * is technically online now.
                 *
                 * So things work like that:
                 *
                 * 1. We end trasnferring the RDB file via socket.
                 * 2. The replica is put ONLINE but the write handler
                 *    is not installed.
                 * 3. The replica however goes really online, and pings us
                 *    back via REPLCONF ACK commands.
                 * 4. Now we finally install the write handler, and send
                 *    the buffers accumulated so far to the replica.
                 *
                 * But why we do that? Because the replica, when we stream
                 * the RDB directly via the socket, must detect the RDB
                 * EOF (end of file), that is a special random string at the
                 * end of the RDB (for streamed RDBs we don't know the length
                 * in advance). Detecting such final EOF string is much
                 * simpler and less CPU intensive if no more data is sent
                 * after such final EOF. So we don't want to glue the end of
                 * the RDB trasfer with the start of the other replication
                 * data. */
                slave->replstate = SLAVE_STATE_ONLINE;
                slave->repl_put_online_on_ack = 1;
                slave->repl_ack_time = server.unixtime; /* Timeout otherwise. */
            } else {
                if (bgsaveerr != C_OK) {
                    FUNC1(slave);
                    FUNC9(LL_WARNING,"SYNC failed. BGSAVE child returned an error");
                    continue;
                }
                if ((slave->repldbfd = FUNC4(server.rdb_filename,O_RDONLY)) == -1 ||
                    FUNC5(slave->repldbfd,&buf) == -1) {
                    FUNC1(slave);
                    FUNC9(LL_WARNING,"SYNC failed. Can't open/stat DB after BGSAVE: %s", FUNC11(errno));
                    continue;
                }
                slave->repldboff = 0;
                slave->repldbsize = buf.st_size;
                slave->replstate = SLAVE_STATE_SEND_BULK;
                slave->replpreamble = FUNC7(FUNC8(),"$%lld\r\n",
                    (unsigned long long) slave->repldbsize);

                FUNC0(slave->conn,NULL);
                if (FUNC0(slave->conn,sendBulkToSlave) == C_ERR) {
                    FUNC1(slave);
                    continue;
                }
            }
        }
    }
    if (startbgsave) FUNC10(mincapa);
}