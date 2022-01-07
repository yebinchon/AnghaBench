
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int listNode ;
typedef int listIter ;
struct TYPE_7__ {int flags; int conn; } ;
typedef TYPE_1__ client ;
struct TYPE_8__ {scalar_t__ aof_state; scalar_t__ aof_fsync; int clients_pending_write; } ;


 scalar_t__ AOF_FSYNC_ALWAYS ;
 scalar_t__ AOF_ON ;
 int CLIENT_PENDING_WRITE ;
 int CLIENT_PROTECTED ;
 scalar_t__ C_ERR ;
 scalar_t__ clientHasPendingReplies (TYPE_1__*) ;
 scalar_t__ connSetWriteHandlerWithBarrier (int ,int ,int) ;
 int freeClientAsync (TYPE_1__*) ;
 int listDelNode (int ,int *) ;
 int listLength (int ) ;
 int * listNext (int *) ;
 TYPE_1__* listNodeValue (int *) ;
 int listRewind (int ,int *) ;
 int sendReplyToClient ;
 TYPE_3__ server ;
 scalar_t__ writeToClient (TYPE_1__*,int ) ;

int handleClientsWithPendingWrites(void) {
    listIter li;
    listNode *ln;
    int processed = listLength(server.clients_pending_write);

    listRewind(server.clients_pending_write,&li);
    while((ln = listNext(&li))) {
        client *c = listNodeValue(ln);
        c->flags &= ~CLIENT_PENDING_WRITE;
        listDelNode(server.clients_pending_write,ln);



        if (c->flags & CLIENT_PROTECTED) continue;


        if (writeToClient(c,0) == C_ERR) continue;



        if (clientHasPendingReplies(c)) {
            int ae_barrier = 0;





            if (server.aof_state == AOF_ON &&
                server.aof_fsync == AOF_FSYNC_ALWAYS)
            {
                ae_barrier = 1;
            }
            if (connSetWriteHandlerWithBarrier(c->conn, sendReplyToClient, ae_barrier) == C_ERR) {
                freeClientAsync(c);
            }
        }
    }
    return processed;
}
