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
struct swaybar {int /*<<< orphan*/  status; int /*<<< orphan*/  eventloop; } ;

/* Variables and functions */
 short POLLERR ; 
 short POLLHUP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct swaybar*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(int fd, short mask, void *data) {
	struct swaybar *bar = data;
	if (mask & (POLLHUP | POLLERR)) {
		FUNC2(bar->status, "[error reading from status command]");
		FUNC1(bar);
		FUNC0(bar->eventloop, fd);
	} else if (FUNC3(bar->status)) {
		FUNC1(bar);
	}
}