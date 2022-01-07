
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ri; } ;
typedef TYPE_1__ RedisModuleDictIter ;


 int raxStop (int *) ;
 int zfree (TYPE_1__*) ;

void RM_DictIteratorStop(RedisModuleDictIter *di) {
    raxStop(&di->ri);
    zfree(di);
}
