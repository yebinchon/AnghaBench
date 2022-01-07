
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int in_gc_queue; TYPE_1__* manager; } ;
struct TYPE_6__ {int machine_gc_queue; } ;
typedef TYPE_2__ Machine ;


 int LIST_PREPEND (int ,int ,TYPE_2__*) ;
 int assert (TYPE_2__*) ;
 int gc_queue ;

void machine_add_to_gc_queue(Machine *m) {
        assert(m);

        if (m->in_gc_queue)
                return;

        LIST_PREPEND(gc_queue, m->manager->machine_gc_queue, m);
        m->in_gc_queue = 1;
}
