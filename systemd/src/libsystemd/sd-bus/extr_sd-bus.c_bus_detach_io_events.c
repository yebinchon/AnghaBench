
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void* output_io_event_source; void* input_io_event_source; } ;
typedef TYPE_1__ sd_bus ;


 int SD_EVENT_OFF ;
 int assert (TYPE_1__*) ;
 int sd_event_source_set_enabled (void*,int ) ;
 void* sd_event_source_unref (void*) ;

__attribute__((used)) static void bus_detach_io_events(sd_bus *bus) {
        assert(bus);

        if (bus->input_io_event_source) {
                sd_event_source_set_enabled(bus->input_io_event_source, SD_EVENT_OFF);
                bus->input_io_event_source = sd_event_source_unref(bus->input_io_event_source);
        }

        if (bus->output_io_event_source) {
                sd_event_source_set_enabled(bus->output_io_event_source, SD_EVENT_OFF);
                bus->output_io_event_source = sd_event_source_unref(bus->output_io_event_source);
        }
}
