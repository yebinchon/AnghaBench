
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* in_load_queue; } ;
typedef TYPE_1__ Unit ;
struct TYPE_8__ {int dispatching_load_queue; TYPE_1__* load_queue; } ;
typedef TYPE_2__ Manager ;


 int assert (TYPE_2__*) ;
 int manager_dispatch_target_deps_queue (TYPE_2__*) ;
 int unit_load (TYPE_1__*) ;

unsigned manager_dispatch_load_queue(Manager *m) {
        Unit *u;
        unsigned n = 0;

        assert(m);


        if (m->dispatching_load_queue)
                return 0;

        m->dispatching_load_queue = 1;




        while ((u = m->load_queue)) {
                assert(u->in_load_queue);

                unit_load(u);
                n++;
        }

        m->dispatching_load_queue = 0;



        (void) manager_dispatch_target_deps_queue(m);

        return n;
}
