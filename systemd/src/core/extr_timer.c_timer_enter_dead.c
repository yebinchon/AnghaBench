
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ TimerResult ;
struct TYPE_6__ {scalar_t__ result; } ;
typedef TYPE_1__ Timer ;


 int TIMER_DEAD ;
 int TIMER_FAILED ;
 scalar_t__ TIMER_SUCCESS ;
 int UNIT (TYPE_1__*) ;
 int assert (TYPE_1__*) ;
 int timer_result_to_string (scalar_t__) ;
 int timer_set_state (TYPE_1__*,int ) ;
 int unit_log_result (int ,int,int ) ;

__attribute__((used)) static void timer_enter_dead(Timer *t, TimerResult f) {
        assert(t);

        if (t->result == TIMER_SUCCESS)
                t->result = f;

        unit_log_result(UNIT(t), t->result == TIMER_SUCCESS, timer_result_to_string(t->result));
        timer_set_state(t, t->result != TIMER_SUCCESS ? TIMER_FAILED : TIMER_DEAD);
}
