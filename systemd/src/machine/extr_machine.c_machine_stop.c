
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int stopping; int manager; int class; } ;
typedef TYPE_1__ Machine ;


 int EOPNOTSUPP ;
 int IN_SET (int ,int ,int ) ;
 int MACHINE_CONTAINER ;
 int MACHINE_VM ;
 int assert (TYPE_1__*) ;
 int machine_save (TYPE_1__*) ;
 int machine_stop_scope (TYPE_1__*) ;
 int manager_enqueue_nscd_cache_flush (int ) ;

int machine_stop(Machine *m) {
        int r;
        assert(m);

        if (!IN_SET(m->class, MACHINE_CONTAINER, MACHINE_VM))
                return -EOPNOTSUPP;

        r = machine_stop_scope(m);

        m->stopping = 1;

        machine_save(m);
        (void) manager_enqueue_nscd_cache_flush(m->manager);

        return r;
}
