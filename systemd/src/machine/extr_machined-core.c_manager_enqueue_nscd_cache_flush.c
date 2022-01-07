
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ nscd_cache_flush_event; int event; } ;
typedef TYPE_1__ Manager ;


 int SD_EVENT_ONESHOT ;
 int assert (TYPE_1__*) ;
 int log_error_errno (int,char*) ;
 int on_nscd_cache_flush_event ;
 int sd_event_add_defer (int ,scalar_t__*,int ,TYPE_1__*) ;
 int sd_event_source_set_description (scalar_t__,char*) ;
 int sd_event_source_set_enabled (scalar_t__,int ) ;
 scalar_t__ sd_event_source_unref (scalar_t__) ;

int manager_enqueue_nscd_cache_flush(Manager *m) {
        int r;

        assert(m);

        if (!m->nscd_cache_flush_event) {
                r = sd_event_add_defer(m->event, &m->nscd_cache_flush_event, on_nscd_cache_flush_event, m);
                if (r < 0)
                        return log_error_errno(r, "Failed to allocate NSCD cache flush event: %m");

                sd_event_source_set_description(m->nscd_cache_flush_event, "nscd-cache-flush");
        }

        r = sd_event_source_set_enabled(m->nscd_cache_flush_event, SD_EVENT_ONESHOT);
        if (r < 0) {
                m->nscd_cache_flush_event = sd_event_source_unref(m->nscd_cache_flush_event);
                return log_error_errno(r, "Failed to enable NSCD cache flush event: %m");
        }

        return 0;
}
