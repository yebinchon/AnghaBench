
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int ptr; } ;
typedef TYPE_1__ robj ;
struct TYPE_7__ {int expires; int dict; } ;
typedef TYPE_2__ redisDb ;


 scalar_t__ DICT_OK ;
 scalar_t__ dictDelete (int ,int ) ;
 int * dictFind (int ,int ) ;
 int serverAssertWithInfo (int *,TYPE_1__*,int ) ;

int removeExpire(redisDb *db, robj *key) {


    serverAssertWithInfo(((void*)0),key,dictFind(db->dict,key->ptr) != ((void*)0));
    return dictDelete(db->expires,key->ptr) == DICT_OK;
}
