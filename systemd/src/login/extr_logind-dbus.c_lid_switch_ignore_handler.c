
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_5__ {int lid_switch_ignore_event_source; } ;
typedef TYPE_1__ sd_event_source ;
typedef TYPE_1__ Manager ;


 int assert (TYPE_1__*) ;
 int sd_event_source_unref (int ) ;

__attribute__((used)) static int lid_switch_ignore_handler(sd_event_source *e, uint64_t usec, void *userdata) {
        Manager *m = userdata;

        assert(e);
        assert(m);

        m->lid_switch_ignore_event_source = sd_event_source_unref(m->lid_switch_ignore_event_source);
        return 0;
}
