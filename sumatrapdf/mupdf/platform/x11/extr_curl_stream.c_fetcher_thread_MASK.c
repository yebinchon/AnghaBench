#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  more_data_arg; int /*<<< orphan*/  (* more_data ) (int /*<<< orphan*/ ,int) ;scalar_t__ kill_thread; int /*<<< orphan*/  complete; } ;
typedef  TYPE_1__ curlstate ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC5(curlstate *state)
{
	/* Keep fetching chunks on a background thread until
	 * either we have to kill the thread, or the fetch
	 * is complete. */
	while (1) {
		int complete;
		FUNC1(state);
		complete = state->complete || state->kill_thread;
		FUNC4(state);
		if (complete)
			break;
		FUNC0(state);
		if (state->more_data)
			state->more_data(state->more_data_arg, 0);
	}
	if (state->more_data)
		state->more_data(state->more_data_arg, 1);
}