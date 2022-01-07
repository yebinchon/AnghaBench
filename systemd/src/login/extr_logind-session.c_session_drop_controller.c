
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int track; int controller; } ;
typedef TYPE_1__ Session ;


 int assert (TYPE_1__*) ;
 int sd_bus_track_unref (int ) ;
 int session_release_controller (TYPE_1__*,int) ;
 int session_restore_vt (TYPE_1__*) ;
 int session_save (TYPE_1__*) ;

void session_drop_controller(Session *s) {
        assert(s);

        if (!s->controller)
                return;

        s->track = sd_bus_track_unref(s->track);
        session_release_controller(s, 0);
        session_save(s);
        session_restore_vt(s);
}
