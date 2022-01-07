
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int lru; int ptr; } ;
typedef TYPE_1__ robj ;
struct TYPE_10__ {int dict; } ;
typedef TYPE_2__ redisDb ;
typedef int dictEntry ;
struct TYPE_11__ {int maxmemory_policy; } ;


 int LOOKUP_NOTOUCH ;
 int LRU_CLOCK () ;
 int MAXMEMORY_FLAG_LFU ;
 int * dictFind (int ,int ) ;
 TYPE_1__* dictGetVal (int *) ;
 int hasActiveChildProcess () ;
 TYPE_4__ server ;
 int updateLFU (TYPE_1__*) ;

robj *lookupKey(redisDb *db, robj *key, int flags) {
    dictEntry *de = dictFind(db->dict,key->ptr);
    if (de) {
        robj *val = dictGetVal(de);




        if (!hasActiveChildProcess() && !(flags & LOOKUP_NOTOUCH)){
            if (server.maxmemory_policy & MAXMEMORY_FLAG_LFU) {
                updateLFU(val);
            } else {
                val->lru = LRU_CLOCK();
            }
        }
        return val;
    } else {
        return ((void*)0);
    }
}
