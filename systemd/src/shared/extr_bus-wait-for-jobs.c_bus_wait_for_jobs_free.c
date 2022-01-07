
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* result; struct TYPE_4__* name; int bus; int slot_job_removed; int slot_disconnected; int jobs; } ;
typedef TYPE_1__ BusWaitForJobs ;


 int free (TYPE_1__*) ;
 int sd_bus_slot_unref (int ) ;
 int sd_bus_unref (int ) ;
 int set_free_free (int ) ;

void bus_wait_for_jobs_free(BusWaitForJobs *d) {
        if (!d)
                return;

        set_free_free(d->jobs);

        sd_bus_slot_unref(d->slot_disconnected);
        sd_bus_slot_unref(d->slot_job_removed);

        sd_bus_unref(d->bus);

        free(d->name);
        free(d->result);

        free(d);
}
