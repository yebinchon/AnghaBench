
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int refcount; int ptr; } ;
typedef TYPE_1__ robj ;
struct TYPE_11__ {int dict; int expires; } ;
typedef TYPE_2__ redisDb ;
typedef int dictEntry ;
struct TYPE_12__ {scalar_t__ cluster_enabled; } ;


 int BIO_LAZY_FREE ;
 size_t LAZYFREE_THRESHOLD ;
 int atomicIncr (int ,int) ;
 int bioCreateBackgroundJob (int ,TYPE_1__*,int *,int *) ;
 int dictDelete (int ,int ) ;
 int dictFreeUnlinkedEntry (int ,int *) ;
 TYPE_1__* dictGetVal (int *) ;
 int dictSetVal (int ,int *,int *) ;
 scalar_t__ dictSize (int ) ;
 int * dictUnlink (int ,int ) ;
 size_t lazyfreeGetFreeEffort (TYPE_1__*) ;
 int lazyfree_objects ;
 TYPE_4__ server ;
 int slotToKeyDel (TYPE_1__*) ;

int dbAsyncDelete(redisDb *db, robj *key) {


    if (dictSize(db->expires) > 0) dictDelete(db->expires,key->ptr);




    dictEntry *de = dictUnlink(db->dict,key->ptr);
    if (de) {
        robj *val = dictGetVal(de);
        size_t free_effort = lazyfreeGetFreeEffort(val);
        if (free_effort > LAZYFREE_THRESHOLD && val->refcount == 1) {
            atomicIncr(lazyfree_objects,1);
            bioCreateBackgroundJob(BIO_LAZY_FREE,val,((void*)0),((void*)0));
            dictSetVal(db->dict,de,((void*)0));
        }
    }



    if (de) {
        dictFreeUnlinkedEntry(db->dict,de);
        if (server.cluster_enabled) slotToKeyDel(key);
        return 1;
    } else {
        return 0;
    }
}
