
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int Unit ;
struct TYPE_6__ {int state; } ;
typedef TYPE_1__ Timer ;


 TYPE_1__* IN_SET (int ,int ,int ,int ) ;
 TYPE_1__* TIMER (int *) ;
 int TIMER_ELAPSED ;
 int TIMER_RUNNING ;
 int TIMER_SUCCESS ;
 int TIMER_WAITING ;
 int assert (TYPE_1__*) ;
 int timer_enter_dead (TYPE_1__*,int ) ;

__attribute__((used)) static int timer_stop(Unit *u) {
        Timer *t = TIMER(u);

        assert(t);
        assert(IN_SET(t->state, TIMER_WAITING, TIMER_RUNNING, TIMER_ELAPSED));

        timer_enter_dead(t, TIMER_SUCCESS);
        return 1;
}
