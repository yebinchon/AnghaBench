
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int sds ;
struct TYPE_2__ {int repl_scriptcache_dict; } ;


 int * dictFind (int ,int ) ;
 TYPE_1__ server ;

int replicationScriptCacheExists(sds sha1) {
    return dictFind(server.repl_scriptcache_dict,sha1) != ((void*)0);
}
