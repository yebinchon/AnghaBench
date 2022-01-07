
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int* worker_watch; int fd_inotify; int event; int rules; int monitor; int inotify_event; int ctrl; int pid; } ;
typedef TYPE_1__ Manager ;


 int AF_LOCAL ;
 int EPOLLIN ;
 size_t READ_END ;
 int SD_EVENT_PRIORITY_IDLE ;
 int SIGCHLD ;
 int SIGHUP ;
 int SIGINT ;
 int SIGTERM ;
 int SIG_BLOCK ;
 int SOCK_CLOEXEC ;
 int SOCK_DGRAM ;
 int SOL_SOCKET ;
 int SO_PASSCRED ;
 int arg_children_max ;
 int arg_resolve_name_timing ;
 int assert_se (int) ;
 int errno ;
 int getpid_cached () ;
 int log_error_errno (int,char*) ;
 int on_ctrl_msg ;
 int on_inotify ;
 int on_post ;
 int on_sigchld ;
 int on_sighup ;
 int on_sigterm ;
 int on_uevent ;
 int on_worker ;
 int sd_device_monitor_attach_event (int ,int ) ;
 int sd_device_monitor_get_event_source (int ) ;
 int sd_device_monitor_start (int ,int ,TYPE_1__*) ;
 int sd_event_add_io (int ,int *,int,int ,int ,TYPE_1__*) ;
 int sd_event_add_post (int ,int *,int ,TYPE_1__*) ;
 int sd_event_add_signal (int ,int *,int ,int ,TYPE_1__*) ;
 int sd_event_default (int *) ;
 int sd_event_loop (int ) ;
 int sd_event_set_watchdog (int ,int) ;
 int sd_event_source_set_description (int ,char*) ;
 int sd_event_source_set_priority (int ,int ) ;
 int sd_notify (int,char*) ;
 int sd_notifyf (int,char*,int ) ;
 int setsockopt_int (int,int ,int ,int) ;
 scalar_t__ sigprocmask_many (int ,int *,int ,int ,int ,int ,int) ;
 int socketpair (int ,int,int ,int*) ;
 int udev_builtin_init () ;
 int udev_ctrl_attach_event (int ,int ) ;
 int udev_ctrl_get_event_source (int ) ;
 int udev_ctrl_start (int ,int ,TYPE_1__*) ;
 int udev_rules_apply_static_dev_perms (int ) ;
 int udev_rules_new (int *,int ) ;
 int udev_watch_init () ;
 int udev_watch_restore () ;

__attribute__((used)) static int main_loop(Manager *manager) {
        int fd_worker, r;

        manager->pid = getpid_cached();


        r = socketpair(AF_LOCAL, SOCK_DGRAM|SOCK_CLOEXEC, 0, manager->worker_watch);
        if (r < 0)
                return log_error_errno(errno, "Failed to create socketpair for communicating with workers: %m");

        fd_worker = manager->worker_watch[READ_END];

        r = setsockopt_int(fd_worker, SOL_SOCKET, SO_PASSCRED, 1);
        if (r < 0)
                return log_error_errno(r, "Failed to enable SO_PASSCRED: %m");

        r = udev_watch_init();
        if (r < 0)
                return log_error_errno(r, "Failed to create inotify descriptor: %m");
        manager->fd_inotify = r;

        udev_watch_restore();


        assert_se(sigprocmask_many(SIG_BLOCK, ((void*)0), SIGTERM, SIGINT, SIGHUP, SIGCHLD, -1) >= 0);

        r = sd_event_default(&manager->event);
        if (r < 0)
                return log_error_errno(r, "Failed to allocate event loop: %m");

        r = sd_event_add_signal(manager->event, ((void*)0), SIGINT, on_sigterm, manager);
        if (r < 0)
                return log_error_errno(r, "Failed to create SIGINT event source: %m");

        r = sd_event_add_signal(manager->event, ((void*)0), SIGTERM, on_sigterm, manager);
        if (r < 0)
                return log_error_errno(r, "Failed to create SIGTERM event source: %m");

        r = sd_event_add_signal(manager->event, ((void*)0), SIGHUP, on_sighup, manager);
        if (r < 0)
                return log_error_errno(r, "Failed to create SIGHUP event source: %m");

        r = sd_event_add_signal(manager->event, ((void*)0), SIGCHLD, on_sigchld, manager);
        if (r < 0)
                return log_error_errno(r, "Failed to create SIGCHLD event source: %m");

        r = sd_event_set_watchdog(manager->event, 1);
        if (r < 0)
                return log_error_errno(r, "Failed to create watchdog event source: %m");

        r = udev_ctrl_attach_event(manager->ctrl, manager->event);
        if (r < 0)
                return log_error_errno(r, "Failed to attach event to udev control: %m");

        r = udev_ctrl_start(manager->ctrl, on_ctrl_msg, manager);
        if (r < 0)
                return log_error_errno(r, "Failed to start device monitor: %m");





        r = sd_event_source_set_priority(udev_ctrl_get_event_source(manager->ctrl), SD_EVENT_PRIORITY_IDLE);
        if (r < 0)
                return log_error_errno(r, "Failed to set IDLE event priority for udev control event source: %m");

        r = sd_event_add_io(manager->event, &manager->inotify_event, manager->fd_inotify, EPOLLIN, on_inotify, manager);
        if (r < 0)
                return log_error_errno(r, "Failed to create inotify event source: %m");

        r = sd_device_monitor_attach_event(manager->monitor, manager->event);
        if (r < 0)
                return log_error_errno(r, "Failed to attach event to device monitor: %m");

        r = sd_device_monitor_start(manager->monitor, on_uevent, manager);
        if (r < 0)
                return log_error_errno(r, "Failed to start device monitor: %m");

        (void) sd_event_source_set_description(sd_device_monitor_get_event_source(manager->monitor), "device-monitor");

        r = sd_event_add_io(manager->event, ((void*)0), fd_worker, EPOLLIN, on_worker, manager);
        if (r < 0)
                return log_error_errno(r, "Failed to create worker event source: %m");

        r = sd_event_add_post(manager->event, ((void*)0), on_post, manager);
        if (r < 0)
                return log_error_errno(r, "Failed to create post event source: %m");

        udev_builtin_init();

        r = udev_rules_new(&manager->rules, arg_resolve_name_timing);
        if (!manager->rules)
                return log_error_errno(r, "Failed to read udev rules: %m");

        r = udev_rules_apply_static_dev_perms(manager->rules);
        if (r < 0)
                log_error_errno(r, "Failed to apply permissions on static device nodes: %m");

        (void) sd_notifyf(0,
                          "READY=1\n"
                          "STATUS=Processing with %u children at max", arg_children_max);

        r = sd_event_loop(manager->event);
        if (r < 0)
                log_error_errno(r, "Event loop failed: %m");

        sd_notify(0,
                  "STOPPING=1\n"
                  "STATUS=Shutting down...");
        return r;
}
