
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int type; int refcount; int lru; void* ptr; int encoding; } ;
typedef TYPE_1__ robj ;
struct TYPE_6__ {int maxmemory_policy; } ;


 int LFUGetTimeInMinutes () ;
 int LFU_INIT_VAL ;
 int LRU_CLOCK () ;
 int MAXMEMORY_FLAG_LFU ;
 int OBJ_ENCODING_RAW ;
 TYPE_3__ server ;
 TYPE_1__* zmalloc (int) ;

robj *createObject(int type, void *ptr) {
    robj *o = zmalloc(sizeof(*o));
    o->type = type;
    o->encoding = OBJ_ENCODING_RAW;
    o->ptr = ptr;
    o->refcount = 1;



    if (server.maxmemory_policy & MAXMEMORY_FLAG_LFU) {
        o->lru = (LFUGetTimeInMinutes()<<8) | LFU_INIT_VAL;
    } else {
        o->lru = LRU_CLOCK();
    }
    return o;
}
