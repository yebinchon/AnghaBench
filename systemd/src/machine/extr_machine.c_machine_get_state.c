
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ class; scalar_t__ scope_job; scalar_t__ stopping; } ;
typedef int MachineState ;
typedef TYPE_1__ Machine ;


 int MACHINE_CLOSING ;
 scalar_t__ MACHINE_HOST ;
 int MACHINE_OPENING ;
 int MACHINE_RUNNING ;
 int assert (TYPE_1__*) ;

MachineState machine_get_state(Machine *s) {
        assert(s);

        if (s->class == MACHINE_HOST)
                return MACHINE_RUNNING;

        if (s->stopping)
                return MACHINE_CLOSING;

        if (s->scope_job)
                return MACHINE_OPENING;

        return MACHINE_RUNNING;
}
