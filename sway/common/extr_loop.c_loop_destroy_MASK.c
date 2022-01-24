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
struct loop {struct loop* fds; int /*<<< orphan*/  timers; int /*<<< orphan*/  fd_events; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct loop*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

void FUNC2(struct loop *loop) {
	FUNC1(loop->fd_events);
	FUNC1(loop->timers);
	FUNC0(loop->fds);
	FUNC0(loop);
}