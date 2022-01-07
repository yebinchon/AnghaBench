
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ pid; int worker_watch; int fd_inotify; int rules; int properties; int rtnl; int ctrl; int monitor; } ;
typedef TYPE_1__ Manager ;


 int free (TYPE_1__*) ;
 scalar_t__ getpid_cached () ;
 int hashmap_free_free_free (int ) ;
 int manager_clear_for_worker (TYPE_1__*) ;
 int safe_close (int ) ;
 int safe_close_pair (int ) ;
 int sd_device_monitor_unref (int ) ;
 int sd_netlink_unref (int ) ;
 int udev_builtin_exit () ;
 int udev_ctrl_cleanup (int ) ;
 int udev_rules_free (int ) ;

__attribute__((used)) static void manager_free(Manager *manager) {
        if (!manager)
                return;

        manager->monitor = sd_device_monitor_unref(manager->monitor);

        udev_builtin_exit();

        if (manager->pid == getpid_cached())
                udev_ctrl_cleanup(manager->ctrl);

        manager_clear_for_worker(manager);

        sd_netlink_unref(manager->rtnl);

        hashmap_free_free_free(manager->properties);
        udev_rules_free(manager->rules);

        safe_close(manager->fd_inotify);
        safe_close_pair(manager->worker_watch);

        free(manager);
}
