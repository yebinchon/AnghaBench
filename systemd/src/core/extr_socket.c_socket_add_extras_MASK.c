#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  Unit ;
struct TYPE_11__ {int interval; unsigned int burst; } ;
struct TYPE_12__ {int /*<<< orphan*/  exec_context; int /*<<< orphan*/  service; TYPE_1__ trigger_limit; scalar_t__ accept; } ;
typedef  TYPE_2__ Socket ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  UNIT_BEFORE ; 
 int /*<<< orphan*/  UNIT_DEPENDENCY_IMPLICIT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UNIT_TRIGGERS ; 
 int USEC_INFINITY ; 
 int USEC_PER_SEC ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 scalar_t__ FUNC3 (TYPE_2__*) ; 
 int FUNC4 (TYPE_2__*) ; 
 int FUNC5 (TYPE_2__*) ; 
 int FUNC6 (TYPE_2__*) ; 
 scalar_t__ FUNC7 (TYPE_2__*) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ **) ; 
 int FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC14(Socket *s) {
        Unit *u = FUNC0(s);
        int r;

        FUNC2(s);

        /* Pick defaults for the trigger limit, if nothing was explicitly configured. We pick a relatively high limit
         * in Accept=yes mode, and a lower limit for Accept=no. Reason: in Accept=yes mode we are invoking accept()
         * ourselves before the trigger limit can hit, thus incoming connections are taken off the socket queue quickly
         * and reliably. This is different for Accept=no, where the spawned service has to take the incoming traffic
         * off the queues, which it might not necessarily do. Moreover, while Accept=no services are supposed to
         * process whatever is queued in one go, and thus should normally never have to be started frequently. This is
         * different for Accept=yes where each connection is processed by a new service instance, and thus frequent
         * service starts are typical. */

        if (s->trigger_limit.interval == USEC_INFINITY)
                s->trigger_limit.interval = 2 * USEC_PER_SEC;

        if (s->trigger_limit.burst == (unsigned) -1) {
                if (s->accept)
                        s->trigger_limit.burst = 200;
                else
                        s->trigger_limit.burst = 20;
        }

        if (FUNC3(s)) {

                if (!FUNC1(s->service)) {
                        Unit *x;

                        r = FUNC10(u, ".service", &x);
                        if (r < 0)
                                return r;

                        FUNC12(&s->service, u, x);
                }

                r = FUNC9(u, UNIT_BEFORE, UNIT_TRIGGERS, FUNC1(s->service), true, UNIT_DEPENDENCY_IMPLICIT);
                if (r < 0)
                        return r;
        }

        r = FUNC6(s);
        if (r < 0)
                return r;

        r = FUNC5(s);
        if (r < 0)
                return r;

        r = FUNC11(u);
        if (r < 0)
                return r;

        if (FUNC7(s)) {
                r = FUNC8(u, &s->exec_context);
                if (r < 0)
                        return r;
        }

        r = FUNC13(u);
        if (r < 0)
                return r;

        r = FUNC4(s);
        if (r < 0)
                return r;

        return 0;
}