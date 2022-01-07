
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int relinquished; } ;
typedef TYPE_1__ LoopDevice ;


 int assert (TYPE_1__*) ;

void loop_device_relinquish(LoopDevice *d) {
        assert(d);




        d->relinquished = 1;
}
