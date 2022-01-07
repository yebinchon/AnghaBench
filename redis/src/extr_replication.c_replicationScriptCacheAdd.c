
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int sds ;
typedef int listNode ;
struct TYPE_2__ {scalar_t__ repl_scriptcache_size; int repl_scriptcache_fifo; int repl_scriptcache_dict; } ;


 int DICT_OK ;
 int dictAdd (int ,int ,int *) ;
 int dictDelete (int ,int ) ;
 int listAddNodeHead (int ,int ) ;
 int listDelNode (int ,int *) ;
 int * listLast (int ) ;
 scalar_t__ listLength (int ) ;
 int listNodeValue (int *) ;
 int sdsdup (int ) ;
 TYPE_1__ server ;
 int serverAssert (int) ;

void replicationScriptCacheAdd(sds sha1) {
    int retval;
    sds key = sdsdup(sha1);


    if (listLength(server.repl_scriptcache_fifo) == server.repl_scriptcache_size)
    {
        listNode *ln = listLast(server.repl_scriptcache_fifo);
        sds oldest = listNodeValue(ln);

        retval = dictDelete(server.repl_scriptcache_dict,oldest);
        serverAssert(retval == DICT_OK);
        listDelNode(server.repl_scriptcache_fifo,ln);
    }


    retval = dictAdd(server.repl_scriptcache_dict,key,((void*)0));
    listAddNodeHead(server.repl_scriptcache_fifo,key);
    serverAssert(retval == DICT_OK);
}
