
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct signalfd_siginfo {int dummy; } ;
typedef int sd_event_source ;
typedef scalar_t__ pid_t ;


 scalar_t__ PTR_TO_PID (void*) ;
 int arg_kill_signal ;
 scalar_t__ kill (scalar_t__,int ) ;
 int log_info (char*) ;
 int sd_event_exit (int ,int ) ;
 int sd_event_source_get_event (int *) ;
 int sd_event_source_set_userdata (int *,int *) ;

__attribute__((used)) static int on_orderly_shutdown(sd_event_source *s, const struct signalfd_siginfo *si, void *userdata) {
        pid_t pid;

        pid = PTR_TO_PID(userdata);
        if (pid > 0) {
                if (kill(pid, arg_kill_signal) >= 0) {
                        log_info("Trying to halt container. Send SIGTERM again to trigger immediate termination.");
                        sd_event_source_set_userdata(s, ((void*)0));
                        return 0;
                }
        }

        sd_event_exit(sd_event_source_get_event(s), 0);
        return 0;
}
