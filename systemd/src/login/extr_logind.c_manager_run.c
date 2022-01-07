
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_6__ {int event; } ;
typedef TYPE_1__ Manager ;


 int SD_EVENT_FINISHED ;
 int assert (TYPE_1__*) ;
 int manager_dispatch_delayed (TYPE_1__*,int) ;
 int manager_gc (TYPE_1__*,int) ;
 int sd_event_get_state (int ) ;
 int sd_event_run (int ,int ) ;

__attribute__((used)) static int manager_run(Manager *m) {
        int r;

        assert(m);

        for (;;) {
                r = sd_event_get_state(m->event);
                if (r < 0)
                        return r;
                if (r == SD_EVENT_FINISHED)
                        return 0;

                manager_gc(m, 1);

                r = manager_dispatch_delayed(m, 0);
                if (r < 0)
                        return r;
                if (r > 0)
                        continue;

                r = sd_event_run(m->event, (uint64_t) -1);
                if (r < 0)
                        return r;
        }
}
