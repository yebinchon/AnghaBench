
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int sd_event_source ;
typedef int ClockState ;


 int clock_state_update (int *,int ) ;
 int sd_event_source_get_event (int *) ;

__attribute__((used)) static int timerfd_handler(sd_event_source *s,
                           int fd,
                           uint32_t revents,
                           void *userdata) {
        ClockState *sp = userdata;

        return clock_state_update(sp, sd_event_source_get_event(s));
}
