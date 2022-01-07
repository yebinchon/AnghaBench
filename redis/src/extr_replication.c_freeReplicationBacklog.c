
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * repl_backlog; int slaves; } ;


 scalar_t__ listLength (int ) ;
 TYPE_1__ server ;
 int serverAssert (int) ;
 int zfree (int *) ;

void freeReplicationBacklog(void) {
    serverAssert(listLength(server.slaves) == 0);
    zfree(server.repl_backlog);
    server.repl_backlog = ((void*)0);
}
