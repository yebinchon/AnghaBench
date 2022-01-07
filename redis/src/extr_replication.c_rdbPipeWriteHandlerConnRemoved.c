
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct connection {int dummy; } ;
struct TYPE_2__ {scalar_t__ rdb_pipe_numconns_writing; int rdb_pipe_read; int el; } ;


 scalar_t__ AE_ERR ;
 int AE_READABLE ;
 scalar_t__ aeCreateFileEvent (int ,int ,int ,int ,int *) ;
 int connHasWriteHandler (struct connection*) ;
 int connSetWriteHandler (struct connection*,int *) ;
 int rdbPipeReadHandler ;
 TYPE_1__ server ;
 int serverPanic (char*) ;

void rdbPipeWriteHandlerConnRemoved(struct connection *conn) {
    if (!connHasWriteHandler(conn))
        return;
    connSetWriteHandler(conn, ((void*)0));
    server.rdb_pipe_numconns_writing--;

    if (server.rdb_pipe_numconns_writing == 0) {
        if (aeCreateFileEvent(server.el, server.rdb_pipe_read, AE_READABLE, rdbPipeReadHandler,((void*)0)) == AE_ERR) {
            serverPanic("Unrecoverable error creating server.rdb_pipe_read file event.");
        }
    }
}
