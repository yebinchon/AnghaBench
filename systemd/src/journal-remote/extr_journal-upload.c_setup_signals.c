
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int sigint_event; int events; int sigterm_event; } ;
typedef TYPE_1__ Uploader ;


 int SIGINT ;
 int SIGTERM ;
 int SIG_SETMASK ;
 int assert (TYPE_1__*) ;
 int assert_se (int) ;
 int dispatch_sigterm ;
 int sd_event_add_signal (int ,int *,int ,int ,TYPE_1__*) ;
 scalar_t__ sigprocmask_many (int ,int *,int ,int ,int) ;

__attribute__((used)) static int setup_signals(Uploader *u) {
        int r;

        assert(u);

        assert_se(sigprocmask_many(SIG_SETMASK, ((void*)0), SIGINT, SIGTERM, -1) >= 0);

        r = sd_event_add_signal(u->events, &u->sigterm_event, SIGTERM, dispatch_sigterm, u);
        if (r < 0)
                return r;

        r = sd_event_add_signal(u->events, &u->sigint_event, SIGINT, dispatch_sigterm, u);
        if (r < 0)
                return r;

        return 0;
}
