
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ repl_state; } ;


 void* REPL_STATE_CONNECT ;
 scalar_t__ REPL_STATE_CONNECTING ;
 scalar_t__ REPL_STATE_TRANSFER ;
 int replicationAbortSyncTransfer () ;
 TYPE_1__ server ;
 scalar_t__ slaveIsInHandshakeState () ;
 int undoConnectWithMaster () ;

int cancelReplicationHandshake(void) {
    if (server.repl_state == REPL_STATE_TRANSFER) {
        replicationAbortSyncTransfer();
        server.repl_state = REPL_STATE_CONNECT;
    } else if (server.repl_state == REPL_STATE_CONNECTING ||
               slaveIsInHandshakeState())
    {
        undoConnectWithMaster();
        server.repl_state = REPL_STATE_CONNECT;
    } else {
        return 0;
    }
    return 1;
}
