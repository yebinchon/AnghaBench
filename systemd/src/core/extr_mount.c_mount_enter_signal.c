
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ send_sigkill; } ;
struct TYPE_10__ {scalar_t__ result; TYPE_2__ kill_context; int timeout_usec; int control_pid; } ;
typedef int MountState ;
typedef scalar_t__ MountResult ;
typedef TYPE_1__ Mount ;


 int CLOCK_MONOTONIC ;
 scalar_t__ IN_SET (int ,int ,int ) ;
 scalar_t__ MOUNT_FAILURE_RESOURCES ;
 int MOUNT_REMOUNTING_SIGKILL ;
 int MOUNT_REMOUNTING_SIGTERM ;
 scalar_t__ MOUNT_SUCCESS ;
 int MOUNT_UNMOUNTING_SIGKILL ;
 int MOUNT_UNMOUNTING_SIGTERM ;
 int UNIT (TYPE_1__*) ;
 int assert (TYPE_1__*) ;
 int log_unit_warning_errno (int ,int,char*) ;
 int mount_arm_timer (TYPE_1__*,int ) ;
 int mount_enter_dead_or_mounted (TYPE_1__*,scalar_t__) ;
 int mount_enter_mounted (TYPE_1__*,scalar_t__) ;
 int mount_set_state (TYPE_1__*,int ) ;
 int now (int ) ;
 int state_to_kill_operation (int ) ;
 int unit_kill_context (int ,TYPE_2__*,int ,int,int ,int) ;
 int usec_add (int ,int ) ;

__attribute__((used)) static void mount_enter_signal(Mount *m, MountState state, MountResult f) {
        int r;

        assert(m);

        if (m->result == MOUNT_SUCCESS)
                m->result = f;

        r = unit_kill_context(
                        UNIT(m),
                        &m->kill_context,
                        state_to_kill_operation(state),
                        -1,
                        m->control_pid,
                        0);
        if (r < 0)
                goto fail;

        if (r > 0) {
                r = mount_arm_timer(m, usec_add(now(CLOCK_MONOTONIC), m->timeout_usec));
                if (r < 0)
                        goto fail;

                mount_set_state(m, state);
        } else if (state == MOUNT_REMOUNTING_SIGTERM && m->kill_context.send_sigkill)
                mount_enter_signal(m, MOUNT_REMOUNTING_SIGKILL, MOUNT_SUCCESS);
        else if (IN_SET(state, MOUNT_REMOUNTING_SIGTERM, MOUNT_REMOUNTING_SIGKILL))
                mount_enter_mounted(m, MOUNT_SUCCESS);
        else if (state == MOUNT_UNMOUNTING_SIGTERM && m->kill_context.send_sigkill)
                mount_enter_signal(m, MOUNT_UNMOUNTING_SIGKILL, MOUNT_SUCCESS);
        else
                mount_enter_dead_or_mounted(m, MOUNT_SUCCESS);

        return;

fail:
        log_unit_warning_errno(UNIT(m), r, "Failed to kill processes: %m");
        mount_enter_dead_or_mounted(m, MOUNT_FAILURE_RESOURCES);
}
