
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ hostname_fd; int hostname_event_source; int event; } ;
typedef TYPE_1__ Server ;


 int EPERM ;
 int O_CLOEXEC ;
 int O_NOCTTY ;
 int O_NONBLOCK ;
 int O_RDONLY ;
 scalar_t__ SD_EVENT_PRIORITY_IMPORTANT ;
 int assert (TYPE_1__*) ;
 int dispatch_hostname_change ;
 int errno ;
 int log_error_errno (int,char*) ;
 int log_warning_errno (int,char*) ;
 scalar_t__ open (char*,int) ;
 scalar_t__ safe_close (scalar_t__) ;
 int sd_event_add_io (int ,int *,scalar_t__,int ,int ,TYPE_1__*) ;
 int sd_event_source_set_priority (int ,scalar_t__) ;

__attribute__((used)) static int server_open_hostname(Server *s) {
        int r;

        assert(s);

        s->hostname_fd = open("/proc/sys/kernel/hostname",
                              O_RDONLY|O_CLOEXEC|O_NONBLOCK|O_NOCTTY);
        if (s->hostname_fd < 0)
                return log_error_errno(errno, "Failed to open /proc/sys/kernel/hostname: %m");

        r = sd_event_add_io(s->event, &s->hostname_event_source, s->hostname_fd, 0, dispatch_hostname_change, s);
        if (r < 0) {


                if (r == -EPERM) {
                        log_warning_errno(r, "Failed to register hostname fd in event loop, ignoring: %m");
                        s->hostname_fd = safe_close(s->hostname_fd);
                        return 0;
                }

                return log_error_errno(r, "Failed to register hostname fd in event loop: %m");
        }

        r = sd_event_source_set_priority(s->hostname_event_source, SD_EVENT_PRIORITY_IMPORTANT-10);
        if (r < 0)
                return log_error_errno(r, "Failed to adjust priority of host name event source: %m");

        return 0;
}
