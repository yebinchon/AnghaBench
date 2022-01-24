#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__ result; int /*<<< orphan*/  timeout_usec; int /*<<< orphan*/  control_pid; int /*<<< orphan*/  kill_context; } ;
typedef  int /*<<< orphan*/  SocketState ;
typedef  scalar_t__ SocketResult ;
typedef  TYPE_1__ Socket ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_MONOTONIC ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ SOCKET_FAILURE_RESOURCES ; 
 int /*<<< orphan*/  SOCKET_FINAL_SIGKILL ; 
 int /*<<< orphan*/  SOCKET_FINAL_SIGTERM ; 
 int /*<<< orphan*/  SOCKET_STOP_PRE_SIGKILL ; 
 int /*<<< orphan*/  SOCKET_STOP_PRE_SIGTERM ; 
 scalar_t__ SOCKET_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC12(Socket *s, SocketState state, SocketResult f) {
        int r;

        FUNC2(s);

        if (s->result == SOCKET_SUCCESS)
                s->result = f;

        r = FUNC10(
                        FUNC1(s),
                        &s->kill_context,
                        FUNC9(s, state),
                        -1,
                        s->control_pid,
                        false);
        if (r < 0)
                goto fail;

        if (r > 0) {
                r = FUNC5(s, FUNC11(FUNC4(CLOCK_MONOTONIC), s->timeout_usec));
                if (r < 0)
                        goto fail;

                FUNC8(s, state);
        } else if (state == SOCKET_STOP_PRE_SIGTERM)
                FUNC12(s, SOCKET_STOP_PRE_SIGKILL, SOCKET_SUCCESS);
        else if (state == SOCKET_STOP_PRE_SIGKILL)
                FUNC7(s, SOCKET_SUCCESS);
        else if (state == SOCKET_FINAL_SIGTERM)
                FUNC12(s, SOCKET_FINAL_SIGKILL, SOCKET_SUCCESS);
        else
                FUNC6(s, SOCKET_SUCCESS);

        return;

fail:
        FUNC3(FUNC1(s), r, "Failed to kill processes: %m");

        if (FUNC0(state, SOCKET_STOP_PRE_SIGTERM, SOCKET_STOP_PRE_SIGKILL))
                FUNC7(s, SOCKET_FAILURE_RESOURCES);
        else
                FUNC6(s, SOCKET_FAILURE_RESOURCES);
}