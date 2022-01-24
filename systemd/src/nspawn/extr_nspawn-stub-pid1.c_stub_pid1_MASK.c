#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ usec_t ;
struct timespec {int dummy; } ;
typedef  int /*<<< orphan*/  sigset_t ;
struct TYPE_5__ {scalar_t__ si_pid; scalar_t__ si_code; int si_status; scalar_t__ si_signo; } ;
typedef  TYPE_1__ siginfo_t ;
typedef  int /*<<< orphan*/  sd_id128_t ;
typedef  scalar_t__ pid_t ;
typedef  int /*<<< orphan*/  new_environment ;

/* Variables and functions */
 scalar_t__ CLD_EXITED ; 
 int /*<<< orphan*/  CLOCK_MONOTONIC ; 
 scalar_t__ DEFAULT_TIMEOUT_USEC ; 
 scalar_t__ EAGAIN ; 
 scalar_t__ EINTR ; 
 scalar_t__ ENOTTY ; 
 int ESRCH ; 
 int EXIT_EXCEPTION ; 
 int EXIT_FAILURE ; 
 int /*<<< orphan*/  P_ALL ; 
 int /*<<< orphan*/  RB_AUTOBOOT ; 
 int /*<<< orphan*/  RB_POWER_OFF ; 
 int SD_ID128_STRING_MAX ; 
 scalar_t__ SIGCHLD ; 
 int /*<<< orphan*/  SIGHUP ; 
 scalar_t__ SIGINT ; 
 scalar_t__ SIGRTMIN ; 
 int /*<<< orphan*/  SIGTERM ; 
 int /*<<< orphan*/  SIG_BLOCK ; 
 int /*<<< orphan*/  SIG_SETMASK ; 
 int /*<<< orphan*/  STDIN_FILENO ; 
 int /*<<< orphan*/  TIOCNOTTY ; 
 scalar_t__ USEC_INFINITY ; 
 int WEXITED ; 
 int WNOHANG ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ errno ; 
 scalar_t__ FUNC4 () ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC7 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int FUNC9 (scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (char*,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC17 () ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC21 (int /*<<< orphan*/ *,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int) ; 
 int FUNC22 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC23 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC24 (struct timespec*,scalar_t__) ; 
 int FUNC25 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int) ; 

int FUNC26(sd_id128_t uuid) {
        enum {
                STATE_RUNNING,
                STATE_REBOOT,
                STATE_POWEROFF,
        } state = STATE_RUNNING;

        sigset_t fullmask, oldmask, waitmask;
        usec_t quit_usec = USEC_INFINITY;
        pid_t pid;
        int r;

        /* The new environment we set up, on the stack. */
        char new_environment[] =
                "container=systemd-nspawn\0"
                "container_uuid=XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";

        /* Implements a stub PID 1, that reaps all processes and processes a couple of standard signals. This is useful
         * for allowing arbitrary processes run in a container, and still have all zombies reaped. */

        FUNC2(FUNC19(&fullmask) >= 0);
        FUNC2(FUNC20(SIG_BLOCK, &fullmask, &oldmask) >= 0);

        /* Surrender the terminal this stub may control so that child processes can have a controlling terminal
         * without resorting to setsid hacks. */
        r = FUNC5(STDIN_FILENO, TIOCNOTTY);
        if (r < 0 && errno != ENOTTY)
                return FUNC9(errno, "Failed to surrender controlling terminal: %m");

        pid = FUNC4();
        if (pid < 0)
                return FUNC9(errno, "Failed to fork child pid: %m");

        if (pid == 0) {
                /* Return in the child */
                FUNC2(FUNC20(SIG_SETMASK, &oldmask, NULL) >= 0);
                FUNC17();
                return 0;
        }

        FUNC14();

        FUNC8();
        (void) FUNC3(NULL, 0);
        FUNC10();

        /* Flush out /proc/self/environ, so that we don't leak the environment from the host into the container. Also,
         * set $container= and $container_uuid= so that clients in the container that query it from /proc/1/environ
         * find them set. */
        FUNC16(uuid, new_environment + sizeof(new_environment) - SD_ID128_STRING_MAX);
        FUNC15(new_environment, sizeof(new_environment));

        (void) FUNC13("(sd-stubinit)");

        FUNC2(FUNC18(&waitmask) >= 0);
        FUNC2(FUNC21(&waitmask,
                                  SIGCHLD,          /* posix: process died */
                                  SIGINT,           /* sysv: ctrl-alt-del */
                                  SIGRTMIN+3,       /* systemd: halt */
                                  SIGRTMIN+4,       /* systemd: poweroff */
                                  SIGRTMIN+5,       /* systemd: reboot */
                                  SIGRTMIN+6,       /* systemd: kexec */
                                  SIGRTMIN+13,      /* systemd: halt */
                                  SIGRTMIN+14,      /* systemd: poweroff */
                                  SIGRTMIN+15,      /* systemd: reboot */
                                  SIGRTMIN+16,      /* systemd: kexec */
                                  -1) >= 0);

        /* Note that we ignore SIGTERM (sysv's reexec), SIGHUP (reload), and all other signals here, since we don't
         * support reexec/reloading in this stub process. */

        for (;;) {
                siginfo_t si;
                usec_t current_usec;

                si.si_pid = 0;
                r = FUNC25(P_ALL, 0, &si, WEXITED|WNOHANG);
                if (r < 0) {
                        r = FUNC9(errno, "Failed to reap children: %m");
                        goto finish;
                }

                current_usec = FUNC11(CLOCK_MONOTONIC);

                if (si.si_pid == pid || current_usec >= quit_usec) {

                        /* The child we started ourselves died or we reached a timeout. */

                        if (state == STATE_REBOOT) { /* dispatch a queued reboot */
                                (void) FUNC12(RB_AUTOBOOT);
                                r = FUNC9(errno, "Failed to reboot: %m");
                                goto finish;

                        } else if (state == STATE_POWEROFF)
                                (void) FUNC12(RB_POWER_OFF); /* if this fails, fall back to normal exit. */

                        if (si.si_pid == pid && si.si_code == CLD_EXITED)
                                r = si.si_status; /* pass on exit code */
                        else
                                r = EXIT_EXCEPTION; /* signal, coredump, timeout, … */

                        goto finish;
                }
                if (si.si_pid != 0)
                        /* We reaped something. Retry until there's nothing more to reap. */
                        continue;

                if (quit_usec == USEC_INFINITY)
                        r = FUNC23(&waitmask, &si);
                else {
                        struct timespec ts;
                        r = FUNC22(&waitmask, &si, FUNC24(&ts, quit_usec - current_usec));
                }
                if (r < 0) {
                        if (errno == EINTR) /* strace -p attach can result in EINTR, let's handle this nicely. */
                                continue;
                        if (errno == EAGAIN) /* timeout reached */
                                continue;

                        r = FUNC9(errno, "Failed to wait for signal: %m");
                        goto finish;
                }

                if (si.si_signo == SIGCHLD)
                        continue; /* Let's reap this */

                if (state != STATE_RUNNING)
                        continue;

                /* Would love to use a switch() statement here, but SIGRTMIN is actually a function call, not a
                 * constant… */

                if (si.si_signo == SIGRTMIN+3 ||
                    si.si_signo == SIGRTMIN+4 ||
                    si.si_signo == SIGRTMIN+13 ||
                    si.si_signo == SIGRTMIN+14)

                        state = STATE_POWEROFF;

                else if (si.si_signo == SIGINT ||
                         si.si_signo == SIGRTMIN+5 ||
                         si.si_signo == SIGRTMIN+6 ||
                         si.si_signo == SIGRTMIN+15 ||
                         si.si_signo == SIGRTMIN+16)

                        state = STATE_REBOOT;
                else
                        FUNC1("Got unexpected signal");

                r = FUNC7(pid, SIGTERM);

                /* Let's send a SIGHUP after the SIGTERM, as shells tend to ignore SIGTERM but do react to SIGHUP. We
                 * do it strictly in this order, so that the SIGTERM is dispatched first, and SIGHUP second for those
                 * processes which handle both. That's because services tend to bind configuration reload or something
                 * else to SIGHUP. */

                if (r != -ESRCH)
                        (void) FUNC6(pid, SIGHUP);

                quit_usec = FUNC11(CLOCK_MONOTONIC) + DEFAULT_TIMEOUT_USEC;
        }

finish:
        FUNC0(r < 0 ? EXIT_FAILURE : r);
}