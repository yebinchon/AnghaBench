
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ repl_state; int repl_transfer_fd; int * repl_transfer_tmpfile; } ;


 scalar_t__ REPL_STATE_TRANSFER ;
 int close (int) ;
 TYPE_1__ server ;
 int serverAssert (int) ;
 int undoConnectWithMaster () ;
 int unlink (int *) ;
 int zfree (int *) ;

void replicationAbortSyncTransfer(void) {
    serverAssert(server.repl_state == REPL_STATE_TRANSFER);
    undoConnectWithMaster();
    if (server.repl_transfer_fd!=-1) {
        close(server.repl_transfer_fd);
        unlink(server.repl_transfer_tmpfile);
        zfree(server.repl_transfer_tmpfile);
        server.repl_transfer_tmpfile = ((void*)0);
        server.repl_transfer_fd = -1;
    }
}
