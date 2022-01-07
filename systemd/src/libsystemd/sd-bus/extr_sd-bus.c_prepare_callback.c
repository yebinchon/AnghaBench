
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int usec_t ;
struct TYPE_8__ {scalar_t__ output_fd; scalar_t__ input_fd; int time_event_source; int input_io_event_source; int output_io_event_source; } ;
typedef TYPE_1__ sd_event_source ;
typedef TYPE_1__ sd_bus ;


 int POLLIN ;
 int POLLOUT ;
 int assert (TYPE_1__*) ;
 int bus_enter_closing (TYPE_1__*) ;
 int log_debug_errno (int,char*) ;
 int sd_bus_get_events (TYPE_1__*) ;
 int sd_bus_get_timeout (TYPE_1__*,int *) ;
 int sd_event_source_set_enabled (int ,int) ;
 int sd_event_source_set_io_events (int ,int) ;
 int sd_event_source_set_time (int ,int ) ;

__attribute__((used)) static int prepare_callback(sd_event_source *s, void *userdata) {
        sd_bus *bus = userdata;
        int r, e;
        usec_t until;

        assert(s);
        assert(bus);

        e = sd_bus_get_events(bus);
        if (e < 0) {
                r = e;
                goto fail;
        }

        if (bus->output_fd != bus->input_fd) {

                r = sd_event_source_set_io_events(bus->input_io_event_source, e & POLLIN);
                if (r < 0)
                        goto fail;

                r = sd_event_source_set_io_events(bus->output_io_event_source, e & POLLOUT);
        } else
                r = sd_event_source_set_io_events(bus->input_io_event_source, e);
        if (r < 0)
                goto fail;

        r = sd_bus_get_timeout(bus, &until);
        if (r < 0)
                goto fail;
        if (r > 0) {
                int j;

                j = sd_event_source_set_time(bus->time_event_source, until);
                if (j < 0) {
                        r = j;
                        goto fail;
                }
        }

        r = sd_event_source_set_enabled(bus->time_event_source, r > 0);
        if (r < 0)
                goto fail;

        return 1;

fail:
        log_debug_errno(r, "Preparing of bus events failed, closing down: %m");
        bus_enter_closing(bus);

        return 1;
}
