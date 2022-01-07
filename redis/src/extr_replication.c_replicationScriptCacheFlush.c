
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int repl_scriptcache_fifo; int repl_scriptcache_dict; } ;


 int dictEmpty (int ,int *) ;
 int listCreate () ;
 int listRelease (int ) ;
 TYPE_1__ server ;

void replicationScriptCacheFlush(void) {
    dictEmpty(server.repl_scriptcache_dict,((void*)0));
    listRelease(server.repl_scriptcache_fifo);
    server.repl_scriptcache_fifo = listCreate();
}
