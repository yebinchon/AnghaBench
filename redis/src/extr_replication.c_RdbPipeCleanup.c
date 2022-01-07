
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ rdb_pipe_bufflen; int * rdb_pipe_buff; scalar_t__ rdb_pipe_numconns_writing; scalar_t__ rdb_pipe_numconns; int * rdb_pipe_conns; int rdb_pipe_read; } ;


 int checkChildrenDone () ;
 int close (int ) ;
 TYPE_1__ server ;
 int zfree (int *) ;

void RdbPipeCleanup() {
    close(server.rdb_pipe_read);
    zfree(server.rdb_pipe_conns);
    server.rdb_pipe_conns = ((void*)0);
    server.rdb_pipe_numconns = 0;
    server.rdb_pipe_numconns_writing = 0;
    zfree(server.rdb_pipe_buff);
    server.rdb_pipe_buff = ((void*)0);
    server.rdb_pipe_bufflen = 0;



    checkChildrenDone();
}
