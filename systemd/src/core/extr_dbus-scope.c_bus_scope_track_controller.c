
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {TYPE_1__* manager; } ;
struct TYPE_9__ {scalar_t__ controller_track; int controller; } ;
struct TYPE_8__ {int api_bus; } ;
typedef TYPE_2__ Scope ;


 TYPE_6__* UNIT (TYPE_2__*) ;
 int assert (TYPE_2__*) ;
 int on_controller_gone ;
 int sd_bus_track_add_name (scalar_t__,int ) ;
 int sd_bus_track_new (int ,scalar_t__*,int ,TYPE_2__*) ;
 scalar_t__ sd_bus_track_unref (scalar_t__) ;

int bus_scope_track_controller(Scope *s) {
        int r;

        assert(s);

        if (!s->controller || s->controller_track)
                return 0;

        r = sd_bus_track_new(UNIT(s)->manager->api_bus, &s->controller_track, on_controller_gone, s);
        if (r < 0)
                return r;

        r = sd_bus_track_add_name(s->controller_track, s->controller);
        if (r < 0) {
                s->controller_track = sd_bus_track_unref(s->controller_track);
                return r;
        }

        return 0;
}
