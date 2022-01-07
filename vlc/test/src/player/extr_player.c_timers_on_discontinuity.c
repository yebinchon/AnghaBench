
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_tick_t ;
struct timer_state {int vec; } ;
struct report_timer {int discontinuity_date; int type; } ;


 int REPORT_TIMER_DISCONTINUITY ;
 int assert (int) ;
 int vlc_vector_push (int *,struct report_timer) ;

__attribute__((used)) static void
timers_on_discontinuity(vlc_tick_t system_date, void *data)
{
    struct timer_state *timer = data;
    struct report_timer report =
    {
        .type = REPORT_TIMER_DISCONTINUITY,
        .discontinuity_date = system_date,
    };
    bool success = vlc_vector_push(&timer->vec, report);
    assert(success);
}
