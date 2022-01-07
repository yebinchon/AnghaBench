
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ ssize_t ;
typedef int buf ;
struct TYPE_2__ {int aof_child_diff; int aof_pipe_read_data_from_parent; } ;


 scalar_t__ read (int ,char*,int) ;
 int sdscatlen (int ,char*,scalar_t__) ;
 TYPE_1__ server ;

ssize_t aofReadDiffFromParent(void) {
    char buf[65536];
    ssize_t nread, total = 0;

    while ((nread =
            read(server.aof_pipe_read_data_from_parent,buf,sizeof(buf))) > 0) {
        server.aof_child_diff = sdscatlen(server.aof_child_diff,buf,nread);
        total += nread;
    }
    return total;
}
