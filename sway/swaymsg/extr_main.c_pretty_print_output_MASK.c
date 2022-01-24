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
typedef  int /*<<< orphan*/  json_object ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,size_t) ; 
 size_t FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 double FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 char* FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  json_type_array ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 

__attribute__((used)) static void FUNC9(json_object *o) {
	json_object *name, *rect, *focused, *active, *ws, *current_mode;
	FUNC7(o, "name", &name);
	FUNC7(o, "rect", &rect);
	FUNC7(o, "focused", &focused);
	FUNC7(o, "active", &active);
	FUNC7(o, "current_workspace", &ws);
	json_object *make, *model, *serial, *scale, *subpixel, *transform;
	FUNC7(o, "make", &make);
	FUNC7(o, "model", &model);
	FUNC7(o, "serial", &serial);
	FUNC7(o, "scale", &scale);
	FUNC7(o, "subpixel_hinting", &subpixel);
	FUNC7(o, "transform", &transform);
	json_object *x, *y;
	FUNC7(rect, "x", &x);
	FUNC7(rect, "y", &y);
	json_object *modes;
	FUNC7(o, "modes", &modes);
	json_object *width, *height, *refresh;
	FUNC7(o, "current_mode", &current_mode);
	FUNC7(current_mode, "width", &width);
	FUNC7(current_mode, "height", &height);
	FUNC7(current_mode, "refresh", &refresh);

	if (FUNC2(active)) {
		FUNC8(
			"Output %s '%s %s %s'%s\n"
			"  Current mode: %dx%d @ %f Hz\n"
			"  Position: %d,%d\n"
			"  Scale factor: %f\n"
			"  Subpixel hinting: %s\n"
			"  Transform: %s\n"
			"  Workspace: %s\n",
			FUNC5(name),
			FUNC5(make),
			FUNC5(model),
			FUNC5(serial),
			FUNC2(focused) ? " (focused)" : "",
			FUNC4(width),
			FUNC4(height),
			(float)FUNC4(refresh) / 1000,
			FUNC4(x), FUNC4(y),
			FUNC3(scale),
			FUNC5(subpixel),
			FUNC5(transform),
			FUNC5(ws)
		);
	} else {
		FUNC8(
			"Output %s '%s %s %s' (inactive)\n",
			FUNC5(name),
			FUNC5(make),
			FUNC5(model),
			FUNC5(serial)
		);
	}

	size_t modes_len = FUNC6(modes, json_type_array)
		? FUNC1(modes) : 0;
	if (modes_len > 0) {
		FUNC8("  Available modes:\n");
		for (size_t i = 0; i < modes_len; ++i) {
			json_object *mode = FUNC0(modes, i);

			json_object *mode_width, *mode_height, *mode_refresh;
			FUNC7(mode, "width", &mode_width);
			FUNC7(mode, "height", &mode_height);
			FUNC7(mode, "refresh", &mode_refresh);

			FUNC8("    %dx%d @ %f Hz\n", FUNC4(mode_width),
				FUNC4(mode_height),
				(float)FUNC4(mode_refresh) / 1000);
		}
	}

	FUNC8("\n");
}