
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int Unit ;
struct TYPE_6__ {scalar_t__ type; TYPE_1__* manager; scalar_t__ id; } ;
struct TYPE_5__ {int current_job_id; } ;
typedef scalar_t__ JobType ;
typedef TYPE_2__ Job ;


 scalar_t__ _JOB_TYPE_MAX ;
 int assert (int) ;
 TYPE_2__* job_new_raw (int *) ;

Job* job_new(Unit *unit, JobType type) {
        Job *j;

        assert(type < _JOB_TYPE_MAX);

        j = job_new_raw(unit);
        if (!j)
                return ((void*)0);

        j->id = j->manager->current_job_id++;
        j->type = type;



        return j;
}
