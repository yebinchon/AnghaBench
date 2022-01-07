
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int usec_t ;
struct TYPE_7__ {int time_event_source; int io_event_source; } ;
typedef TYPE_1__ sd_event_source ;
typedef TYPE_1__ Varlink ;


 int SD_EVENT_OFF ;
 int SD_EVENT_ON ;
 int assert (TYPE_1__*) ;
 int sd_event_source_set_enabled (int ,int ) ;
 int sd_event_source_set_io_events (int ,int) ;
 int sd_event_source_set_time (int ,int ) ;
 int varlink_get_events (TYPE_1__*) ;
 int varlink_get_timeout (TYPE_1__*,int *) ;

__attribute__((used)) static int prepare_callback(sd_event_source *s, void *userdata) {
        Varlink *v = userdata;
        int r, e;
        usec_t until;

        assert(s);
        assert(v);

        e = varlink_get_events(v);
        if (e < 0)
                return e;

        r = sd_event_source_set_io_events(v->io_event_source, e);
        if (r < 0)
                return r;

        r = varlink_get_timeout(v, &until);
        if (r < 0)
                return r;
        if (r > 0) {
                r = sd_event_source_set_time(v->time_event_source, until);
                if (r < 0)
                        return r;
        }

        r = sd_event_source_set_enabled(v->time_event_source, r > 0 ? SD_EVENT_ON : SD_EVENT_OFF);
        if (r < 0)
                return r;

        return 1;
}
