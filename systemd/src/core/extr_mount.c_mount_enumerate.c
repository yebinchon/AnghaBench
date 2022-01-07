
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int mount_event_source; int event; scalar_t__ mount_monitor; } ;
typedef TYPE_1__ Manager ;


 int EPOLLIN ;
 scalar_t__ SD_EVENT_PRIORITY_NORMAL ;
 int assert (TYPE_1__*) ;
 int log_error_errno (int,char*) ;
 int log_oom () ;
 int mnt_init_debug (int ) ;
 int mnt_monitor_enable_kernel (scalar_t__,int) ;
 int mnt_monitor_enable_userspace (scalar_t__,int,int *) ;
 int mnt_monitor_get_fd (scalar_t__) ;
 scalar_t__ mnt_new_monitor () ;
 int mount_dispatch_io ;
 int mount_load_proc_self_mountinfo (TYPE_1__*,int) ;
 int mount_shutdown (TYPE_1__*) ;
 int sd_event_add_io (int ,int *,int,int ,int ,TYPE_1__*) ;
 int sd_event_source_set_description (int ,char*) ;
 int sd_event_source_set_priority (int ,scalar_t__) ;

__attribute__((used)) static void mount_enumerate(Manager *m) {
        int r;

        assert(m);

        mnt_init_debug(0);

        if (!m->mount_monitor) {
                int fd;

                m->mount_monitor = mnt_new_monitor();
                if (!m->mount_monitor) {
                        log_oom();
                        goto fail;
                }

                r = mnt_monitor_enable_kernel(m->mount_monitor, 1);
                if (r < 0) {
                        log_error_errno(r, "Failed to enable watching of kernel mount events: %m");
                        goto fail;
                }

                r = mnt_monitor_enable_userspace(m->mount_monitor, 1, ((void*)0));
                if (r < 0) {
                        log_error_errno(r, "Failed to enable watching of userspace mount events: %m");
                        goto fail;
                }


                fd = r = mnt_monitor_get_fd(m->mount_monitor);
                if (r < 0) {
                        log_error_errno(r, "Failed to acquire watch file descriptor: %m");
                        goto fail;
                }

                r = sd_event_add_io(m->event, &m->mount_event_source, fd, EPOLLIN, mount_dispatch_io, m);
                if (r < 0) {
                        log_error_errno(r, "Failed to watch mount file descriptor: %m");
                        goto fail;
                }

                r = sd_event_source_set_priority(m->mount_event_source, SD_EVENT_PRIORITY_NORMAL-10);
                if (r < 0) {
                        log_error_errno(r, "Failed to adjust mount watch priority: %m");
                        goto fail;
                }

                (void) sd_event_source_set_description(m->mount_event_source, "mount-monitor-dispatch");
        }

        r = mount_load_proc_self_mountinfo(m, 0);
        if (r < 0)
                goto fail;

        return;

fail:
        mount_shutdown(m);
}
