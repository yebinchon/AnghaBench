
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int ssize_t ;
typedef int connection ;
struct TYPE_8__ {int totlen; int sig; } ;
typedef TYPE_1__ clusterMsg ;
struct TYPE_9__ {scalar_t__ rcvbuf; } ;
typedef TYPE_2__ clusterLink ;
typedef int buf ;


 unsigned int CLUSTERMSG_MIN_LEN ;
 scalar_t__ CONN_STATE_CONNECTED ;
 int LL_DEBUG ;
 int LL_WARNING ;
 scalar_t__ clusterProcessPacket (TYPE_2__*) ;
 char* connGetLastError (int *) ;
 TYPE_2__* connGetPrivateData (int *) ;
 scalar_t__ connGetState (int *) ;
 int connRead (int *,TYPE_1__*,unsigned int) ;
 int handleLinkIOError (TYPE_2__*) ;
 scalar_t__ memcmp (int ,char*,int) ;
 unsigned int ntohl (int ) ;
 scalar_t__ sdscatlen (scalar_t__,TYPE_1__*,int) ;
 scalar_t__ sdsempty () ;
 int sdsfree (scalar_t__) ;
 unsigned int sdslen (scalar_t__) ;
 int serverLog (int ,char*,...) ;

void clusterReadHandler(connection *conn) {
    clusterMsg buf[1];
    ssize_t nread;
    clusterMsg *hdr;
    clusterLink *link = connGetPrivateData(conn);
    unsigned int readlen, rcvbuflen;

    while(1) {
        rcvbuflen = sdslen(link->rcvbuf);
        if (rcvbuflen < 8) {


            readlen = 8 - rcvbuflen;
        } else {

            hdr = (clusterMsg*) link->rcvbuf;
            if (rcvbuflen == 8) {


                if (memcmp(hdr->sig,"RCmb",4) != 0 ||
                    ntohl(hdr->totlen) < CLUSTERMSG_MIN_LEN)
                {
                    serverLog(LL_WARNING,
                        "Bad message length or signature received "
                        "from Cluster bus.");
                    handleLinkIOError(link);
                    return;
                }
            }
            readlen = ntohl(hdr->totlen) - rcvbuflen;
            if (readlen > sizeof(buf)) readlen = sizeof(buf);
        }

        nread = connRead(conn,buf,readlen);
        if (nread == -1 && (connGetState(conn) == CONN_STATE_CONNECTED)) return;

        if (nread <= 0) {

            serverLog(LL_DEBUG,"I/O error reading from node link: %s",
                (nread == 0) ? "connection closed" : connGetLastError(conn));
            handleLinkIOError(link);
            return;
        } else {

            link->rcvbuf = sdscatlen(link->rcvbuf,buf,nread);
            hdr = (clusterMsg*) link->rcvbuf;
            rcvbuflen += nread;
        }


        if (rcvbuflen >= 8 && rcvbuflen == ntohl(hdr->totlen)) {
            if (clusterProcessPacket(link)) {
                sdsfree(link->rcvbuf);
                link->rcvbuf = sdsempty();
            } else {
                return;
            }
        }
    }
}
