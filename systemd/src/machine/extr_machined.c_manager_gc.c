
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_13__ {int in_gc_queue; } ;
struct TYPE_12__ {TYPE_2__* machine_gc_queue; } ;
typedef TYPE_1__ Manager ;
typedef TYPE_2__ Machine ;


 int LIST_REMOVE (int ,TYPE_2__*,TYPE_2__*) ;
 scalar_t__ MACHINE_CLOSING ;
 int assert (TYPE_1__*) ;
 int gc_queue ;
 int machine_finalize (TYPE_2__*) ;
 int machine_free (TYPE_2__*) ;
 scalar_t__ machine_get_state (TYPE_2__*) ;
 scalar_t__ machine_may_gc (TYPE_2__*,int) ;
 int machine_stop (TYPE_2__*) ;

__attribute__((used)) static void manager_gc(Manager *m, bool drop_not_started) {
        Machine *machine;

        assert(m);

        while ((machine = m->machine_gc_queue)) {
                LIST_REMOVE(gc_queue, m->machine_gc_queue, machine);
                machine->in_gc_queue = 0;


                if (machine_may_gc(machine, drop_not_started) &&
                    machine_get_state(machine) != MACHINE_CLOSING)
                        machine_stop(machine);




                if (machine_may_gc(machine, drop_not_started)) {
                        machine_finalize(machine);
                        machine_free(machine);
                }
        }
}
