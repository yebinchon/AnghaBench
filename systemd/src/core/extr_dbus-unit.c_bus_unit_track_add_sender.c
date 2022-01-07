
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int sd_bus_message ;
struct TYPE_5__ {int bus_track; } ;
typedef TYPE_1__ Unit ;


 int assert (TYPE_1__*) ;
 int bus_unit_allocate_bus_track (TYPE_1__*) ;
 int sd_bus_track_add_sender (int ,int *) ;

int bus_unit_track_add_sender(Unit *u, sd_bus_message *m) {
        int r;

        assert(u);

        r = bus_unit_allocate_bus_track(u);
        if (r < 0)
                return r;

        return sd_bus_track_add_sender(u->bus_track, m);
}
