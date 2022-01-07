
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int track_queue; } ;
typedef TYPE_1__ sd_bus ;


 int assert (TYPE_1__*) ;
 int bus_track_dispatch (int ) ;

__attribute__((used)) static int dispatch_track(sd_bus *bus) {
        assert(bus);

        if (!bus->track_queue)
                return 0;

        bus_track_dispatch(bus->track_queue);
        return 1;
}
