
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct inotify_event {scalar_t__ wd; int mask; } ;
typedef int sd_event ;
struct TYPE_5__ {scalar_t__ run_systemd_wd; scalar_t__ run_systemd_timesync_wd; int inotify_fd; } ;
typedef TYPE_1__ ClockState ;


 int IN_DELETE_SELF ;
 int clock_state_update (TYPE_1__*,int *) ;
 int inotify_rm_watch (int ,scalar_t__) ;
 int update_notify_run_systemd_timesync (TYPE_1__*) ;

__attribute__((used)) static void process_inotify_event(sd_event *event, ClockState *sp, struct inotify_event *e) {
        if (e->wd == sp->run_systemd_wd) {

                if (sp->run_systemd_timesync_wd < 0)
                        update_notify_run_systemd_timesync(sp);
        } else if (e->wd == sp->run_systemd_timesync_wd) {
                if (e->mask & IN_DELETE_SELF) {

                        (void) inotify_rm_watch(sp->inotify_fd, sp->run_systemd_timesync_wd);
                        sp->run_systemd_timesync_wd = -1;
                } else

                        clock_state_update(sp, event);
        }
}
