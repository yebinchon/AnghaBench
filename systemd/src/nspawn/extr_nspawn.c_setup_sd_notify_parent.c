
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sd_event_source ;
typedef int sd_event ;
typedef int pid_t ;


 int EPOLLIN ;
 int log_error_errno (int,char*) ;
 int nspawn_dispatch_notify_fd ;
 int sd_event_add_io (int *,int **,int,int ,int ,int *) ;
 int sd_event_source_set_description (int *,char*) ;

__attribute__((used)) static int setup_sd_notify_parent(sd_event *event, int fd, pid_t *inner_child_pid, sd_event_source **notify_event_source) {
        int r;

        r = sd_event_add_io(event, notify_event_source, fd, EPOLLIN, nspawn_dispatch_notify_fd, inner_child_pid);
        if (r < 0)
                return log_error_errno(r, "Failed to allocate notify event source: %m");

        (void) sd_event_source_set_description(*notify_event_source, "nspawn-notify");

        return 0;
}
