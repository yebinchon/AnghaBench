
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int Unit ;
struct TYPE_4__ {scalar_t__ persistent; } ;
typedef TYPE_1__ Timer ;
typedef int ExecCleanMask ;


 int EXEC_CLEAN_STATE ;
 TYPE_1__* TIMER (int *) ;
 int assert (TYPE_1__*) ;

__attribute__((used)) static int timer_can_clean(Unit *u, ExecCleanMask *ret) {
        Timer *t = TIMER(u);

        assert(t);

        *ret = t->persistent ? EXEC_CLEAN_STATE : 0;
        return 0;
}
