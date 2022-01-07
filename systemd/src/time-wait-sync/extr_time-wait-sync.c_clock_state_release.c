
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int inotify_fd; int inotify_event_source; } ;
typedef TYPE_1__ ClockState ;


 int clock_state_release_timerfd (TYPE_1__*) ;
 int safe_close (int ) ;
 int sd_event_source_unref (int ) ;

__attribute__((used)) static void clock_state_release(ClockState *sp) {
        clock_state_release_timerfd(sp);
        sp->inotify_event_source = sd_event_source_unref(sp->inotify_event_source);
        sp->inotify_fd = safe_close(sp->inotify_fd);
}
