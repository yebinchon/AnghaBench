
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int userdata; int (* ready_callback ) (TYPE_1__*,int,int ) ;} ;
typedef TYPE_1__ sd_bus_message ;
typedef int sd_bus_error ;
typedef TYPE_1__ BusWaitForUnits ;


 int assert (TYPE_1__*) ;
 int bus_wait_for_units_clear (TYPE_1__*) ;
 int log_error (char*) ;
 int sd_bus_close (int ) ;
 int sd_bus_message_get_bus (TYPE_1__*) ;
 int stub1 (TYPE_1__*,int,int ) ;

__attribute__((used)) static int match_disconnected(sd_bus_message *m, void *userdata, sd_bus_error *error) {
        BusWaitForUnits *d = userdata;

        assert(m);
        assert(d);

        log_error("Warning! D-Bus connection terminated.");

        bus_wait_for_units_clear(d);

        if (d->ready_callback)
                d->ready_callback(d, 0, d->userdata);
        else
                sd_bus_close(sd_bus_message_get_bus(m));

        return 0;
}
