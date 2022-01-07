
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int Unit ;
struct TYPE_5__ {scalar_t__ state; int result; } ;
typedef TYPE_1__ Timer ;


 TYPE_1__* TIMER (int *) ;
 int TIMER_DEAD ;
 scalar_t__ TIMER_FAILED ;
 int TIMER_SUCCESS ;
 int assert (TYPE_1__*) ;
 int timer_set_state (TYPE_1__*,int ) ;

__attribute__((used)) static void timer_reset_failed(Unit *u) {
        Timer *t = TIMER(u);

        assert(t);

        if (t->state == TIMER_FAILED)
                timer_set_state(t, TIMER_DEAD);

        t->result = TIMER_SUCCESS;
}
