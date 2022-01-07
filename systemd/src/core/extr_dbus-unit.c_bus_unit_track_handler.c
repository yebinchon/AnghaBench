
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int bus_track; } ;
typedef TYPE_1__ sd_bus_track ;
typedef TYPE_1__ Unit ;


 int assert (TYPE_1__*) ;
 int sd_bus_track_unref (int ) ;
 int unit_add_to_cgroup_empty_queue (TYPE_1__*) ;
 int unit_add_to_gc_queue (TYPE_1__*) ;

__attribute__((used)) static int bus_unit_track_handler(sd_bus_track *t, void *userdata) {
        Unit *u = userdata;

        assert(t);
        assert(u);

        u->bus_track = sd_bus_track_unref(u->bus_track);



        unit_add_to_cgroup_empty_queue(u);


        unit_add_to_gc_queue(u);

        return 0;
}
