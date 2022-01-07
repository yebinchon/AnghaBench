
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int jobs; } ;
typedef TYPE_1__ Manager ;
typedef int Job ;


 int JOB_CANCELED ;
 int assert (TYPE_1__*) ;
 int * hashmap_first (int ) ;
 int job_finish_and_invalidate (int *,int ,int,int) ;

void manager_clear_jobs(Manager *m) {
        Job *j;

        assert(m);

        while ((j = hashmap_first(m->jobs)))

                job_finish_and_invalidate(j, JOB_CANCELED, 0, 0);
}
