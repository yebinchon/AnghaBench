
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef size_t ssize_t ;
typedef int sd_event_source ;
typedef int buf ;
typedef int Manager ;


 int PATH_MAX ;
 int bus_forward_agent_released (int *,char*) ;
 int errno ;
 int log_error (char*) ;
 int log_error_errno (int ,char*) ;
 int manager_notify_cgroup_empty (int *,char*) ;
 scalar_t__ memchr (char*,int ,size_t) ;
 size_t recv (int,char*,int,int ) ;

__attribute__((used)) static int manager_dispatch_cgroups_agent_fd(sd_event_source *source, int fd, uint32_t revents, void *userdata) {
        Manager *m = userdata;
        char buf[PATH_MAX];
        ssize_t n;

        n = recv(fd, buf, sizeof(buf), 0);
        if (n < 0)
                return log_error_errno(errno, "Failed to read cgroups agent message: %m");
        if (n == 0) {
                log_error("Got zero-length cgroups agent message, ignoring.");
                return 0;
        }
        if ((size_t) n >= sizeof(buf)) {
                log_error("Got overly long cgroups agent message, ignoring.");
                return 0;
        }

        if (memchr(buf, 0, n)) {
                log_error("Got cgroups agent message with embedded NUL byte, ignoring.");
                return 0;
        }
        buf[n] = 0;

        manager_notify_cgroup_empty(m, buf);
        (void) bus_forward_agent_released(m, buf);

        return 0;
}
