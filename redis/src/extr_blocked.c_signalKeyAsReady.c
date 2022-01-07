
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int robj ;
struct TYPE_7__ {int ready_keys; int blocking_keys; } ;
typedef TYPE_1__ redisDb ;
struct TYPE_8__ {TYPE_1__* db; int * key; } ;
typedef TYPE_2__ readyList ;
struct TYPE_9__ {int ready_keys; } ;


 scalar_t__ DICT_OK ;
 scalar_t__ dictAdd (int ,int *,int *) ;
 int * dictFind (int ,int *) ;
 int incrRefCount (int *) ;
 int listAddNodeTail (int ,TYPE_2__*) ;
 TYPE_5__ server ;
 int serverAssert (int) ;
 TYPE_2__* zmalloc (int) ;

void signalKeyAsReady(redisDb *db, robj *key) {
    readyList *rl;


    if (dictFind(db->blocking_keys,key) == ((void*)0)) return;


    if (dictFind(db->ready_keys,key) != ((void*)0)) return;


    rl = zmalloc(sizeof(*rl));
    rl->key = key;
    rl->db = db;
    incrRefCount(key);
    listAddNodeTail(server.ready_keys,rl);




    incrRefCount(key);
    serverAssert(dictAdd(db->ready_keys,key,((void*)0)) == DICT_OK);
}
