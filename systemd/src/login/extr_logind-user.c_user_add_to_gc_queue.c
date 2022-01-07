
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int in_gc_queue; TYPE_1__* manager; } ;
typedef TYPE_2__ User ;
struct TYPE_6__ {int user_gc_queue; } ;


 int LIST_PREPEND (int ,int ,TYPE_2__*) ;
 int assert (TYPE_2__*) ;
 int gc_queue ;

void user_add_to_gc_queue(User *u) {
        assert(u);

        if (u->in_gc_queue)
                return;

        LIST_PREPEND(gc_queue, u->manager->user_gc_queue, u);
        u->in_gc_queue = 1;
}
