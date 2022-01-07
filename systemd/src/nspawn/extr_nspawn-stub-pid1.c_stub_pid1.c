
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ usec_t ;
struct timespec {int dummy; } ;
typedef int sigset_t ;
struct TYPE_5__ {scalar_t__ si_pid; scalar_t__ si_code; int si_status; scalar_t__ si_signo; } ;
typedef TYPE_1__ siginfo_t ;
typedef int sd_id128_t ;
typedef scalar_t__ pid_t ;
typedef int new_environment ;


 scalar_t__ CLD_EXITED ;
 int CLOCK_MONOTONIC ;
 scalar_t__ DEFAULT_TIMEOUT_USEC ;
 scalar_t__ EAGAIN ;
 scalar_t__ EINTR ;
 scalar_t__ ENOTTY ;
 int ESRCH ;
 int EXIT_EXCEPTION ;
 int EXIT_FAILURE ;
 int P_ALL ;
 int RB_AUTOBOOT ;
 int RB_POWER_OFF ;
 int SD_ID128_STRING_MAX ;
 scalar_t__ SIGCHLD ;
 int SIGHUP ;
 scalar_t__ SIGINT ;
 scalar_t__ SIGRTMIN ;
 int SIGTERM ;
 int SIG_BLOCK ;
 int SIG_SETMASK ;
 int STDIN_FILENO ;
 int TIOCNOTTY ;
 scalar_t__ USEC_INFINITY ;
 int WEXITED ;
 int WNOHANG ;
 int _exit (int) ;
 int assert_not_reached (char*) ;
 int assert_se (int) ;
 int close_all_fds (int *,int ) ;
 scalar_t__ errno ;
 scalar_t__ fork () ;
 int ioctl (int ,int ) ;
 int kill (scalar_t__,int ) ;
 int kill_and_sigcont (scalar_t__,int ) ;
 int log_close () ;
 int log_error_errno (scalar_t__,char*) ;
 int log_open () ;
 scalar_t__ now (int ) ;
 int reboot (int ) ;
 int rename_process (char*) ;
 int reset_all_signal_handlers () ;
 int reset_environ (char*,int) ;
 int sd_id128_to_string (int ,char*) ;
 int setsid () ;
 scalar_t__ sigemptyset (int *) ;
 scalar_t__ sigfillset (int *) ;
 scalar_t__ sigprocmask (int ,int *,int *) ;
 scalar_t__ sigset_add_many (int *,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int) ;
 int sigtimedwait (int *,TYPE_1__*,int ) ;
 int sigwaitinfo (int *,TYPE_1__*) ;
 int timespec_store (struct timespec*,scalar_t__) ;
 int waitid (int ,int ,TYPE_1__*,int) ;

int stub_pid1(sd_id128_t uuid) {
        enum {
                STATE_RUNNING,
                STATE_REBOOT,
                STATE_POWEROFF,
        } state = STATE_RUNNING;

        sigset_t fullmask, oldmask, waitmask;
        usec_t quit_usec = USEC_INFINITY;
        pid_t pid;
        int r;


        char new_environment[] =
                "container=systemd-nspawn\0"
                "container_uuid=XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";




        assert_se(sigfillset(&fullmask) >= 0);
        assert_se(sigprocmask(SIG_BLOCK, &fullmask, &oldmask) >= 0);



        r = ioctl(STDIN_FILENO, TIOCNOTTY);
        if (r < 0 && errno != ENOTTY)
                return log_error_errno(errno, "Failed to surrender controlling terminal: %m");

        pid = fork();
        if (pid < 0)
                return log_error_errno(errno, "Failed to fork child pid: %m");

        if (pid == 0) {

                assert_se(sigprocmask(SIG_SETMASK, &oldmask, ((void*)0)) >= 0);
                setsid();
                return 0;
        }

        reset_all_signal_handlers();

        log_close();
        (void) close_all_fds(((void*)0), 0);
        log_open();




        sd_id128_to_string(uuid, new_environment + sizeof(new_environment) - SD_ID128_STRING_MAX);
        reset_environ(new_environment, sizeof(new_environment));

        (void) rename_process("(sd-stubinit)");

        assert_se(sigemptyset(&waitmask) >= 0);
        assert_se(sigset_add_many(&waitmask,
                                  SIGCHLD,
                                  SIGINT,
                                  SIGRTMIN+3,
                                  SIGRTMIN+4,
                                  SIGRTMIN+5,
                                  SIGRTMIN+6,
                                  SIGRTMIN+13,
                                  SIGRTMIN+14,
                                  SIGRTMIN+15,
                                  SIGRTMIN+16,
                                  -1) >= 0);




        for (;;) {
                siginfo_t si;
                usec_t current_usec;

                si.si_pid = 0;
                r = waitid(P_ALL, 0, &si, WEXITED|WNOHANG);
                if (r < 0) {
                        r = log_error_errno(errno, "Failed to reap children: %m");
                        goto finish;
                }

                current_usec = now(CLOCK_MONOTONIC);

                if (si.si_pid == pid || current_usec >= quit_usec) {



                        if (state == STATE_REBOOT) {
                                (void) reboot(RB_AUTOBOOT);
                                r = log_error_errno(errno, "Failed to reboot: %m");
                                goto finish;

                        } else if (state == STATE_POWEROFF)
                                (void) reboot(RB_POWER_OFF);

                        if (si.si_pid == pid && si.si_code == CLD_EXITED)
                                r = si.si_status;
                        else
                                r = EXIT_EXCEPTION;

                        goto finish;
                }
                if (si.si_pid != 0)

                        continue;

                if (quit_usec == USEC_INFINITY)
                        r = sigwaitinfo(&waitmask, &si);
                else {
                        struct timespec ts;
                        r = sigtimedwait(&waitmask, &si, timespec_store(&ts, quit_usec - current_usec));
                }
                if (r < 0) {
                        if (errno == EINTR)
                                continue;
                        if (errno == EAGAIN)
                                continue;

                        r = log_error_errno(errno, "Failed to wait for signal: %m");
                        goto finish;
                }

                if (si.si_signo == SIGCHLD)
                        continue;

                if (state != STATE_RUNNING)
                        continue;




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
                        assert_not_reached("Got unexpected signal");

                r = kill_and_sigcont(pid, SIGTERM);






                if (r != -ESRCH)
                        (void) kill(pid, SIGHUP);

                quit_usec = now(CLOCK_MONOTONIC) + DEFAULT_TIMEOUT_USEC;
        }

finish:
        _exit(r < 0 ? EXIT_FAILURE : r);
}
