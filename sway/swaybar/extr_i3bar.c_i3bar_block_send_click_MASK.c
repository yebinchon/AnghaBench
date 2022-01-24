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
typedef  int uint32_t ;
struct status_line {int clicked; int /*<<< orphan*/  write_fd; int /*<<< orphan*/  click_events; } ;
struct json_object {int dummy; } ;
struct i3bar_block {scalar_t__ instance; scalar_t__ name; } ;
typedef  enum hotspot_event_handling { ____Placeholder_hotspot_event_handling } hotspot_event_handling ;

/* Variables and functions */
 int HOTSPOT_IGNORE ; 
 int HOTSPOT_PROCESS ; 
 int /*<<< orphan*/  SWAY_DEBUG ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 struct json_object* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct json_object*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct json_object*) ; 
 int /*<<< orphan*/  FUNC7 (struct json_object*) ; 
 int /*<<< orphan*/  FUNC8 (struct status_line*,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,scalar_t__) ; 

enum hotspot_event_handling FUNC10(struct status_line *status,
		struct i3bar_block *block, int x, int y, int rx, int ry, int w, int h,
		uint32_t button) {
	FUNC9(SWAY_DEBUG, "block %s clicked", block->name);
	if (!block->name || !status->click_events) {
		return HOTSPOT_PROCESS;
	}

	struct json_object *event_json = FUNC3();
	FUNC5(event_json, "name",
			FUNC4(block->name));
	if (block->instance) {
		FUNC5(event_json, "instance",
				FUNC4(block->instance));
	}

	FUNC5(event_json, "button",
			FUNC2(FUNC1(button)));
	FUNC5(event_json, "event", FUNC2(button));
	FUNC5(event_json, "x", FUNC2(x));
	FUNC5(event_json, "y", FUNC2(y));
	FUNC5(event_json, "relative_x", FUNC2(rx));
	FUNC5(event_json, "relative_y", FUNC2(ry));
	FUNC5(event_json, "width", FUNC2(w));
	FUNC5(event_json, "height", FUNC2(h));
	if (FUNC0(status->write_fd, "%s%s\n", status->clicked ? "," : "",
				FUNC7(event_json)) < 0) {
		FUNC8(status, "[failed to write click event]");
	}
	status->clicked = true;
	FUNC6(event_json);
	return HOTSPOT_IGNORE;
}