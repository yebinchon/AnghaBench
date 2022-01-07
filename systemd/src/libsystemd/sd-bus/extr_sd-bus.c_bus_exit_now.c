
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int exited; scalar_t__ event; int exit_on_disconnect; int exit_triggered; } ;
typedef TYPE_1__ sd_bus ;


 int EXIT_FAILURE ;
 int assert (TYPE_1__*) ;
 int assert_not_reached (char*) ;
 int exit (int ) ;
 int log_debug (char*) ;
 int sd_event_exit (scalar_t__,int ) ;

__attribute__((used)) static int bus_exit_now(sd_bus *bus) {
        assert(bus);




        if (bus->exited)
                return 0;
        if (!bus->exit_triggered)
                return 0;
        if (!bus->exit_on_disconnect)
                return 0;

        bus->exited = 1;

        log_debug("Bus connection disconnected, exiting.");

        if (bus->event)
                return sd_event_exit(bus->event, EXIT_FAILURE);
        else
                exit(EXIT_FAILURE);

        assert_not_reached("exit() didn't exit?");
}
