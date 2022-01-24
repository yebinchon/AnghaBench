#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ result; int will_auto_restart; int flush_n_restarts; int forbid_restart; int /*<<< orphan*/  exec_context; scalar_t__ pid_file; int /*<<< orphan*/  dynamic_creds; int /*<<< orphan*/  exec_runtime; int /*<<< orphan*/  n_keep_fd_store; int /*<<< orphan*/  restart_usec; } ;
typedef  int /*<<< orphan*/  ServiceState ;
typedef  scalar_t__ ServiceResult ;
typedef  TYPE_1__ Service ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_MONOTONIC ; 
 int /*<<< orphan*/  SERVICE_AUTO_RESTART ; 
 int /*<<< orphan*/  SERVICE_DEAD ; 
 int /*<<< orphan*/  SERVICE_FAILED ; 
 scalar_t__ SERVICE_FAILURE_RESOURCES ; 
 scalar_t__ SERVICE_SKIP_CONDITION ; 
 scalar_t__ SERVICE_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC11 (TYPE_1__*,char const**) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC19 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC21(Service *s, ServiceResult f, bool allow_restart) {
        ServiceState end_state;
        int r;

        FUNC1(s);

        /* If there's a stop job queued before we enter the DEAD state, we shouldn't act on Restart=, in order to not
         * undo what has already been enqueued. */
        if (FUNC17(FUNC0(s)))
                allow_restart = false;

        if (s->result == SERVICE_SUCCESS)
                s->result = f;

        if (s->result == SERVICE_SUCCESS) {
                FUNC16(FUNC0(s));
                end_state = SERVICE_DEAD;
        } else if (s->result == SERVICE_SKIP_CONDITION) {
                FUNC15(FUNC0(s), FUNC9(s->result));
                end_state = SERVICE_DEAD;
        } else {
                FUNC14(FUNC0(s), FUNC9(s->result));
                end_state = SERVICE_FAILED;
        }

        if (!allow_restart)
                FUNC5(FUNC0(s), "Service restart not allowed.");
        else {
                const char *reason;
                bool shall_restart;

                shall_restart = FUNC11(s, &reason);
                FUNC5(FUNC0(s), "Service will %srestart (%s)",
                                        shall_restart ? "" : "not ",
                                        reason);
                if (shall_restart)
                        s->will_auto_restart = true;
        }

        /* Make sure service_release_resources() doesn't destroy our FD store, while we are changing through
         * SERVICE_FAILED/SERVICE_DEAD before entering into SERVICE_AUTO_RESTART. */
        s->n_keep_fd_store ++;

        FUNC10(s, end_state);

        if (s->will_auto_restart) {
                s->will_auto_restart = false;

                r = FUNC8(s, FUNC20(FUNC7(CLOCK_MONOTONIC), s->restart_usec));
                if (r < 0) {
                        s->n_keep_fd_store--;
                        goto fail;
                }

                FUNC10(s, SERVICE_AUTO_RESTART);
        } else
                /* If we shan't restart, then flush out the restart counter. But don't do that immediately, so that the
                 * user can still introspect the counter. Do so on the next start. */
                s->flush_n_restarts = true;

        /* The new state is in effect, let's decrease the fd store ref counter again. Let's also re-add us to the GC
         * queue, so that the fd store is possibly gc'ed again */
        s->n_keep_fd_store--;
        FUNC12(FUNC0(s));

        /* The next restart might not be a manual stop, hence reset the flag indicating manual stops */
        s->forbid_restart = false;

        /* We want fresh tmpdirs in case service is started again immediately */
        s->exec_runtime = FUNC4(s->exec_runtime, true);

        /* Also, remove the runtime directory */
        FUNC13(FUNC0(s), &s->exec_context);

        /* Get rid of the IPC bits of the user */
        FUNC18(FUNC0(s), true);

        /* Release the user, and destroy it if we are the only remaining owner */
        FUNC2(&s->dynamic_creds);

        /* Try to delete the pid file. At this point it will be
         * out-of-date, and some software might be confused by it, so
         * let's remove it. */
        if (s->pid_file)
                (void) FUNC19(s->pid_file);

        /* Reset TTY ownership if necessary */
        FUNC3(&s->exec_context);

        return;

fail:
        FUNC6(FUNC0(s), r, "Failed to run install restart timer: %m");
        FUNC21(s, SERVICE_FAILURE_RESOURCES, false);
}