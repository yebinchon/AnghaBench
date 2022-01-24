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
struct pollfd {int member_0; short member_1; int /*<<< orphan*/  member_2; } ;
struct loop_fd_event {void (* callback ) (int,short,void*) ;void* data; } ;
struct loop {int fd_length; int fd_capacity; struct pollfd* fds; int /*<<< orphan*/  fd_events; } ;

/* Variables and functions */
 int /*<<< orphan*/  SWAY_ERROR ; 
 struct loop_fd_event* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct loop_fd_event*) ; 
 struct pollfd* FUNC2 (struct pollfd*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 

void FUNC4(struct loop *loop, int fd, short mask,
		void (*callback)(int fd, short mask, void *data), void *data) {
	struct loop_fd_event *event = FUNC0(1, sizeof(struct loop_fd_event));
	if (!event) {
		FUNC3(SWAY_ERROR, "Unable to allocate memory for event");
		return;
	}
	event->callback = callback;
	event->data = data;
	FUNC1(loop->fd_events, event);

	struct pollfd pfd = {fd, mask, 0};

	if (loop->fd_length == loop->fd_capacity) {
		loop->fd_capacity += 10;
		loop->fds = FUNC2(loop->fds,
				sizeof(struct pollfd) * loop->fd_capacity);
	}

	loop->fds[loop->fd_length++] = pfd;
}