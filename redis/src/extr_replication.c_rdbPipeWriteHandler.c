
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct connection {int dummy; } ;
struct TYPE_5__ {scalar_t__ repldboff; } ;
typedef TYPE_1__ client ;
struct TYPE_6__ {scalar_t__ rdb_pipe_bufflen; scalar_t__ rdb_pipe_buff; int stat_net_output_bytes; } ;


 scalar_t__ CONN_STATE_CONNECTED ;
 int LL_WARNING ;
 int connGetLastError (struct connection*) ;
 TYPE_1__* connGetPrivateData (struct connection*) ;
 scalar_t__ connGetState (struct connection*) ;
 int connWrite (struct connection*,scalar_t__,scalar_t__) ;
 int freeClient (TYPE_1__*) ;
 int rdbPipeWriteHandlerConnRemoved (struct connection*) ;
 TYPE_2__ server ;
 int serverAssert (int) ;
 int serverLog (int ,char*,int ) ;

void rdbPipeWriteHandler(struct connection *conn) {
    serverAssert(server.rdb_pipe_bufflen>0);
    client *slave = connGetPrivateData(conn);
    int nwritten;
    if ((nwritten = connWrite(conn, server.rdb_pipe_buff + slave->repldboff,
                              server.rdb_pipe_bufflen - slave->repldboff)) == -1)
    {
        if (connGetState(conn) == CONN_STATE_CONNECTED)
            return;
        serverLog(LL_WARNING,"Write error sending DB to replica: %s",
            connGetLastError(conn));
        freeClient(slave);
        return;
    } else {
        slave->repldboff += nwritten;
        server.stat_net_output_bytes += nwritten;
        if (slave->repldboff < server.rdb_pipe_bufflen)
            return;
    }
    rdbPipeWriteHandlerConnRemoved(conn);
}
