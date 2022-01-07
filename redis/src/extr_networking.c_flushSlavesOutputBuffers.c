
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int listNode ;
typedef int listIter ;
struct TYPE_6__ {int flags; scalar_t__ replstate; int repl_put_online_on_ack; int conn; } ;
typedef TYPE_1__ client ;
struct TYPE_7__ {int slaves; } ;


 int CLIENT_PENDING_WRITE ;
 scalar_t__ SLAVE_STATE_ONLINE ;
 scalar_t__ clientHasPendingReplies (TYPE_1__*) ;
 scalar_t__ connHasWriteHandler (int ) ;
 int * listNext (int *) ;
 TYPE_1__* listNodeValue (int *) ;
 int listRewind (int ,int *) ;
 TYPE_3__ server ;
 int writeToClient (TYPE_1__*,int ) ;

void flushSlavesOutputBuffers(void) {
    listIter li;
    listNode *ln;

    listRewind(server.slaves,&li);
    while((ln = listNext(&li))) {
        client *slave = listNodeValue(ln);
        int can_receive_writes = connHasWriteHandler(slave->conn) ||
                                 (slave->flags & CLIENT_PENDING_WRITE);
        if (slave->replstate == SLAVE_STATE_ONLINE &&
            can_receive_writes &&
            !slave->repl_put_online_on_ack &&
            clientHasPendingReplies(slave))
        {
            writeToClient(slave,0);
        }
    }
}
