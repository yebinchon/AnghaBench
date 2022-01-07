
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int Unit ;
struct TYPE_5__ {scalar_t__ state; scalar_t__ on_timezone_change; } ;
typedef TYPE_1__ Timer ;


 TYPE_1__* TIMER (int *) ;
 scalar_t__ TIMER_WAITING ;
 int assert (int *) ;
 int log_unit_debug (int *,char*) ;
 int timer_enter_running (TYPE_1__*) ;
 int timer_enter_waiting (TYPE_1__*,int) ;

__attribute__((used)) static void timer_timezone_change(Unit *u) {
        Timer *t = TIMER(u);

        assert(u);

        if (t->state != TIMER_WAITING)
                return;

        if (t->on_timezone_change) {
                log_unit_debug(u, "Timezone change, triggering activation.");
                timer_enter_running(t);
        } else {
                log_unit_debug(u, "Timezone change, recalculating next elapse.");
                timer_enter_waiting(t, 0);
        }
}
