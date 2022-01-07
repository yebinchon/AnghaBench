
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef void aeEventLoop ;
typedef int connection ;
struct TYPE_5__ {int repldboff; } ;
typedef TYPE_1__ client ;
struct TYPE_6__ {scalar_t__ rdb_pipe_numconns_writing; int rdb_pipe_bufflen; int rdb_pipe_numconns; int stat_net_output_bytes; int rdb_pipe_read; int el; int ** rdb_pipe_conns; scalar_t__ rdb_pipe_buff; } ;


 int AE_READABLE ;
 scalar_t__ CONN_STATE_CONNECTED ;
 scalar_t__ EAGAIN ;
 scalar_t__ EWOULDBLOCK ;
 int LL_WARNING ;
 int PROTO_IOBUF_LEN ;
 int RdbPipeCleanup () ;
 int UNUSED (void*) ;
 int aeDeleteFileEvent (int ,int ,int ) ;
 int connGetLastError (int *) ;
 TYPE_1__* connGetPrivateData (int *) ;
 scalar_t__ connGetState (int *) ;
 int connSetWriteHandler (int *,int ) ;
 int connWrite (int *,scalar_t__,int) ;
 scalar_t__ errno ;
 int freeClient (TYPE_1__*) ;
 int killRDBChild () ;
 int rdbPipeWriteHandler ;
 int read (int,scalar_t__,int ) ;
 TYPE_2__ server ;
 int serverAssert (int) ;
 int serverLog (int ,char*,...) ;
 int strerror (scalar_t__) ;
 scalar_t__ zmalloc (int ) ;

void rdbPipeReadHandler(struct aeEventLoop *eventLoop, int fd, void *clientData, int mask) {
    UNUSED(mask);
    UNUSED(clientData);
    UNUSED(eventLoop);
    int i;
    if (!server.rdb_pipe_buff)
        server.rdb_pipe_buff = zmalloc(PROTO_IOBUF_LEN);
    serverAssert(server.rdb_pipe_numconns_writing==0);

    while (1) {
        server.rdb_pipe_bufflen = read(fd, server.rdb_pipe_buff, PROTO_IOBUF_LEN);
        if (server.rdb_pipe_bufflen < 0) {
            if (errno == EAGAIN || errno == EWOULDBLOCK)
                return;
            serverLog(LL_WARNING,"Diskless rdb transfer, read error sending DB to replicas: %s", strerror(errno));
            for (i=0; i < server.rdb_pipe_numconns; i++) {
                connection *conn = server.rdb_pipe_conns[i];
                if (!conn)
                    continue;
                client *slave = connGetPrivateData(conn);
                freeClient(slave);
                server.rdb_pipe_conns[i] = ((void*)0);
            }
            killRDBChild();
            return;
        }

        if (server.rdb_pipe_bufflen == 0) {

            int stillUp = 0;
            aeDeleteFileEvent(server.el, server.rdb_pipe_read, AE_READABLE);
            for (i=0; i < server.rdb_pipe_numconns; i++)
            {
                connection *conn = server.rdb_pipe_conns[i];
                if (!conn)
                    continue;
                stillUp++;
            }
            serverLog(LL_WARNING,"Diskless rdb transfer, done reading from pipe, %d replicas still up.", stillUp);
            RdbPipeCleanup();
            return;
        }

        int stillAlive = 0;
        for (i=0; i < server.rdb_pipe_numconns; i++)
        {
            int nwritten;
            connection *conn = server.rdb_pipe_conns[i];
            if (!conn)
                continue;

            client *slave = connGetPrivateData(conn);
            if ((nwritten = connWrite(conn, server.rdb_pipe_buff, server.rdb_pipe_bufflen)) == -1) {
                if (connGetState(conn) != CONN_STATE_CONNECTED) {
                    serverLog(LL_WARNING,"Diskless rdb transfer, write error sending DB to replica: %s",
                        connGetLastError(conn));
                    freeClient(slave);
                    server.rdb_pipe_conns[i] = ((void*)0);
                    continue;
                }

                slave->repldboff = 0;
            } else {
                slave->repldboff = nwritten;
                server.stat_net_output_bytes += nwritten;
            }


            if (nwritten != server.rdb_pipe_bufflen) {
                server.rdb_pipe_numconns_writing++;
                connSetWriteHandler(conn, rdbPipeWriteHandler);
            }
            stillAlive++;
        }

        if (stillAlive == 0) {
            serverLog(LL_WARNING,"Diskless rdb transfer, last replica dropped, killing fork child.");
            killRDBChild();
            RdbPipeCleanup();
        }

        if (server.rdb_pipe_numconns_writing || stillAlive == 0) {
            aeDeleteFileEvent(server.el, server.rdb_pipe_read, AE_READABLE);
            break;
        }
    }
}
