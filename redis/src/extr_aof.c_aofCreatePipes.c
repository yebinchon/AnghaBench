
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int aof_pipe_write_data_to_child; int aof_pipe_read_data_from_parent; int aof_pipe_write_ack_to_parent; int aof_pipe_read_ack_from_child; int aof_pipe_write_ack_to_child; int aof_pipe_read_ack_from_parent; scalar_t__ aof_stop_sending_diff; int el; } ;


 scalar_t__ AE_ERR ;
 int AE_READABLE ;
 scalar_t__ ANET_OK ;
 int C_ERR ;
 int C_OK ;
 int LL_WARNING ;
 scalar_t__ aeCreateFileEvent (int ,int,int ,int ,int *) ;
 scalar_t__ anetNonBlock (int *,int) ;
 int aofChildPipeReadable ;
 int close (int) ;
 int errno ;
 int pipe (int*) ;
 TYPE_1__ server ;
 int serverLog (int ,char*,int ) ;
 int strerror (int ) ;

int aofCreatePipes(void) {
    int fds[6] = {-1, -1, -1, -1, -1, -1};
    int j;

    if (pipe(fds) == -1) goto error;
    if (pipe(fds+2) == -1) goto error;
    if (pipe(fds+4) == -1) goto error;

    if (anetNonBlock(((void*)0),fds[0]) != ANET_OK) goto error;
    if (anetNonBlock(((void*)0),fds[1]) != ANET_OK) goto error;
    if (aeCreateFileEvent(server.el, fds[2], AE_READABLE, aofChildPipeReadable, ((void*)0)) == AE_ERR) goto error;

    server.aof_pipe_write_data_to_child = fds[1];
    server.aof_pipe_read_data_from_parent = fds[0];
    server.aof_pipe_write_ack_to_parent = fds[3];
    server.aof_pipe_read_ack_from_child = fds[2];
    server.aof_pipe_write_ack_to_child = fds[5];
    server.aof_pipe_read_ack_from_parent = fds[4];
    server.aof_stop_sending_diff = 0;
    return C_OK;

error:
    serverLog(LL_WARNING,"Error opening /setting AOF rewrite IPC pipes: %s",
        strerror(errno));
    for (j = 0; j < 6; j++) if(fds[j] != -1) close(fds[j]);
    return C_ERR;
}
