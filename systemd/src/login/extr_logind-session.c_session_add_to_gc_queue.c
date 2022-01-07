
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int in_gc_queue; TYPE_1__* manager; } ;
struct TYPE_6__ {int session_gc_queue; } ;
typedef TYPE_2__ Session ;


 int LIST_PREPEND (int ,int ,TYPE_2__*) ;
 int assert (TYPE_2__*) ;
 int gc_queue ;

void session_add_to_gc_queue(Session *s) {
        assert(s);

        if (s->in_gc_queue)
                return;

        LIST_PREPEND(gc_queue, s->manager->session_gc_queue, s);
        s->in_gc_queue = 1;
}
