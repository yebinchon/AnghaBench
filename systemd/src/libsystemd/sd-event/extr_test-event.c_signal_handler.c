
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct signalfd_siginfo {int dummy; } ;
typedef int sd_event_source ;
typedef scalar_t__ pid_t ;


 int EXIT_SUCCESS ;
 void* INT_TO_PTR (float) ;
 int PTR_TO_INT (void*) ;
 int SD_EVENT_ONESHOT ;
 int SIGCHLD ;
 int SIG_BLOCK ;
 int WEXITED ;
 int _exit (int ) ;
 int assert_se (int) ;
 int child_handler ;
 scalar_t__ fork () ;
 int log_info (char*,int ) ;
 scalar_t__ sd_event_add_child (int ,int **,scalar_t__,int ,int ,void*) ;
 int sd_event_source_get_event (int *) ;
 scalar_t__ sd_event_source_set_enabled (int *,int ) ;
 int sd_event_source_unref (int *) ;
 scalar_t__ sigprocmask_many (int ,int *,int ,int) ;

__attribute__((used)) static int signal_handler(sd_event_source *s, const struct signalfd_siginfo *si, void *userdata) {
        sd_event_source *p = ((void*)0);
        pid_t pid;

        assert_se(s);
        assert_se(si);

        log_info("got signal on %c", PTR_TO_INT(userdata));

        assert_se(userdata == INT_TO_PTR('e'));

        assert_se(sigprocmask_many(SIG_BLOCK, ((void*)0), SIGCHLD, -1) >= 0);

        pid = fork();
        assert_se(pid >= 0);

        if (pid == 0)
                _exit(EXIT_SUCCESS);

        assert_se(sd_event_add_child(sd_event_source_get_event(s), &p, pid, WEXITED, child_handler, INT_TO_PTR('f')) >= 0);
        assert_se(sd_event_source_set_enabled(p, SD_EVENT_ONESHOT) >= 0);

        sd_event_source_unref(s);

        return 1;
}
