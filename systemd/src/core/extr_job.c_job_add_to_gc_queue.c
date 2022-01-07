
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int in_gc_queue; TYPE_2__* unit; } ;
struct TYPE_9__ {TYPE_1__* manager; } ;
struct TYPE_8__ {int gc_job_queue; } ;
typedef TYPE_3__ Job ;


 int LIST_PREPEND (int ,int ,TYPE_3__*) ;
 int assert (TYPE_3__*) ;
 int gc_queue ;
 int job_may_gc (TYPE_3__*) ;

void job_add_to_gc_queue(Job *j) {
        assert(j);

        if (j->in_gc_queue)
                return;

        if (!job_may_gc(j))
                return;

        LIST_PREPEND(gc_queue, j->unit->manager->gc_job_queue, j);
        j->in_gc_queue = 1;
}
