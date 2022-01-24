#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {scalar_t__ send_sigkill; } ;
struct TYPE_10__ {scalar_t__ result; TYPE_2__ kill_context; int /*<<< orphan*/  timeout_usec; int /*<<< orphan*/  control_pid; } ;
typedef  int /*<<< orphan*/  SwapState ;
typedef  scalar_t__ SwapResult ;
typedef  TYPE_1__ Swap ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_MONOTONIC ; 
 int /*<<< orphan*/  SWAP_DEACTIVATING_SIGKILL ; 
 int /*<<< orphan*/  SWAP_DEACTIVATING_SIGTERM ; 
 scalar_t__ SWAP_FAILURE_RESOURCES ; 
 scalar_t__ SWAP_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(Swap *s, SwapState state, SwapResult f) {
        int r;

        FUNC1(s);

        if (s->result == SWAP_SUCCESS)
                s->result = f;

        r = FUNC8(FUNC0(s),
                              &s->kill_context,
                              FUNC4(s, state),
                              -1,
                              s->control_pid,
                              false);
        if (r < 0)
                goto fail;

        if (r > 0) {
                r = FUNC5(s, FUNC9(FUNC3(CLOCK_MONOTONIC), s->timeout_usec));
                if (r < 0)
                        goto fail;

                FUNC7(s, state);
        } else if (state == SWAP_DEACTIVATING_SIGTERM && s->kill_context.send_sigkill)
                FUNC10(s, SWAP_DEACTIVATING_SIGKILL, SWAP_SUCCESS);
        else
                FUNC6(s, SWAP_SUCCESS);

        return;

fail:
        FUNC2(FUNC0(s), r, "Failed to kill processes: %m");
        FUNC6(s, SWAP_FAILURE_RESOURCES);
}