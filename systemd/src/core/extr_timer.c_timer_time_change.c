
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ usec_t ;
typedef int Unit ;
struct TYPE_6__ {scalar_t__ realtime; } ;
struct TYPE_7__ {scalar_t__ state; scalar_t__ on_clock_change; TYPE_1__ last_trigger; } ;
typedef TYPE_2__ Timer ;


 int CLOCK_REALTIME ;
 TYPE_2__* TIMER (int *) ;
 scalar_t__ TIMER_WAITING ;
 int assert (int *) ;
 int log_unit_debug (int *,char*) ;
 scalar_t__ now (int ) ;
 int timer_enter_running (TYPE_2__*) ;
 int timer_enter_waiting (TYPE_2__*,int) ;

__attribute__((used)) static void timer_time_change(Unit *u) {
        Timer *t = TIMER(u);
        usec_t ts;

        assert(u);

        if (t->state != TIMER_WAITING)
                return;





        ts = now(CLOCK_REALTIME);
        if (t->last_trigger.realtime > ts)
                t->last_trigger.realtime = ts;

        if (t->on_clock_change) {
                log_unit_debug(u, "Time change, triggering activation.");
                timer_enter_running(t);
        } else {
                log_unit_debug(u, "Time change, recalculating next elapse.");
                timer_enter_waiting(t, 1);
        }
}
