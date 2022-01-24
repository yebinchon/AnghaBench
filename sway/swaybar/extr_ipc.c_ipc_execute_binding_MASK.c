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
typedef  int /*<<< orphan*/  uint32_t ;
struct swaybar_binding {int /*<<< orphan*/  command; int /*<<< orphan*/  release; int /*<<< orphan*/  button; } ;
struct swaybar {int /*<<< orphan*/  ipc_socketfd; } ;

/* Variables and functions */
 int /*<<< orphan*/  IPC_COMMAND ; 
 int /*<<< orphan*/  SWAY_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC4(struct swaybar *bar, struct swaybar_binding *bind) {
	FUNC3(SWAY_DEBUG, "Executing binding for button %u (release=%d): `%s`",
			bind->button, bind->release, bind->command);
	uint32_t len = FUNC2(bind->command);
	FUNC0(FUNC1(bar->ipc_socketfd,
			IPC_COMMAND, bind->command, &len));
}