
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ bus_track; TYPE_1__* manager; } ;
typedef TYPE_2__ Unit ;
struct TYPE_6__ {int api_bus; } ;


 int assert (TYPE_2__*) ;
 int bus_unit_track_handler ;
 int sd_bus_track_new (int ,scalar_t__*,int ,TYPE_2__*) ;
 int sd_bus_track_set_recursive (scalar_t__,int) ;
 scalar_t__ sd_bus_track_unref (scalar_t__) ;

__attribute__((used)) static int bus_unit_allocate_bus_track(Unit *u) {
        int r;

        assert(u);

        if (u->bus_track)
                return 0;

        r = sd_bus_track_new(u->manager->api_bus, &u->bus_track, bus_unit_track_handler, u);
        if (r < 0)
                return r;

        r = sd_bus_track_set_recursive(u->bus_track, 1);
        if (r < 0) {
                u->bus_track = sd_bus_track_unref(u->bus_track);
                return r;
        }

        return 0;
}
