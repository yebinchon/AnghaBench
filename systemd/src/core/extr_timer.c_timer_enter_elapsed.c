
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ remain_after_elapse; } ;
typedef TYPE_1__ Timer ;


 int TIMER_ELAPSED ;
 int TIMER_SUCCESS ;
 int assert (TYPE_1__*) ;
 int timer_enter_dead (TYPE_1__*,int ) ;
 int timer_set_state (TYPE_1__*,int ) ;

__attribute__((used)) static void timer_enter_elapsed(Timer *t, bool leave_around) {
        assert(t);
        if (t->remain_after_elapse || leave_around)
                timer_set_state(t, TIMER_ELAPSED);
        else
                timer_enter_dead(t, TIMER_SUCCESS);
}
