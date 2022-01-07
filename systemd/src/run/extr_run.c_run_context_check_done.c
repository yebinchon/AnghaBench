
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int event; scalar_t__ forward; int active_state; scalar_t__ match; } ;
typedef TYPE_1__ RunContext ;


 int EXIT_SUCCESS ;
 int STRPTR_IN_SET (int ,char*,char*) ;
 int assert (TYPE_1__*) ;
 int pty_forward_drain (scalar_t__) ;
 int sd_event_exit (int ,int ) ;

__attribute__((used)) static void run_context_check_done(RunContext *c) {
        bool done;

        assert(c);

        if (c->match)
                done = STRPTR_IN_SET(c->active_state, "inactive", "failed");
        else
                done = 1;

        if (c->forward && done)
                done = pty_forward_drain(c->forward);

        if (done)
                sd_event_exit(c->event, EXIT_SUCCESS);
}
