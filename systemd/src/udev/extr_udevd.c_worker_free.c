
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct worker {int event; int monitor; int pid; TYPE_1__* manager; } ;
struct TYPE_2__ {int workers; } ;


 int PID_TO_PTR (int ) ;
 int assert (TYPE_1__*) ;
 int event_free (int ) ;
 int free (struct worker*) ;
 int hashmap_remove (int ,int ) ;
 int sd_device_monitor_unref (int ) ;

__attribute__((used)) static void worker_free(struct worker *worker) {
        if (!worker)
                return;

        assert(worker->manager);

        hashmap_remove(worker->manager->workers, PID_TO_PTR(worker->pid));
        sd_device_monitor_unref(worker->monitor);
        event_free(worker->event);

        free(worker);
}
