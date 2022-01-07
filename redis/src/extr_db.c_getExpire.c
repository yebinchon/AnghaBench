
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int ptr; } ;
typedef TYPE_1__ robj ;
struct TYPE_7__ {int dict; int expires; } ;
typedef TYPE_2__ redisDb ;
typedef int dictEntry ;


 int * dictFind (int ,int ) ;
 long long dictGetSignedIntegerVal (int *) ;
 scalar_t__ dictSize (int ) ;
 int serverAssertWithInfo (int *,TYPE_1__*,int ) ;

long long getExpire(redisDb *db, robj *key) {
    dictEntry *de;


    if (dictSize(db->expires) == 0 ||
       (de = dictFind(db->expires,key->ptr)) == ((void*)0)) return -1;



    serverAssertWithInfo(((void*)0),key,dictFind(db->dict,key->ptr) != ((void*)0));
    return dictGetSignedIntegerVal(de);
}
