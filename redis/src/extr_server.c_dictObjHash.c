
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
typedef int sds ;
struct TYPE_2__ {scalar_t__ ptr; } ;
typedef TYPE_1__ robj ;


 int dictGenHashFunction (scalar_t__,int ) ;
 int sdslen (int ) ;

uint64_t dictObjHash(const void *key) {
    const robj *o = key;
    return dictGenHashFunction(o->ptr, sdslen((sds)o->ptr));
}
