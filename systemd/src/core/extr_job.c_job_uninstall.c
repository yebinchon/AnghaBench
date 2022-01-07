
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_8__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {int jobs; } ;
struct TYPE_10__ {TYPE_1__* job; TYPE_1__* nop_job; } ;
struct TYPE_9__ {int installed; scalar_t__ type; int id; TYPE_8__* manager; TYPE_2__* unit; } ;
typedef TYPE_1__ Job ;


 scalar_t__ JOB_NOP ;
 int JOB_WAITING ;
 int MANAGER_IS_RELOADING (TYPE_8__*) ;
 int UINT32_TO_PTR (int ) ;
 int assert (int) ;
 int bus_job_send_removed_signal (TYPE_1__*) ;
 int hashmap_remove_value (int ,int ,TYPE_1__*) ;
 int job_set_state (TYPE_1__*,int ) ;
 int unit_add_to_dbus_queue (TYPE_2__*) ;
 int unit_add_to_gc_queue (TYPE_2__*) ;

void job_uninstall(Job *j) {
        Job **pj;

        assert(j->installed);

        job_set_state(j, JOB_WAITING);

        pj = (j->type == JOB_NOP) ? &j->unit->nop_job : &j->unit->job;
        assert(*pj == j);




        if (!MANAGER_IS_RELOADING(j->manager))
                bus_job_send_removed_signal(j);

        *pj = ((void*)0);

        unit_add_to_gc_queue(j->unit);

        unit_add_to_dbus_queue(j->unit);

        hashmap_remove_value(j->manager->jobs, UINT32_TO_PTR(j->id), j);
        j->installed = 0;
}
