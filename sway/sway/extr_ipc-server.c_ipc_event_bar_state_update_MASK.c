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
struct bar_config {int /*<<< orphan*/  visible_by_modifier; int /*<<< orphan*/  id; } ;
typedef  int /*<<< orphan*/  json_object ;

/* Variables and functions */
 int /*<<< orphan*/  IPC_EVENT_BAR_STATE_UPDATE ; 
 int /*<<< orphan*/  SWAY_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 char* FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 

void FUNC9(struct bar_config *bar) {
	if (!FUNC0(IPC_EVENT_BAR_STATE_UPDATE)) {
		return;
	}
	FUNC8(SWAY_DEBUG, "Sending bar_state_update event");

	json_object *json = FUNC3();
	FUNC5(json, "id", FUNC4(bar->id));
	FUNC5(json, "visible_by_modifier",
			FUNC2(bar->visible_by_modifier));

	const char *json_string = FUNC7(json);
	FUNC1(json_string, IPC_EVENT_BAR_STATE_UPDATE);
	FUNC6(json);
}