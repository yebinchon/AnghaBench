
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ usec_t ;
struct timespec {int dummy; } ;
struct pollfd {int fd; int revents; int events; } ;
typedef int sd_journal ;


 int ECANCELED ;
 int EINTR ;
 int ELEMENTSOF (struct pollfd*) ;
 int POLLERR ;
 int POLLHUP ;
 int POLLIN ;
 int STDOUT_FILENO ;
 int SYNTHETIC_ERRNO (int ) ;
 scalar_t__ USEC_INFINITY ;
 int assert (int) ;
 int errno ;
 int log_debug_errno (int ,char*) ;
 int log_error_errno (int,char*) ;
 scalar_t__ ppoll (struct pollfd*,int ,int *,int *) ;
 int sd_journal_get_timeout (int *,scalar_t__*) ;
 int sd_journal_process (int *) ;
 int * timespec_store (struct timespec*,scalar_t__) ;

__attribute__((used)) static int wait_for_change(sd_journal *j, int poll_fd) {
        struct pollfd pollfds[] = {
                { .fd = poll_fd, .events = POLLIN },
                { .fd = STDOUT_FILENO },
        };

        struct timespec ts;
        usec_t timeout;
        int r;

        assert(j);
        assert(poll_fd >= 0);




        r = sd_journal_get_timeout(j, &timeout);
        if (r < 0)
                return log_error_errno(r, "Failed to determine journal waiting time: %m");

        if (ppoll(pollfds, ELEMENTSOF(pollfds),
                  timeout == USEC_INFINITY ? ((void*)0) : timespec_store(&ts, timeout), ((void*)0)) < 0) {
                if (errno == EINTR)
                        return 0;

                return log_error_errno(errno, "Couldn't wait for journal event: %m");
        }

        if (pollfds[1].revents & (POLLHUP|POLLERR))
                return log_debug_errno(SYNTHETIC_ERRNO(ECANCELED),
                                       "Standard output has been closed.");

        r = sd_journal_process(j);
        if (r < 0)
                return log_error_errno(r, "Failed to process journal events: %m");

        return 0;
}
