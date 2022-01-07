
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int lru; int ptr; } ;
typedef TYPE_1__ robj ;
struct TYPE_12__ {int dict; } ;
typedef TYPE_2__ redisDb ;
typedef int dictEntry ;
struct TYPE_13__ {int maxmemory_policy; scalar_t__ lazyfree_lazy_server_del; } ;


 int MAXMEMORY_FLAG_LFU ;
 int * dictFind (int ,int ) ;
 int dictFreeVal (int ,int *) ;
 TYPE_1__* dictGetVal (int *) ;
 int dictSetVal (int ,int *,TYPE_1__*) ;
 int freeObjAsync (TYPE_1__*) ;
 TYPE_4__ server ;
 int serverAssertWithInfo (int *,TYPE_1__*,int ) ;

void dbOverwrite(redisDb *db, robj *key, robj *val) {
    dictEntry *de = dictFind(db->dict,key->ptr);

    serverAssertWithInfo(((void*)0),key,de != ((void*)0));
    dictEntry auxentry = *de;
    robj *old = dictGetVal(de);
    if (server.maxmemory_policy & MAXMEMORY_FLAG_LFU) {
        val->lru = old->lru;
    }
    dictSetVal(db->dict, de, val);

    if (server.lazyfree_lazy_server_del) {
        freeObjAsync(old);
        dictSetVal(db->dict, &auxentry, ((void*)0));
    }

    dictFreeVal(db->dict, &auxentry);
}
