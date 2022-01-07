
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int exit; int fd_inotify; int inotify_event; int ctrl; } ;
typedef TYPE_1__ Manager ;


 int EVENT_QUEUED ;
 int assert (TYPE_1__*) ;
 int event_queue_cleanup (TYPE_1__*,int ) ;
 int manager_kill_workers (TYPE_1__*) ;
 int safe_close (int ) ;
 int sd_event_source_unref (int ) ;
 int sd_notify (int,char*) ;
 int udev_ctrl_unref (int ) ;

__attribute__((used)) static void manager_exit(Manager *manager) {
        assert(manager);

        manager->exit = 1;

        sd_notify(0,
                  "STOPPING=1\n"
                  "STATUS=Starting shutdown...");


        manager->ctrl = udev_ctrl_unref(manager->ctrl);

        manager->inotify_event = sd_event_source_unref(manager->inotify_event);
        manager->fd_inotify = safe_close(manager->fd_inotify);


        event_queue_cleanup(manager, EVENT_QUEUED);
        manager_kill_workers(manager);
}
