#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  void aeEventLoop ;
typedef  int /*<<< orphan*/  connection ;
struct TYPE_5__ {int repldboff; } ;
typedef  TYPE_1__ client ;
struct TYPE_6__ {scalar_t__ rdb_pipe_numconns_writing; int rdb_pipe_bufflen; int rdb_pipe_numconns; int stat_net_output_bytes; int /*<<< orphan*/  rdb_pipe_read; int /*<<< orphan*/  el; int /*<<< orphan*/ ** rdb_pipe_conns; scalar_t__ rdb_pipe_buff; } ;

/* Variables and functions */
 int /*<<< orphan*/  AE_READABLE ; 
 scalar_t__ CONN_STATE_CONNECTED ; 
 scalar_t__ EAGAIN ; 
 scalar_t__ EWOULDBLOCK ; 
 int /*<<< orphan*/  LL_WARNING ; 
 int /*<<< orphan*/  PROTO_IOBUF_LEN ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ *,scalar_t__,int) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  rdbPipeWriteHandler ; 
 int FUNC10 (int,scalar_t__,int /*<<< orphan*/ ) ; 
 TYPE_2__ server ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ) ; 

void FUNC15(struct aeEventLoop *eventLoop, int fd, void *clientData, int mask) {
    FUNC1(mask);
    FUNC1(clientData);
    FUNC1(eventLoop);
    int i;
    if (!server.rdb_pipe_buff)
        server.rdb_pipe_buff = FUNC14(PROTO_IOBUF_LEN);
    FUNC11(server.rdb_pipe_numconns_writing==0);

    while (1) {
        server.rdb_pipe_bufflen = FUNC10(fd, server.rdb_pipe_buff, PROTO_IOBUF_LEN);
        if (server.rdb_pipe_bufflen < 0) {
            if (errno == EAGAIN || errno == EWOULDBLOCK)
                return;
            FUNC12(LL_WARNING,"Diskless rdb transfer, read error sending DB to replicas: %s", FUNC13(errno));
            for (i=0; i < server.rdb_pipe_numconns; i++) {
                connection *conn = server.rdb_pipe_conns[i];
                if (!conn)
                    continue;
                client *slave = FUNC4(conn);
                FUNC8(slave);
                server.rdb_pipe_conns[i] = NULL;
            }
            FUNC9();
            return;
        }

        if (server.rdb_pipe_bufflen == 0) {
            /* EOF - write end was closed. */
            int stillUp = 0;
            FUNC2(server.el, server.rdb_pipe_read, AE_READABLE);
            for (i=0; i < server.rdb_pipe_numconns; i++)
            {
                connection *conn = server.rdb_pipe_conns[i];
                if (!conn)
                    continue;
                stillUp++;
            }
            FUNC12(LL_WARNING,"Diskless rdb transfer, done reading from pipe, %d replicas still up.", stillUp);
            FUNC0();
            return;
        }

        int stillAlive = 0;
        for (i=0; i < server.rdb_pipe_numconns; i++)
        {
            int nwritten;
            connection *conn = server.rdb_pipe_conns[i];
            if (!conn)
                continue;

            client *slave = FUNC4(conn);
            if ((nwritten = FUNC7(conn, server.rdb_pipe_buff, server.rdb_pipe_bufflen)) == -1) {
                if (FUNC5(conn) != CONN_STATE_CONNECTED) {
                    FUNC12(LL_WARNING,"Diskless rdb transfer, write error sending DB to replica: %s",
                        FUNC3(conn));
                    FUNC8(slave);
                    server.rdb_pipe_conns[i] = NULL;
                    continue;
                }
                /* An error and still in connected state, is equivalent to EAGAIN */
                slave->repldboff = 0;
            } else {
                slave->repldboff = nwritten;
                server.stat_net_output_bytes += nwritten;
            }
            /* If we were unable to write all the data to one of the replicas,
             * setup write handler (and disable pipe read handler, below) */
            if (nwritten != server.rdb_pipe_bufflen) {
                server.rdb_pipe_numconns_writing++;
                FUNC6(conn, rdbPipeWriteHandler);
            }
            stillAlive++;
        }

        if (stillAlive == 0) {
            FUNC12(LL_WARNING,"Diskless rdb transfer, last replica dropped, killing fork child.");
            FUNC9();
            FUNC0();
        }
        /*  Remove the pipe read handler if at least one write handler was set. */
        if (server.rdb_pipe_numconns_writing || stillAlive == 0) {
            FUNC2(server.el, server.rdb_pipe_read, AE_READABLE);
            break;
        }
    }
}