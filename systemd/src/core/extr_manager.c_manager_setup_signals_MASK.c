#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct sigaction {int sa_flags; int /*<<< orphan*/  sa_handler; } ;
typedef  int /*<<< orphan*/  sigset_t ;
struct TYPE_7__ {scalar_t__ signal_fd; int /*<<< orphan*/  signal_event_source; int /*<<< orphan*/  event; } ;
typedef  TYPE_1__ Manager ;

/* Variables and functions */
 int /*<<< orphan*/  EPOLLIN ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int SA_NOCLDSTOP ; 
 int SA_RESTART ; 
 scalar_t__ SD_EVENT_PRIORITY_NORMAL ; 
 int SFD_CLOEXEC ; 
 int SFD_NONBLOCK ; 
 int /*<<< orphan*/  SIGCHLD ; 
 int /*<<< orphan*/  SIGHUP ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIGPWR ; 
 scalar_t__ SIGRTMIN ; 
 int /*<<< orphan*/  SIGTERM ; 
 int /*<<< orphan*/  SIGUSR1 ; 
 int /*<<< orphan*/  SIGUSR2 ; 
 int /*<<< orphan*/  SIGWINCH ; 
 int /*<<< orphan*/  SIG_DFL ; 
 int /*<<< orphan*/  SIG_SETMASK ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (TYPE_1__*) ; 
 int errno ; 
 int /*<<< orphan*/  manager_dispatch_signal_fd ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int FUNC7 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,struct sigaction*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC13(Manager *m) {
        struct sigaction sa = {
                .sa_handler = SIG_DFL,
                .sa_flags = SA_NOCLDSTOP|SA_RESTART,
        };
        sigset_t mask;
        int r;

        FUNC2(m);

        FUNC3(FUNC8(SIGCHLD, &sa, NULL) == 0);

        /* We make liberal use of realtime signals here. On
         * Linux/glibc we have 30 of them (with the exception of Linux
         * on hppa, see below), between SIGRTMIN+0 ... SIGRTMIN+30
         * (aka SIGRTMAX). */

        FUNC3(FUNC9(&mask) == 0);
        FUNC12(&mask,
                        SIGCHLD,     /* Child died */
                        SIGTERM,     /* Reexecute daemon */
                        SIGHUP,      /* Reload configuration */
                        SIGUSR1,     /* systemd/upstart: reconnect to D-Bus */
                        SIGUSR2,     /* systemd: dump status */
                        SIGINT,      /* Kernel sends us this on control-alt-del */
                        SIGWINCH,    /* Kernel sends us this on kbrequest (alt-arrowup) */
                        SIGPWR,      /* Some kernel drivers and upsd send us this on power failure */

                        SIGRTMIN+0,  /* systemd: start default.target */
                        SIGRTMIN+1,  /* systemd: isolate rescue.target */
                        SIGRTMIN+2,  /* systemd: isolate emergency.target */
                        SIGRTMIN+3,  /* systemd: start halt.target */
                        SIGRTMIN+4,  /* systemd: start poweroff.target */
                        SIGRTMIN+5,  /* systemd: start reboot.target */
                        SIGRTMIN+6,  /* systemd: start kexec.target */

                        /* ... space for more special targets ... */

                        SIGRTMIN+13, /* systemd: Immediate halt */
                        SIGRTMIN+14, /* systemd: Immediate poweroff */
                        SIGRTMIN+15, /* systemd: Immediate reboot */
                        SIGRTMIN+16, /* systemd: Immediate kexec */

                        /* ... space for more immediate system state changes ... */

                        SIGRTMIN+20, /* systemd: enable status messages */
                        SIGRTMIN+21, /* systemd: disable status messages */
                        SIGRTMIN+22, /* systemd: set log level to LOG_DEBUG */
                        SIGRTMIN+23, /* systemd: set log level to LOG_INFO */
                        SIGRTMIN+24, /* systemd: Immediate exit (--user only) */

                        /* .. one free signal here ... */

                        /* Apparently Linux on hppa had fewer RT signals until v3.18,
                         * SIGRTMAX was SIGRTMIN+25, and then SIGRTMIN was lowered,
                         * see commit v3.17-7614-g1f25df2eff.
                         *
                         * We cannot unconditionally make use of those signals here,
                         * so let's use a runtime check. Since these commands are
                         * accessible by different means and only really a safety
                         * net, the missing functionality on hppa shouldn't matter.
                         */

                        FUNC1(SIGRTMIN+26), /* systemd: set log target to journal-or-kmsg */
                        FUNC1(SIGRTMIN+27), /* systemd: set log target to console */
                        FUNC1(SIGRTMIN+28), /* systemd: set log target to kmsg */
                        FUNC1(SIGRTMIN+29), /* systemd: set log target to syslog-or-kmsg (obsolete) */

                        /* ... one free signal here SIGRTMIN+30 ... */
                        -1);
        FUNC3(FUNC11(SIG_SETMASK, &mask, NULL) == 0);

        m->signal_fd = FUNC10(-1, &mask, SFD_NONBLOCK|SFD_CLOEXEC);
        if (m->signal_fd < 0)
                return -errno;

        r = FUNC5(m->event, &m->signal_event_source, m->signal_fd, EPOLLIN, manager_dispatch_signal_fd, m);
        if (r < 0)
                return r;

        (void) FUNC6(m->signal_event_source, "manager-signal");

        /* Process signals a bit earlier than the rest of things, but later than notify_fd processing, so that the
         * notify processing can still figure out to which process/service a message belongs, before we reap the
         * process. Also, process this before handling cgroup notifications, so that we always collect child exit
         * status information before detecting that there's no process in a cgroup. */
        r = FUNC7(m->signal_event_source, SD_EVENT_PRIORITY_NORMAL-6);
        if (r < 0)
                return r;

        if (FUNC0(m))
                return FUNC4(m);

        return 0;
}