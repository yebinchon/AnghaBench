#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct pollfd {int dummy; } ;
struct loop {int fd_capacity; void* timers; void* fd_events; int /*<<< orphan*/  fds; } ;

/* Variables and functions */
 int /*<<< orphan*/  SWAY_ERROR ; 
 struct loop* FUNC0 (int,int) ; 
 void* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 

struct loop *FUNC4(void) {
	struct loop *loop = FUNC0(1, sizeof(struct loop));
	if (!loop) {
		FUNC3(SWAY_ERROR, "Unable to allocate memory for loop");
		return NULL;
	}
	loop->fd_capacity = 10;
	loop->fds = FUNC2(sizeof(struct pollfd) * loop->fd_capacity);
	loop->fd_events = FUNC1();
	loop->timers = FUNC1();
	return loop;
}