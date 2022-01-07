
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ control_pid; } ;
typedef TYPE_1__ Swap ;


 int UNIT (TYPE_1__*) ;
 int assert (TYPE_1__*) ;
 int unit_unwatch_pid (int ,scalar_t__) ;

__attribute__((used)) static void swap_unwatch_control_pid(Swap *s) {
        assert(s);

        if (s->control_pid <= 0)
                return;

        unit_unwatch_pid(UNIT(s), s->control_pid);
        s->control_pid = 0;
}
