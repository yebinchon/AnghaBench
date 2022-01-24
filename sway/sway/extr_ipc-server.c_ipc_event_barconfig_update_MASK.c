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
struct bar_config {int dummy; } ;
typedef  int /*<<< orphan*/  json_object ;

/* Variables and functions */
 int /*<<< orphan*/  IPC_EVENT_BARCONFIG_UPDATE ; 
 int /*<<< orphan*/  SWAY_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (struct bar_config*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 char* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 

void FUNC6(struct bar_config *bar) {
	if (!FUNC0(IPC_EVENT_BARCONFIG_UPDATE)) {
		return;
	}
	FUNC5(SWAY_DEBUG, "Sending barconfig_update event");
	json_object *json = FUNC1(bar);

	const char *json_string = FUNC4(json);
	FUNC2(json_string, IPC_EVENT_BARCONFIG_UPDATE);
	FUNC3(json);
}