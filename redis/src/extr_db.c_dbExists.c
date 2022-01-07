
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int ptr; } ;
typedef TYPE_1__ robj ;
struct TYPE_6__ {int dict; } ;
typedef TYPE_2__ redisDb ;


 int * dictFind (int ,int ) ;

int dbExists(redisDb *db, robj *key) {
    return dictFind(db->dict,key->ptr) != ((void*)0);
}
