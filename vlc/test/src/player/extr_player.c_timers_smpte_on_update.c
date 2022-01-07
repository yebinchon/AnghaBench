
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlc_player_timer_smpte_timecode {int dummy; } ;
struct timer_state {int vec; } ;
struct report_timer {struct vlc_player_timer_smpte_timecode const tc; int type; } ;


 int REPORT_TIMER_TC ;
 int assert (int) ;
 int vlc_vector_push (int *,struct report_timer) ;

__attribute__((used)) static void
timers_smpte_on_update(const struct vlc_player_timer_smpte_timecode *tc,
                       void *data)
{
    struct timer_state *timer = data;
    struct report_timer report =
    {
        .type = REPORT_TIMER_TC,
        .tc = *tc,
    };
    bool success = vlc_vector_push(&timer->vec, report);
    assert(success);
}
