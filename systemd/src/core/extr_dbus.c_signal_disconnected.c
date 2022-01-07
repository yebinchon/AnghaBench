
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int private_buses; int * system_bus; int * api_bus; } ;
typedef TYPE_1__ sd_bus_message ;
typedef int sd_bus_error ;
typedef int sd_bus ;
typedef TYPE_1__ Manager ;


 int assert (TYPE_1__*) ;
 int assert_se (int *) ;
 int bus_done_api (TYPE_1__*) ;
 int bus_done_system (TYPE_1__*) ;
 int destroy_bus (TYPE_1__*,int **) ;
 int log_debug (char*) ;
 int * sd_bus_message_get_bus (TYPE_1__*) ;
 scalar_t__ set_remove (int ,int *) ;

__attribute__((used)) static int signal_disconnected(sd_bus_message *message, void *userdata, sd_bus_error *error) {
        Manager *m = userdata;
        sd_bus *bus;

        assert(message);
        assert(m);
        assert_se(bus = sd_bus_message_get_bus(message));

        if (bus == m->api_bus)
                bus_done_api(m);
        if (bus == m->system_bus)
                bus_done_system(m);

        if (set_remove(m->private_buses, bus)) {
                log_debug("Got disconnect on private connection.");
                destroy_bus(m, &bus);
        }

        return 0;
}
