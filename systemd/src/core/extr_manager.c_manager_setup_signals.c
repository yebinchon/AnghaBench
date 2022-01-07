
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct sigaction {int sa_flags; int sa_handler; } ;
typedef int sigset_t ;
struct TYPE_7__ {scalar_t__ signal_fd; int signal_event_source; int event; } ;
typedef TYPE_1__ Manager ;


 int EPOLLIN ;
 scalar_t__ MANAGER_IS_SYSTEM (TYPE_1__*) ;
 int RTSIG_IF_AVAILABLE (scalar_t__) ;
 int SA_NOCLDSTOP ;
 int SA_RESTART ;
 scalar_t__ SD_EVENT_PRIORITY_NORMAL ;
 int SFD_CLOEXEC ;
 int SFD_NONBLOCK ;
 int SIGCHLD ;
 int SIGHUP ;
 int SIGINT ;
 int SIGPWR ;
 scalar_t__ SIGRTMIN ;
 int SIGTERM ;
 int SIGUSR1 ;
 int SIGUSR2 ;
 int SIGWINCH ;
 int SIG_DFL ;
 int SIG_SETMASK ;
 int assert (TYPE_1__*) ;
 int assert_se (int) ;
 int enable_special_signals (TYPE_1__*) ;
 int errno ;
 int manager_dispatch_signal_fd ;
 int sd_event_add_io (int ,int *,scalar_t__,int ,int ,TYPE_1__*) ;
 int sd_event_source_set_description (int ,char*) ;
 int sd_event_source_set_priority (int ,scalar_t__) ;
 scalar_t__ sigaction (int ,struct sigaction*,int *) ;
 scalar_t__ sigemptyset (int *) ;
 scalar_t__ signalfd (int,int *,int) ;
 scalar_t__ sigprocmask (int ,int *,int *) ;
 int sigset_add_many (int *,int ,int ,int ,int ,int ,int ,int ,int ,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int ,int ,int ,int ,int) ;

__attribute__((used)) static int manager_setup_signals(Manager *m) {
        struct sigaction sa = {
                .sa_handler = SIG_DFL,
                .sa_flags = SA_NOCLDSTOP|SA_RESTART,
        };
        sigset_t mask;
        int r;

        assert(m);

        assert_se(sigaction(SIGCHLD, &sa, ((void*)0)) == 0);






        assert_se(sigemptyset(&mask) == 0);
        sigset_add_many(&mask,
                        SIGCHLD,
                        SIGTERM,
                        SIGHUP,
                        SIGUSR1,
                        SIGUSR2,
                        SIGINT,
                        SIGWINCH,
                        SIGPWR,

                        SIGRTMIN+0,
                        SIGRTMIN+1,
                        SIGRTMIN+2,
                        SIGRTMIN+3,
                        SIGRTMIN+4,
                        SIGRTMIN+5,
                        SIGRTMIN+6,



                        SIGRTMIN+13,
                        SIGRTMIN+14,
                        SIGRTMIN+15,
                        SIGRTMIN+16,



                        SIGRTMIN+20,
                        SIGRTMIN+21,
                        SIGRTMIN+22,
                        SIGRTMIN+23,
                        SIGRTMIN+24,
                        RTSIG_IF_AVAILABLE(SIGRTMIN+26),
                        RTSIG_IF_AVAILABLE(SIGRTMIN+27),
                        RTSIG_IF_AVAILABLE(SIGRTMIN+28),
                        RTSIG_IF_AVAILABLE(SIGRTMIN+29),


                        -1);
        assert_se(sigprocmask(SIG_SETMASK, &mask, ((void*)0)) == 0);

        m->signal_fd = signalfd(-1, &mask, SFD_NONBLOCK|SFD_CLOEXEC);
        if (m->signal_fd < 0)
                return -errno;

        r = sd_event_add_io(m->event, &m->signal_event_source, m->signal_fd, EPOLLIN, manager_dispatch_signal_fd, m);
        if (r < 0)
                return r;

        (void) sd_event_source_set_description(m->signal_event_source, "manager-signal");





        r = sd_event_source_set_priority(m->signal_event_source, SD_EVENT_PRIORITY_NORMAL-6);
        if (r < 0)
                return r;

        if (MANAGER_IS_SYSTEM(m))
                return enable_special_signals(m);

        return 0;
}
