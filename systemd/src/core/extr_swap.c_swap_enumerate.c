
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int swap_event_source; scalar_t__ proc_swaps; int event; } ;
typedef TYPE_1__ Manager ;


 scalar_t__ ENOENT ;
 int EPOLLPRI ;
 scalar_t__ SD_EVENT_PRIORITY_NORMAL ;
 int assert (TYPE_1__*) ;
 scalar_t__ errno ;
 int fileno (scalar_t__) ;
 scalar_t__ fopen (char*,char*) ;
 int log_debug_errno (scalar_t__,char*) ;
 int log_error_errno (int,char*) ;
 int log_warning_errno (scalar_t__,char*) ;
 int sd_event_add_io (int ,int *,int ,int ,int ,TYPE_1__*) ;
 int sd_event_source_set_description (int ,char*) ;
 int sd_event_source_set_priority (int ,scalar_t__) ;
 int swap_dispatch_io ;
 int swap_load_proc_swaps (TYPE_1__*,int) ;
 int swap_shutdown (TYPE_1__*) ;

__attribute__((used)) static void swap_enumerate(Manager *m) {
        int r;

        assert(m);

        if (!m->proc_swaps) {
                m->proc_swaps = fopen("/proc/swaps", "re");
                if (!m->proc_swaps) {
                        if (errno == ENOENT)
                                log_debug_errno(errno, "Not swap enabled, skipping enumeration.");
                        else
                                log_warning_errno(errno, "Failed to open /proc/swaps, ignoring: %m");

                        return;
                }

                r = sd_event_add_io(m->event, &m->swap_event_source, fileno(m->proc_swaps), EPOLLPRI, swap_dispatch_io, m);
                if (r < 0) {
                        log_error_errno(r, "Failed to watch /proc/swaps: %m");
                        goto fail;
                }




                r = sd_event_source_set_priority(m->swap_event_source, SD_EVENT_PRIORITY_NORMAL-10);
                if (r < 0) {
                        log_error_errno(r, "Failed to change /proc/swaps priority: %m");
                        goto fail;
                }

                (void) sd_event_source_set_description(m->swap_event_source, "swap-proc");
        }

        r = swap_load_proc_swaps(m, 0);
        if (r < 0)
                goto fail;

        return;

fail:
        swap_shutdown(m);
}
