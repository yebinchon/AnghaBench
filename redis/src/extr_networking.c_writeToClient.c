
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ ssize_t ;
struct TYPE_8__ {size_t used; scalar_t__ size; scalar_t__ buf; } ;
typedef TYPE_1__ clientReplyBlock ;
struct TYPE_9__ {size_t bufpos; size_t sentlen; scalar_t__ reply_bytes; int flags; int conn; int lastinteraction; int reply; scalar_t__ buf; } ;
typedef TYPE_2__ client ;
struct TYPE_10__ {scalar_t__ maxmemory; int unixtime; int stat_net_output_bytes; } ;


 int CLIENT_CLOSE_AFTER_REPLY ;
 int CLIENT_MASTER ;
 int CLIENT_SLAVE ;
 scalar_t__ CONN_STATE_CONNECTED ;
 int C_ERR ;
 int C_OK ;
 int LL_VERBOSE ;
 scalar_t__ NET_MAX_WRITES_PER_EVENT ;
 scalar_t__ clientHasPendingReplies (TYPE_2__*) ;
 int connGetLastError (int ) ;
 scalar_t__ connGetState (int ) ;
 int connSetWriteHandler (int ,int *) ;
 scalar_t__ connWrite (int ,scalar_t__,size_t) ;
 int freeClientAsync (TYPE_2__*) ;
 int listDelNode (int ,int ) ;
 int listFirst (int ) ;
 scalar_t__ listLength (int ) ;
 TYPE_1__* listNodeValue (int ) ;
 TYPE_4__ server ;
 int serverAssert (int) ;
 int serverLog (int ,char*,int ) ;
 scalar_t__ zmalloc_used_memory () ;

int writeToClient(client *c, int handler_installed) {
    ssize_t nwritten = 0, totwritten = 0;
    size_t objlen;
    clientReplyBlock *o;

    while(clientHasPendingReplies(c)) {
        if (c->bufpos > 0) {
            nwritten = connWrite(c->conn,c->buf+c->sentlen,c->bufpos-c->sentlen);
            if (nwritten <= 0) break;
            c->sentlen += nwritten;
            totwritten += nwritten;



            if ((int)c->sentlen == c->bufpos) {
                c->bufpos = 0;
                c->sentlen = 0;
            }
        } else {
            o = listNodeValue(listFirst(c->reply));
            objlen = o->used;

            if (objlen == 0) {
                c->reply_bytes -= o->size;
                listDelNode(c->reply,listFirst(c->reply));
                continue;
            }

            nwritten = connWrite(c->conn, o->buf + c->sentlen, objlen - c->sentlen);
            if (nwritten <= 0) break;
            c->sentlen += nwritten;
            totwritten += nwritten;


            if (c->sentlen == objlen) {
                c->reply_bytes -= o->size;
                listDelNode(c->reply,listFirst(c->reply));
                c->sentlen = 0;


                if (listLength(c->reply) == 0)
                    serverAssert(c->reply_bytes == 0);
            }
        }
        if (totwritten > NET_MAX_WRITES_PER_EVENT &&
            (server.maxmemory == 0 ||
             zmalloc_used_memory() < server.maxmemory) &&
            !(c->flags & CLIENT_SLAVE)) break;
    }
    server.stat_net_output_bytes += totwritten;
    if (nwritten == -1) {
        if (connGetState(c->conn) == CONN_STATE_CONNECTED) {
            nwritten = 0;
        } else {
            serverLog(LL_VERBOSE,
                "Error writing to client: %s", connGetLastError(c->conn));
            freeClientAsync(c);
            return C_ERR;
        }
    }
    if (totwritten > 0) {




        if (!(c->flags & CLIENT_MASTER)) c->lastinteraction = server.unixtime;
    }
    if (!clientHasPendingReplies(c)) {
        c->sentlen = 0;




        if (handler_installed) connSetWriteHandler(c->conn, ((void*)0));


        if (c->flags & CLIENT_CLOSE_AFTER_REPLY) {
            freeClientAsync(c);
            return C_ERR;
        }
    }
    return C_OK;
}
