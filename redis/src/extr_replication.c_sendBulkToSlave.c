
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int ssize_t ;
typedef int connection ;
struct TYPE_6__ {char* replpreamble; int repldbfd; scalar_t__ repldboff; scalar_t__ repldbsize; int conn; } ;
typedef TYPE_1__ client ;
struct TYPE_7__ {int stat_net_output_bytes; } ;


 scalar_t__ CONN_STATE_CONNECTED ;
 int LL_VERBOSE ;
 int LL_WARNING ;
 int PROTO_IOBUF_LEN ;
 int SEEK_SET ;
 int close (int) ;
 char* connGetLastError (int *) ;
 TYPE_1__* connGetPrivateData (int *) ;
 scalar_t__ connGetState (int *) ;
 int connSetWriteHandler (int ,int *) ;
 int connWrite (int *,char*,int) ;
 int errno ;
 int freeClient (TYPE_1__*) ;
 int lseek (int,scalar_t__,int ) ;
 int putSlaveOnline (TYPE_1__*) ;
 int read (int,char*,int) ;
 int sdsfree (char*) ;
 scalar_t__ sdslen (char*) ;
 int sdsrange (char*,int,int) ;
 TYPE_2__ server ;
 int serverLog (int ,char*,char*) ;
 char* strerror (int ) ;

void sendBulkToSlave(connection *conn) {
    client *slave = connGetPrivateData(conn);
    char buf[PROTO_IOBUF_LEN];
    ssize_t nwritten, buflen;




    if (slave->replpreamble) {
        nwritten = connWrite(conn,slave->replpreamble,sdslen(slave->replpreamble));
        if (nwritten == -1) {
            serverLog(LL_VERBOSE,"Write error sending RDB preamble to replica: %s",
                connGetLastError(conn));
            freeClient(slave);
            return;
        }
        server.stat_net_output_bytes += nwritten;
        sdsrange(slave->replpreamble,nwritten,-1);
        if (sdslen(slave->replpreamble) == 0) {
            sdsfree(slave->replpreamble);
            slave->replpreamble = ((void*)0);

        } else {
            return;
        }
    }


    lseek(slave->repldbfd,slave->repldboff,SEEK_SET);
    buflen = read(slave->repldbfd,buf,PROTO_IOBUF_LEN);
    if (buflen <= 0) {
        serverLog(LL_WARNING,"Read error sending DB to replica: %s",
            (buflen == 0) ? "premature EOF" : strerror(errno));
        freeClient(slave);
        return;
    }
    if ((nwritten = connWrite(conn,buf,buflen)) == -1) {
        if (connGetState(conn) != CONN_STATE_CONNECTED) {
            serverLog(LL_WARNING,"Write error sending DB to replica: %s",
                connGetLastError(conn));
            freeClient(slave);
        }
        return;
    }
    slave->repldboff += nwritten;
    server.stat_net_output_bytes += nwritten;
    if (slave->repldboff == slave->repldbsize) {
        close(slave->repldbfd);
        slave->repldbfd = -1;
        connSetWriteHandler(slave->conn,((void*)0));
        putSlaveOnline(slave);
    }
}
