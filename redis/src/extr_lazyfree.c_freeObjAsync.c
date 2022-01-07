
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int refcount; } ;
typedef TYPE_1__ robj ;


 int BIO_LAZY_FREE ;
 size_t LAZYFREE_THRESHOLD ;
 int atomicIncr (int ,int) ;
 int bioCreateBackgroundJob (int ,TYPE_1__*,int *,int *) ;
 int decrRefCount (TYPE_1__*) ;
 size_t lazyfreeGetFreeEffort (TYPE_1__*) ;
 int lazyfree_objects ;

void freeObjAsync(robj *o) {
    size_t free_effort = lazyfreeGetFreeEffort(o);
    if (free_effort > LAZYFREE_THRESHOLD && o->refcount == 1) {
        atomicIncr(lazyfree_objects,1);
        bioCreateBackgroundJob(BIO_LAZY_FREE,o,((void*)0),((void*)0));
    } else {
        decrRefCount(o);
    }
}
