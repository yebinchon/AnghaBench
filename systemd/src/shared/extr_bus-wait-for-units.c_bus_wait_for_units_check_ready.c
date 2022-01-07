
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int userdata; int state; int (* ready_callback ) (TYPE_1__*,int ,int ) ;scalar_t__ has_failed; } ;
typedef TYPE_1__ BusWaitForUnits ;


 int BUS_WAIT_FAILURE ;
 int BUS_WAIT_SUCCESS ;
 int assert (TYPE_1__*) ;
 int bus_wait_for_units_is_ready (TYPE_1__*) ;
 int stub1 (TYPE_1__*,int ,int ) ;

__attribute__((used)) static void bus_wait_for_units_check_ready(BusWaitForUnits *d) {
        assert(d);

        if (!bus_wait_for_units_is_ready(d))
                return;

        d->state = d->has_failed ? BUS_WAIT_FAILURE : BUS_WAIT_SUCCESS;

        if (d->ready_callback)
                d->ready_callback(d, d->state, d->userdata);
}
