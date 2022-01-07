
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int sigrtmin1_event_source; int event; int sigint_event_source; int sigterm_event_source; int sigusr2_event_source; int sigusr1_event_source; } ;
typedef TYPE_1__ Server ;


 scalar_t__ SD_EVENT_PRIORITY_NORMAL ;
 scalar_t__ SIGINT ;
 scalar_t__ SIGRTMIN ;
 scalar_t__ SIGTERM ;
 scalar_t__ SIGUSR1 ;
 scalar_t__ SIGUSR2 ;
 int SIG_SETMASK ;
 int assert (TYPE_1__*) ;
 int assert_se (int) ;
 int dispatch_sigrtmin1 ;
 int dispatch_sigterm ;
 int dispatch_sigusr1 ;
 int dispatch_sigusr2 ;
 int sd_event_add_signal (int ,int *,scalar_t__,int ,TYPE_1__*) ;
 int sd_event_source_set_priority (int ,scalar_t__) ;
 scalar_t__ sigprocmask_many (int ,int *,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int) ;

__attribute__((used)) static int setup_signals(Server *s) {
        int r;

        assert(s);

        assert_se(sigprocmask_many(SIG_SETMASK, ((void*)0), SIGINT, SIGTERM, SIGUSR1, SIGUSR2, SIGRTMIN+1, -1) >= 0);

        r = sd_event_add_signal(s->event, &s->sigusr1_event_source, SIGUSR1, dispatch_sigusr1, s);
        if (r < 0)
                return r;

        r = sd_event_add_signal(s->event, &s->sigusr2_event_source, SIGUSR2, dispatch_sigusr2, s);
        if (r < 0)
                return r;

        r = sd_event_add_signal(s->event, &s->sigterm_event_source, SIGTERM, dispatch_sigterm, s);
        if (r < 0)
                return r;


        r = sd_event_source_set_priority(s->sigterm_event_source, SD_EVENT_PRIORITY_NORMAL+20);
        if (r < 0)
                return r;



        r = sd_event_add_signal(s->event, &s->sigint_event_source, SIGINT, dispatch_sigterm, s);
        if (r < 0)
                return r;

        r = sd_event_source_set_priority(s->sigint_event_source, SD_EVENT_PRIORITY_NORMAL+20);
        if (r < 0)
                return r;




        r = sd_event_add_signal(s->event, &s->sigrtmin1_event_source, SIGRTMIN+1, dispatch_sigrtmin1, s);
        if (r < 0)
                return r;

        r = sd_event_source_set_priority(s->sigrtmin1_event_source, SD_EVENT_PRIORITY_NORMAL+15);
        if (r < 0)
                return r;

        return 0;
}
