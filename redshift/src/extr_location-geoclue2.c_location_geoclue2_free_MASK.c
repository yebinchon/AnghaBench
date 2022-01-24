#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int pipe_fd_read; int /*<<< orphan*/  lock; int /*<<< orphan*/ * thread; } ;
typedef  TYPE_1__ location_geoclue2_state_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(location_geoclue2_state_t *state)
{
	if (state->pipe_fd_read != -1) {
		FUNC0(state->pipe_fd_read);
	}

	/* Closing the pipe should cause the thread to exit. */
	FUNC3(state->thread);
	state->thread = NULL;

	FUNC2(&state->lock);

	FUNC1(state);
}