#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct swaybar {int /*<<< orphan*/  eventloop; int /*<<< orphan*/  display; scalar_t__ running; TYPE_2__* tray; TYPE_1__* status; int /*<<< orphan*/  ipc_event_socketfd; } ;
struct TYPE_4__ {struct swaybar* bus; int /*<<< orphan*/  fd; } ;
struct TYPE_3__ {int /*<<< orphan*/  read_fd; } ;

/* Variables and functions */
 scalar_t__ EAGAIN ; 
 int /*<<< orphan*/  POLLIN ; 
 int /*<<< orphan*/  display_in ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  ipc_in ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct swaybar*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  status_in ; 
 int /*<<< orphan*/  tray_in ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(struct swaybar *bar) {
	FUNC0(bar->eventloop, FUNC3(bar->display), POLLIN,
			display_in, bar);
	FUNC0(bar->eventloop, bar->ipc_event_socketfd, POLLIN, ipc_in, bar);
	if (bar->status) {
		FUNC0(bar->eventloop, bar->status->read_fd, POLLIN,
				status_in, bar);
	}
#if HAVE_TRAY
	if (bar->tray) {
		loop_add_fd(bar->eventloop, bar->tray->fd, POLLIN, tray_in, bar->tray->bus);
	}
#endif
	while (bar->running) {
		errno = 0;
		if (FUNC2(bar->display) == -1 && errno != EAGAIN) {
			break;
		}
		FUNC1(bar->eventloop);
	}
}