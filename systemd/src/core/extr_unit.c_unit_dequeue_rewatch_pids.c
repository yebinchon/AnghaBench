
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ rewatch_pids_event_source; } ;
typedef TYPE_1__ Unit ;


 int SD_EVENT_OFF ;
 int assert (TYPE_1__*) ;
 int log_warning_errno (int,char*) ;
 int sd_event_source_set_enabled (scalar_t__,int ) ;
 scalar_t__ sd_event_source_unref (scalar_t__) ;

void unit_dequeue_rewatch_pids(Unit *u) {
        int r;
        assert(u);

        if (!u->rewatch_pids_event_source)
                return;

        r = sd_event_source_set_enabled(u->rewatch_pids_event_source, SD_EVENT_OFF);
        if (r < 0)
                log_warning_errno(r, "Failed to disable event source for tidying watched PIDs, ignoring: %m");

        u->rewatch_pids_event_source = sd_event_source_unref(u->rewatch_pids_event_source);
}
