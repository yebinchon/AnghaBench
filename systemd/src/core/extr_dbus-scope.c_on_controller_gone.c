
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int sd_bus_track ;
struct TYPE_3__ {int controller_track; scalar_t__ controller; } ;
typedef TYPE_1__ Scope ;


 int UNIT (TYPE_1__*) ;
 int assert (int *) ;
 int log_unit_debug (int ,char*,scalar_t__) ;
 scalar_t__ mfree (scalar_t__) ;
 int sd_bus_track_unref (int ) ;
 int unit_add_to_dbus_queue (int ) ;

__attribute__((used)) static int on_controller_gone(sd_bus_track *track, void *userdata) {
        Scope *s = userdata;

        assert(track);

        if (s->controller) {
                log_unit_debug(UNIT(s), "Controller %s disappeared from bus.", s->controller);
                unit_add_to_dbus_queue(UNIT(s));
                s->controller = mfree(s->controller);
        }

        s->controller_track = sd_bus_track_unref(s->controller_track);

        return 0;
}
