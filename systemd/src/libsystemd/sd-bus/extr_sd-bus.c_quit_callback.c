
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int sd_event_source ;
struct TYPE_4__ {scalar_t__ close_on_exit; } ;
typedef TYPE_1__ sd_bus ;


 int assert (int *) ;
 int sd_bus_close (TYPE_1__*) ;
 int sd_bus_flush (TYPE_1__*) ;

__attribute__((used)) static int quit_callback(sd_event_source *event, void *userdata) {
        sd_bus *bus = userdata;

        assert(event);

        if (bus->close_on_exit) {
                sd_bus_flush(bus);
                sd_bus_close(bus);
        }

        return 1;
}
