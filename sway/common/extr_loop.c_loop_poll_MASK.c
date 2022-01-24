#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct timespec {int tv_sec; int tv_nsec; } ;
struct pollfd {unsigned int events; unsigned int revents; int /*<<< orphan*/  fd; } ;
struct TYPE_6__ {int tv_sec; int tv_nsec; } ;
struct loop_timer {int /*<<< orphan*/  data; int /*<<< orphan*/  (* callback ) (int /*<<< orphan*/ ) ;TYPE_3__ expiry; } ;
struct loop_fd_event {int /*<<< orphan*/  data; int /*<<< orphan*/  (* callback ) (int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ;} ;
struct loop {int fd_length; TYPE_2__* timers; TYPE_1__* fd_events; struct pollfd* fds; } ;
struct TYPE_5__ {int length; struct loop_timer** items; } ;
struct TYPE_4__ {struct loop_fd_event** items; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_MONOTONIC ; 
 int INT_MAX ; 
 unsigned int POLLERR ; 
 unsigned int POLLHUP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct timespec*) ; 
 int /*<<< orphan*/  FUNC1 (struct loop*,struct loop_timer*) ; 
 int /*<<< orphan*/  FUNC2 (struct pollfd*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

void FUNC5(struct loop *loop) {
	// Calculate next timer in ms
	int ms = INT_MAX;
	if (loop->timers->length) {
		struct timespec now;
		FUNC0(CLOCK_MONOTONIC, &now);
		for (int i = 0; i < loop->timers->length; ++i) {
			struct loop_timer *timer = loop->timers->items[i];
			int timer_ms = (timer->expiry.tv_sec - now.tv_sec) * 1000;
			timer_ms += (timer->expiry.tv_nsec - now.tv_nsec) / 1000000;
			if (timer_ms < ms) {
				ms = timer_ms;
			}
		}
	}
	if (ms < 0) {
		ms = 0;
	}

	FUNC2(loop->fds, loop->fd_length, ms);

	// Dispatch fds
	for (int i = 0; i < loop->fd_length; ++i) {
		struct pollfd pfd = loop->fds[i];
		struct loop_fd_event *event = loop->fd_events->items[i];

		// Always send these events
		unsigned events = pfd.events | POLLHUP | POLLERR;

		if (pfd.revents & events) {
			event->callback(pfd.fd, pfd.revents, event->data);
		}
	}

	// Dispatch timers
	if (loop->timers->length) {
		struct timespec now;
		FUNC0(CLOCK_MONOTONIC, &now);
		for (int i = 0; i < loop->timers->length; ++i) {
			struct loop_timer *timer = loop->timers->items[i];
			bool expired = timer->expiry.tv_sec < now.tv_sec ||
				(timer->expiry.tv_sec == now.tv_sec &&
				 timer->expiry.tv_nsec < now.tv_nsec);
			if (expired) {
				timer->callback(timer->data);
				FUNC1(loop, timer);
				--i;
			}
		}
	}
}