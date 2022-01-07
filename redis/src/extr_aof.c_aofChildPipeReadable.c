
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int aeEventLoop ;
struct TYPE_2__ {int aof_stop_sending_diff; int aof_pipe_read_ack_from_child; int el; int aof_pipe_write_ack_to_child; } ;


 int AE_READABLE ;
 int LL_NOTICE ;
 int LL_WARNING ;
 int UNUSED (int) ;
 int aeDeleteFileEvent (int ,int ,int ) ;
 int errno ;
 int read (int,char*,int) ;
 TYPE_1__ server ;
 int serverLog (int ,char*,...) ;
 int strerror (int ) ;
 int write (int ,char*,int) ;

void aofChildPipeReadable(aeEventLoop *el, int fd, void *privdata, int mask) {
    char byte;
    UNUSED(el);
    UNUSED(privdata);
    UNUSED(mask);

    if (read(fd,&byte,1) == 1 && byte == '!') {
        serverLog(LL_NOTICE,"AOF rewrite child asks to stop sending diffs.");
        server.aof_stop_sending_diff = 1;
        if (write(server.aof_pipe_write_ack_to_child,"!",1) != 1) {




            serverLog(LL_WARNING,"Can't send ACK to AOF child: %s",
                strerror(errno));
        }
    }


    aeDeleteFileEvent(server.el,server.aof_pipe_read_ack_from_child,AE_READABLE);
}
