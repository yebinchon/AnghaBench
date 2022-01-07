
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ master_repl_offset; scalar_t__ repl_backlog_off; scalar_t__ repl_backlog_idx; scalar_t__ repl_backlog_histlen; int repl_backlog_size; int * repl_backlog; } ;


 TYPE_1__ server ;
 int serverAssert (int ) ;
 int * zmalloc (int ) ;

void createReplicationBacklog(void) {
    serverAssert(server.repl_backlog == ((void*)0));
    server.repl_backlog = zmalloc(server.repl_backlog_size);
    server.repl_backlog_histlen = 0;
    server.repl_backlog_idx = 0;




    server.repl_backlog_off = server.master_repl_offset+1;
}
