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
struct swaybar {int /*<<< orphan*/  mode; int /*<<< orphan*/  id; scalar_t__ status; int /*<<< orphan*/  ipc_socketfd; int /*<<< orphan*/  ipc_event_socketfd; scalar_t__ config; int /*<<< orphan*/  seats; int /*<<< orphan*/  unused_outputs; int /*<<< orphan*/  outputs; int /*<<< orphan*/  tray; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 

void FUNC7(struct swaybar *bar) {
#if HAVE_TRAY
	destroy_tray(bar->tray);
#endif
	FUNC4(&bar->outputs);
	FUNC4(&bar->unused_outputs);
	FUNC5(&bar->seats);
	if (bar->config) {
		FUNC3(bar->config);
	}
	FUNC0(bar->ipc_event_socketfd);
	FUNC0(bar->ipc_socketfd);
	if (bar->status) {
		FUNC6(bar->status);
	}
	FUNC2(bar->id);
	FUNC2(bar->mode);
}