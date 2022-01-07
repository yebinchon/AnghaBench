
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int ptr; } ;
typedef TYPE_1__ robj ;
struct TYPE_8__ {int dict; int expires; } ;
typedef TYPE_2__ redisDb ;
struct TYPE_9__ {scalar_t__ cluster_enabled; } ;


 scalar_t__ DICT_OK ;
 scalar_t__ dictDelete (int ,int ) ;
 scalar_t__ dictSize (int ) ;
 TYPE_4__ server ;
 int slotToKeyDel (TYPE_1__*) ;

int dbSyncDelete(redisDb *db, robj *key) {


    if (dictSize(db->expires) > 0) dictDelete(db->expires,key->ptr);
    if (dictDelete(db->dict,key->ptr) == DICT_OK) {
        if (server.cluster_enabled) slotToKeyDel(key);
        return 1;
    } else {
        return 0;
    }
}
