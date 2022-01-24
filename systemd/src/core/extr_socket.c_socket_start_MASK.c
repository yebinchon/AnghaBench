#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;
typedef  struct TYPE_17__   TYPE_11__ ;

/* Type definitions */
struct TYPE_18__ {int reset_accounting; } ;
typedef  TYPE_1__ Unit ;
struct TYPE_20__ {int /*<<< orphan*/  state; } ;
struct TYPE_19__ {int /*<<< orphan*/  exec_command; int /*<<< orphan*/  result; int /*<<< orphan*/  state; int /*<<< orphan*/  service; } ;
struct TYPE_17__ {scalar_t__ load_state; int /*<<< orphan*/  id; } ;
typedef  TYPE_2__ Socket ;
typedef  TYPE_3__ Service ;

/* Variables and functions */
 int EAGAIN ; 
 int EBUSY ; 
 int ENOENT ; 
 TYPE_2__* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 TYPE_3__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SERVICE_AUTO_RESTART ; 
 int /*<<< orphan*/  SERVICE_DEAD ; 
 int /*<<< orphan*/  SERVICE_FAILED ; 
 TYPE_2__* FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  SOCKET_CLEANING ; 
 int /*<<< orphan*/  SOCKET_DEAD ; 
 int /*<<< orphan*/  SOCKET_FAILED ; 
 int /*<<< orphan*/  SOCKET_FAILURE_START_LIMIT_HIT ; 
 int /*<<< orphan*/  SOCKET_FINAL_SIGKILL ; 
 int /*<<< orphan*/  SOCKET_FINAL_SIGTERM ; 
 int /*<<< orphan*/  SOCKET_START_CHOWN ; 
 int /*<<< orphan*/  SOCKET_START_POST ; 
 int /*<<< orphan*/  SOCKET_START_PRE ; 
 int /*<<< orphan*/  SOCKET_STOP_POST ; 
 int /*<<< orphan*/  SOCKET_STOP_PRE ; 
 int /*<<< orphan*/  SOCKET_STOP_PRE_SIGKILL ; 
 int /*<<< orphan*/  SOCKET_STOP_PRE_SIGTERM ; 
 int /*<<< orphan*/  SOCKET_SUCCESS ; 
 TYPE_11__* FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ UNIT_LOADED ; 
 int /*<<< orphan*/  _SOCKET_EXEC_COMMAND_MAX ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 int FUNC11 (TYPE_1__*) ; 
 int FUNC12 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC13(Unit *u) {
        Socket *s = FUNC2(u);
        int r;

        FUNC6(s);

        /* We cannot fulfill this request right now, try again later
         * please! */
        if (FUNC0(s->state,
                   SOCKET_STOP_PRE,
                   SOCKET_STOP_PRE_SIGKILL,
                   SOCKET_STOP_PRE_SIGTERM,
                   SOCKET_STOP_POST,
                   SOCKET_FINAL_SIGTERM,
                   SOCKET_FINAL_SIGKILL,
                   SOCKET_CLEANING))
                return -EAGAIN;

        /* Already on it! */
        if (FUNC0(s->state,
                   SOCKET_START_PRE,
                   SOCKET_START_CHOWN,
                   SOCKET_START_POST))
                return 0;

        /* Cannot run this without the service being around */
        if (FUNC5(s->service)) {
                Service *service;

                service = FUNC1(FUNC4(s->service));

                if (FUNC3(service)->load_state != UNIT_LOADED) {
                        FUNC8(u, "Socket service %s not loaded, refusing.", FUNC3(service)->id);
                        return -ENOENT;
                }

                /* If the service is already active we cannot start the
                 * socket */
                if (!FUNC0(service->state, SERVICE_DEAD, SERVICE_FAILED, SERVICE_AUTO_RESTART)) {
                        FUNC8(u, "Socket service %s already active, refusing.", FUNC3(service)->id);
                        return -EBUSY;
                }
        }

        FUNC6(FUNC0(s->state, SOCKET_DEAD, SOCKET_FAILED));

        r = FUNC12(u);
        if (r < 0) {
                FUNC9(s, SOCKET_FAILURE_START_LIMIT_HIT);
                return r;
        }

        r = FUNC11(u);
        if (r < 0)
                return r;

        s->result = SOCKET_SUCCESS;
        FUNC7(s->exec_command, _SOCKET_EXEC_COMMAND_MAX);

        u->reset_accounting = true;

        FUNC10(s);
        return 1;
}