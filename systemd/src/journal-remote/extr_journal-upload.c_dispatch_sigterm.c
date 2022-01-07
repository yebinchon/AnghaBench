
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct signalfd_siginfo {int dummy; } ;
typedef int sd_event_source ;
struct TYPE_5__ {int events; } ;
typedef TYPE_1__ Uploader ;


 int LOG_INFO ;
 int assert (TYPE_1__*) ;
 int close_fd_input (TYPE_1__*) ;
 int close_journal_input (TYPE_1__*) ;
 int log_received_signal (int ,struct signalfd_siginfo const*) ;
 int sd_event_exit (int ,int ) ;

__attribute__((used)) static int dispatch_sigterm(sd_event_source *event,
                            const struct signalfd_siginfo *si,
                            void *userdata) {
        Uploader *u = userdata;

        assert(u);

        log_received_signal(LOG_INFO, si);

        close_fd_input(u);
        close_journal_input(u);

        sd_event_exit(u->events, 0);
        return 0;
}
