
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int timerfd_fd; int timerfd_event_source; } ;
typedef TYPE_1__ ClockState ;


 int safe_close (int ) ;
 int sd_event_source_unref (int ) ;

__attribute__((used)) static void clock_state_release_timerfd(ClockState *sp) {
        sp->timerfd_event_source = sd_event_source_unref(sp->timerfd_event_source);
        sp->timerfd_fd = safe_close(sp->timerfd_fd);
}
