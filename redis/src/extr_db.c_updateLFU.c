
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int lru; } ;
typedef TYPE_1__ robj ;


 unsigned long LFUDecrAndReturn (TYPE_1__*) ;
 int LFUGetTimeInMinutes () ;
 unsigned long LFULogIncr (unsigned long) ;

void updateLFU(robj *val) {
    unsigned long counter = LFUDecrAndReturn(val);
    counter = LFULogIncr(counter);
    val->lru = (LFUGetTimeInMinutes()<<8) | counter;
}
