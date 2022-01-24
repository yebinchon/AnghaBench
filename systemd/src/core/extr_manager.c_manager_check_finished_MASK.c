#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {scalar_t__ timestamps; int /*<<< orphan*/ * confirm_spawn; scalar_t__ jobs_in_progress_event_source; int /*<<< orphan*/  jobs; } ;
typedef  TYPE_1__ Manager ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_MONOTONIC ; 
 scalar_t__ JOBS_IN_PROGRESS_WAIT_USEC ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 scalar_t__ MANAGER_TIMESTAMP_FINISH ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,int) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__,scalar_t__) ; 

void FUNC15(Manager *m) {
        FUNC3(m);

        if (FUNC1(m))
                return;

        /* Verify that we have entered the event loop already, and not left it again. */
        if (!FUNC2(m))
                return;

        FUNC6(m);

        if (FUNC5(m->jobs) > 0) {
                if (m->jobs_in_progress_event_source)
                        /* Ignore any failure, this is only for feedback */
                        (void) FUNC14(m->jobs_in_progress_event_source, FUNC13(CLOCK_MONOTONIC) + JOBS_IN_PROGRESS_WAIT_USEC);

                return;
        }

        FUNC9(m, false);

        /* Notify Type=idle units that we are done now */
        FUNC8(m);

        /* Turn off confirm spawn now */
        m->confirm_spawn = NULL;

        /* No need to update ask password status when we're going non-interactive */
        FUNC7(m);

        /* This is no longer the first boot */
        FUNC12(m, false);

        if (FUNC0(m))
                return;

        FUNC4(m->timestamps + MANAGER_TIMESTAMP_FINISH);

        FUNC11(m);

        FUNC10(m);
}