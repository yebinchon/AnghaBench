#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  wl_display; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int exit_value ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 TYPE_1__ server ; 
 int terminate_request ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(int exit_code) {
	if (!server.wl_display) {
		// Running as IPC client
		FUNC0(exit_code);
	} else {
		// Running as server
		terminate_request = true;
		exit_value = exit_code;
		FUNC1("exit");
		FUNC2(server.wl_display);
	}
}