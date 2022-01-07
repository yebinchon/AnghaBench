
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int zsl; int dict; } ;
typedef TYPE_1__ zset ;
struct TYPE_8__ {int encoding; } ;
typedef TYPE_2__ robj ;


 int OBJ_ENCODING_SKIPLIST ;
 int OBJ_ZSET ;
 TYPE_2__* createObject (int ,TYPE_1__*) ;
 int dictCreate (int *,int *) ;
 TYPE_1__* zmalloc (int) ;
 int zsetDictType ;
 int zslCreate () ;

robj *createZsetObject(void) {
    zset *zs = zmalloc(sizeof(*zs));
    robj *o;

    zs->dict = dictCreate(&zsetDictType,((void*)0));
    zs->zsl = zslCreate();
    o = createObject(OBJ_ZSET,zs);
    o->encoding = OBJ_ENCODING_SKIPLIST;
    return o;
}
