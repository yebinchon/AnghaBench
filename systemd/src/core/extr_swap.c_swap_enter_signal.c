
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ send_sigkill; } ;
struct TYPE_10__ {scalar_t__ result; TYPE_2__ kill_context; int timeout_usec; int control_pid; } ;
typedef int SwapState ;
typedef scalar_t__ SwapResult ;
typedef TYPE_1__ Swap ;


 int CLOCK_MONOTONIC ;
 int SWAP_DEACTIVATING_SIGKILL ;
 int SWAP_DEACTIVATING_SIGTERM ;
 scalar_t__ SWAP_FAILURE_RESOURCES ;
 scalar_t__ SWAP_SUCCESS ;
 int UNIT (TYPE_1__*) ;
 int assert (TYPE_1__*) ;
 int log_unit_warning_errno (int ,int,char*) ;
 int now (int ) ;
 int state_to_kill_operation (TYPE_1__*,int ) ;
 int swap_arm_timer (TYPE_1__*,int ) ;
 int swap_enter_dead_or_active (TYPE_1__*,scalar_t__) ;
 int swap_set_state (TYPE_1__*,int ) ;
 int unit_kill_context (int ,TYPE_2__*,int ,int,int ,int) ;
 int usec_add (int ,int ) ;

__attribute__((used)) static void swap_enter_signal(Swap *s, SwapState state, SwapResult f) {
        int r;

        assert(s);

        if (s->result == SWAP_SUCCESS)
                s->result = f;

        r = unit_kill_context(UNIT(s),
                              &s->kill_context,
                              state_to_kill_operation(s, state),
                              -1,
                              s->control_pid,
                              0);
        if (r < 0)
                goto fail;

        if (r > 0) {
                r = swap_arm_timer(s, usec_add(now(CLOCK_MONOTONIC), s->timeout_usec));
                if (r < 0)
                        goto fail;

                swap_set_state(s, state);
        } else if (state == SWAP_DEACTIVATING_SIGTERM && s->kill_context.send_sigkill)
                swap_enter_signal(s, SWAP_DEACTIVATING_SIGKILL, SWAP_SUCCESS);
        else
                swap_enter_dead_or_active(s, SWAP_SUCCESS);

        return;

fail:
        log_unit_warning_errno(UNIT(s), r, "Failed to kill processes: %m");
        swap_enter_dead_or_active(s, SWAP_FAILURE_RESOURCES);
}
