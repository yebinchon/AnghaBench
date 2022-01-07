
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {void* event_timeout; int clock_watch_fd; void* event_clock_watch; void* event_timer; int resolve_query; } ;
typedef TYPE_1__ Manager ;


 int assert (TYPE_1__*) ;
 int manager_listen_stop (TYPE_1__*) ;
 int safe_close (int ) ;
 void* sd_event_source_unref (void*) ;
 int sd_notifyf (int,char*) ;
 int sd_resolve_query_unref (int ) ;

void manager_disconnect(Manager *m) {
        assert(m);

        m->resolve_query = sd_resolve_query_unref(m->resolve_query);

        m->event_timer = sd_event_source_unref(m->event_timer);

        manager_listen_stop(m);

        m->event_clock_watch = sd_event_source_unref(m->event_clock_watch);
        m->clock_watch_fd = safe_close(m->clock_watch_fd);

        m->event_timeout = sd_event_source_unref(m->event_timeout);

        sd_notifyf(0, "STATUS=Idle.");
}
