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
struct TYPE_4__ {int pipe_fd_read; int pipe_fd_write; int /*<<< orphan*/  thread; int /*<<< orphan*/  lock; scalar_t__ longitude; scalar_t__ latitude; scalar_t__ error; scalar_t__ available; } ;
typedef  TYPE_1__ location_geoclue2_state_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int FUNC4 (int*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  run_geoclue2_loop ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int
FUNC6(location_geoclue2_state_t *state)
{
	state->pipe_fd_read = -1;
	state->pipe_fd_write = -1;

	state->available = 0;
	state->error = 0;
	state->latitude = 0;
	state->longitude = 0;

	int pipefds[2];
	int r = FUNC4(pipefds);
	if (r < 0) {
		FUNC1(FUNC0("Failed to start GeoClue2 provider!\n"), stderr);
		return -1;
	}

	state->pipe_fd_read = pipefds[0];
	state->pipe_fd_write = pipefds[1];

	FUNC5(state->pipe_fd_write);

	FUNC2(&state->lock);
	state->thread = FUNC3("geoclue2", run_geoclue2_loop, state);

	return 0;
}