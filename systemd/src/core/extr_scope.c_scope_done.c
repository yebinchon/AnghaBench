
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int Unit ;
struct TYPE_3__ {int timer_event_source; int controller_track; int controller; } ;
typedef TYPE_1__ Scope ;


 TYPE_1__* SCOPE (int *) ;
 int assert (int *) ;
 int mfree (int ) ;
 int sd_bus_track_unref (int ) ;
 int sd_event_source_unref (int ) ;

__attribute__((used)) static void scope_done(Unit *u) {
        Scope *s = SCOPE(u);

        assert(u);

        s->controller = mfree(s->controller);
        s->controller_track = sd_bus_track_unref(s->controller_track);

        s->timer_event_source = sd_event_source_unref(s->timer_event_source);
}
