#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ result; int /*<<< orphan*/  timeout_stop_usec; scalar_t__ was_abandoned; int /*<<< orphan*/  kill_context; } ;
typedef  int /*<<< orphan*/  ScopeState ;
typedef  scalar_t__ ScopeResult ;
typedef  TYPE_1__ Scope ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_MONOTONIC ; 
 int /*<<< orphan*/  KILL_KILL ; 
 int /*<<< orphan*/  KILL_TERMINATE ; 
 int /*<<< orphan*/  KILL_TERMINATE_AND_LOG ; 
 scalar_t__ SCOPE_FAILURE_RESOURCES ; 
 int /*<<< orphan*/  SCOPE_STOP_SIGKILL ; 
 int /*<<< orphan*/  SCOPE_STOP_SIGTERM ; 
 scalar_t__ SCOPE_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC12(Scope *s, ScopeState state, ScopeResult f) {
        bool skip_signal = false;
        int r;

        FUNC1(s);

        if (s->result == SCOPE_SUCCESS)
                s->result = f;

        /* Before sending any signal, make sure we track all members of this cgroup */
        (void) FUNC10(FUNC0(s));

        /* Also, enqueue a job that we recheck all our PIDs a bit later, given that it's likely some processes have
         * died now */
        (void) FUNC8(FUNC0(s));

        /* If we have a controller set let's ask the controller nicely to terminate the scope, instead of us going
         * directly into SIGTERM berserk mode */
        if (state == SCOPE_STOP_SIGTERM)
                skip_signal = FUNC2(s) > 0;

        if (skip_signal)
                r = 1; /* wait */
        else {
                r = FUNC9(
                                FUNC0(s),
                                &s->kill_context,
                                state != SCOPE_STOP_SIGTERM ? KILL_KILL :
                                s->was_abandoned            ? KILL_TERMINATE_AND_LOG :
                                                              KILL_TERMINATE,
                                -1, -1, false);
                if (r < 0)
                        goto fail;
        }

        if (r > 0) {
                r = FUNC5(s, FUNC11(FUNC4(CLOCK_MONOTONIC), s->timeout_stop_usec));
                if (r < 0)
                        goto fail;

                FUNC7(s, state);
        } else if (state == SCOPE_STOP_SIGTERM)
                FUNC12(s, SCOPE_STOP_SIGKILL, SCOPE_SUCCESS);
        else
                FUNC6(s, SCOPE_SUCCESS);

        return;

fail:
        FUNC3(FUNC0(s), r, "Failed to kill processes: %m");

        FUNC6(s, SCOPE_FAILURE_RESOURCES);
}