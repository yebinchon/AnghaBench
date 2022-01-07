
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int run_systemd_timesync_wd; int inotify_fd; } ;
typedef TYPE_1__ ClockState ;


 int IN_CREATE ;
 int IN_DELETE_SELF ;
 int inotify_add_watch (int ,char*,int) ;

__attribute__((used)) static int update_notify_run_systemd_timesync(ClockState *sp) {
        sp->run_systemd_timesync_wd = inotify_add_watch(sp->inotify_fd, "/run/systemd/timesync", IN_CREATE|IN_DELETE_SELF);
        return sp->run_systemd_timesync_wd;
}
