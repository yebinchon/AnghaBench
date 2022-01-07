
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int repl_scriptcache_size; int repl_scriptcache_fifo; int repl_scriptcache_dict; } ;


 int dictCreate (int *,int *) ;
 int listCreate () ;
 int replScriptCacheDictType ;
 TYPE_1__ server ;

void replicationScriptCacheInit(void) {
    server.repl_scriptcache_size = 10000;
    server.repl_scriptcache_dict = dictCreate(&replScriptCacheDictType,((void*)0));
    server.repl_scriptcache_fifo = listCreate();
}
