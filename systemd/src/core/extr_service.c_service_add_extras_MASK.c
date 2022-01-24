#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {TYPE_1__* manager; } ;
struct TYPE_15__ {int memory_oom_group; scalar_t__ delegate; } ;
struct TYPE_16__ {scalar_t__ type; scalar_t__ notify_access; scalar_t__ watchdog_usec; scalar_t__ n_fd_store_max; scalar_t__ oom_policy; TYPE_2__ cgroup_context; int /*<<< orphan*/  exec_context; int /*<<< orphan*/  timeout_start_usec; int /*<<< orphan*/  start_timeout_defined; scalar_t__* exec_command; scalar_t__ bus_name; } ;
struct TYPE_14__ {scalar_t__ default_oom_policy; } ;
typedef  TYPE_3__ Service ;

/* Variables and functions */
 scalar_t__ NOTIFY_MAIN ; 
 scalar_t__ NOTIFY_NONE ; 
 scalar_t__ OOM_CONTINUE ; 
 scalar_t__ OOM_KILL ; 
 scalar_t__ SERVICE_DBUS ; 
 size_t SERVICE_EXEC_START ; 
 scalar_t__ SERVICE_NOTIFY ; 
 scalar_t__ SERVICE_ONESHOT ; 
 scalar_t__ SERVICE_SIMPLE ; 
 TYPE_4__* FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  USEC_INFINITY ; 
 scalar_t__ _SERVICE_TYPE_INVALID ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int FUNC4 (TYPE_3__*) ; 
 int FUNC5 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int FUNC6 (TYPE_4__*) ; 
 int FUNC7 (TYPE_4__*) ; 

__attribute__((used)) static int FUNC8(Service *s) {
        int r;

        FUNC1(s);

        if (s->type == _SERVICE_TYPE_INVALID) {
                /* Figure out a type automatically */
                if (s->bus_name)
                        s->type = SERVICE_DBUS;
                else if (s->exec_command[SERVICE_EXEC_START])
                        s->type = SERVICE_SIMPLE;
                else
                        s->type = SERVICE_ONESHOT;
        }

        /* Oneshot services have disabled start timeout by default */
        if (s->type == SERVICE_ONESHOT && !s->start_timeout_defined)
                s->timeout_start_usec = USEC_INFINITY;

        FUNC3(s);

        r = FUNC6(FUNC0(s));
        if (r < 0)
                return r;

        r = FUNC5(FUNC0(s), &s->exec_context);
        if (r < 0)
                return r;

        r = FUNC7(FUNC0(s));
        if (r < 0)
                return r;

        /* If the service needs the notify socket, let's enable it automatically. */
        if (s->notify_access == NOTIFY_NONE &&
            (s->type == SERVICE_NOTIFY || s->watchdog_usec > 0 || s->n_fd_store_max > 0))
                s->notify_access = NOTIFY_MAIN;

        /* If no OOM policy was explicitly set, then default to the configure default OOM policy. Except when
         * delegation is on, in that case it we assume the payload knows better what to do and can process
         * things in a more focused way. */
        if (s->oom_policy < 0)
                s->oom_policy = s->cgroup_context.delegate ? OOM_CONTINUE : FUNC0(s)->manager->default_oom_policy;

        /* Let the kernel do the killing if that's requested. */
        s->cgroup_context.memory_oom_group = s->oom_policy == OOM_KILL;

        r = FUNC2(s);
        if (r < 0)
                return r;

        r = FUNC4(s);
        if (r < 0)
                return r;

        return 0;
}