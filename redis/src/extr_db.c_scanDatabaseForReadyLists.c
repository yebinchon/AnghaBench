
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ type; } ;
typedef TYPE_1__ robj ;
struct TYPE_11__ {int blocking_keys; } ;
typedef TYPE_2__ redisDb ;
typedef int dictIterator ;
typedef int dictEntry ;


 int LOOKUP_NOTOUCH ;
 scalar_t__ OBJ_LIST ;
 scalar_t__ OBJ_STREAM ;
 scalar_t__ OBJ_ZSET ;
 TYPE_1__* dictGetKey (int *) ;
 int * dictGetSafeIterator (int ) ;
 int * dictNext (int *) ;
 int dictReleaseIterator (int *) ;
 TYPE_1__* lookupKey (TYPE_2__*,TYPE_1__*,int ) ;
 int signalKeyAsReady (TYPE_2__*,TYPE_1__*) ;

void scanDatabaseForReadyLists(redisDb *db) {
    dictEntry *de;
    dictIterator *di = dictGetSafeIterator(db->blocking_keys);
    while((de = dictNext(di)) != ((void*)0)) {
        robj *key = dictGetKey(de);
        robj *value = lookupKey(db,key,LOOKUP_NOTOUCH);
        if (value && (value->type == OBJ_LIST ||
                      value->type == OBJ_STREAM ||
                      value->type == OBJ_ZSET))
            signalKeyAsReady(db, key);
    }
    dictReleaseIterator(di);
}
