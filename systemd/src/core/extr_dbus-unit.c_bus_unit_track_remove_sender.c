
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int sd_bus_message ;
struct TYPE_4__ {int bus_track; } ;
typedef TYPE_1__ Unit ;


 int EUNATCH ;
 int assert (TYPE_1__*) ;
 int sd_bus_track_remove_sender (int ,int *) ;

int bus_unit_track_remove_sender(Unit *u, sd_bus_message *m) {
        assert(u);



        if (!u->bus_track)
                return -EUNATCH;

        return sd_bus_track_remove_sender(u->bus_track, m);
}
