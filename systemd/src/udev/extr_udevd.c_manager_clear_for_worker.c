
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * worker_watch; int ctrl; int monitor; int workers; int event; void* kill_workers_event; void* inotify_event; } ;
typedef TYPE_1__ Manager ;


 int EVENT_UNDEF ;
 size_t READ_END ;
 int assert (TYPE_1__*) ;
 int event_queue_cleanup (TYPE_1__*,int ) ;
 int hashmap_free (int ) ;
 int safe_close (int ) ;
 int sd_device_monitor_unref (int ) ;
 void* sd_event_source_unref (void*) ;
 int sd_event_unref (int ) ;
 int udev_ctrl_unref (int ) ;

__attribute__((used)) static void manager_clear_for_worker(Manager *manager) {
        assert(manager);

        manager->inotify_event = sd_event_source_unref(manager->inotify_event);
        manager->kill_workers_event = sd_event_source_unref(manager->kill_workers_event);

        manager->event = sd_event_unref(manager->event);

        manager->workers = hashmap_free(manager->workers);
        event_queue_cleanup(manager, EVENT_UNDEF);

        manager->monitor = sd_device_monitor_unref(manager->monitor);
        manager->ctrl = udev_ctrl_unref(manager->ctrl);

        manager->worker_watch[READ_END] = safe_close(manager->worker_watch[READ_END]);
}
