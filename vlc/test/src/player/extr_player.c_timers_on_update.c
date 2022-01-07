
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlc_player_timer_point {int dummy; } ;
struct timer_state {int vec; } ;
struct report_timer {struct vlc_player_timer_point const point; int type; } ;


 int REPORT_TIMER_POINT ;
 int assert (int) ;
 int vlc_vector_push (int *,struct report_timer) ;

__attribute__((used)) static void
timers_on_update(const struct vlc_player_timer_point *point, void *data)
{
    struct timer_state *timer = data;
    struct report_timer report =
    {
        .type = REPORT_TIMER_POINT,
        .point = *point,
    };
    bool success = vlc_vector_push(&timer->vec, report);
    assert(success);
}
