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
struct TYPE_8__ {int started; int stopping; int /*<<< orphan*/  timestamp; int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ User ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 

int FUNC8(User *u) {
        FUNC0(u);

        if (u->started && !u->stopping)
                return 0;

        /* If u->stopping is set, the user is marked for removal and service stop-jobs are queued. We have to clear
         * that flag before queueing the start-jobs again. If they succeed, the user object can be re-used just fine
         * (pid1 takes care of job-ordering and proper restart), but if they fail, we want to force another user_stop()
         * so possibly pending units are stopped. */
        u->stopping = false;

        if (!u->started)
                FUNC3("Starting services for new user %s.", u->name);

        /* Save the user data so far, because pam_systemd will read the XDG_RUNTIME_DIR out of it while starting up
         * systemd --user.  We need to do user_save_internal() because we have not "officially" started yet. */
        FUNC5(u);

        /* Start user@UID.service */
        FUNC7(u);

        if (!u->started) {
                if (!FUNC2(&u->timestamp))
                        FUNC1(&u->timestamp);
                FUNC6(u, true);
                u->started = true;
        }

        /* Save new user data */
        FUNC4(u);

        return 0;
}