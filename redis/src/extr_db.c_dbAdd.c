
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int sds ;
struct TYPE_12__ {scalar_t__ type; int ptr; } ;
typedef TYPE_1__ robj ;
struct TYPE_13__ {int dict; } ;
typedef TYPE_2__ redisDb ;
struct TYPE_14__ {scalar_t__ cluster_enabled; } ;


 int DICT_OK ;
 scalar_t__ OBJ_LIST ;
 scalar_t__ OBJ_ZSET ;
 int dictAdd (int ,int ,TYPE_1__*) ;
 int sdsdup (int ) ;
 TYPE_7__ server ;
 int serverAssertWithInfo (int *,TYPE_1__*,int) ;
 int signalKeyAsReady (TYPE_2__*,TYPE_1__*) ;
 int slotToKeyAdd (TYPE_1__*) ;

void dbAdd(redisDb *db, robj *key, robj *val) {
    sds copy = sdsdup(key->ptr);
    int retval = dictAdd(db->dict, copy, val);

    serverAssertWithInfo(((void*)0),key,retval == DICT_OK);
    if (val->type == OBJ_LIST ||
        val->type == OBJ_ZSET)
        signalKeyAsReady(db, key);
    if (server.cluster_enabled) slotToKeyAdd(key);
}
