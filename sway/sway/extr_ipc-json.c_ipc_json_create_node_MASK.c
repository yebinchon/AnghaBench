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
struct wlr_box {int dummy; } ;
typedef  int /*<<< orphan*/  json_object ;

/* Variables and functions */
 int /*<<< orphan*/  B_NONE ; 
 int /*<<< orphan*/  L_HORIZ ; 
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/ * FUNC2 (struct wlr_box*) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 int /*<<< orphan*/ * FUNC6 (int) ; 
 int /*<<< orphan*/ * FUNC7 (int) ; 
 int /*<<< orphan*/ * FUNC8 () ; 
 int /*<<< orphan*/ * FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static json_object *FUNC11(int id, char *name,
		bool focused, json_object *focus, struct wlr_box *box) {
	json_object *object = FUNC8();

	FUNC10(object, "id", FUNC7(id));
	FUNC10(object, "name",
			name ? FUNC9(name) : NULL);
	FUNC10(object, "rect", FUNC2(box));
	FUNC10(object, "focused", FUNC6(focused));
	FUNC10(object, "focus", focus);

	// set default values to be compatible with i3
	FUNC10(object, "border",
			FUNC9(
				FUNC0(B_NONE)));
	FUNC10(object, "current_border_width",
			FUNC7(0));
	FUNC10(object, "layout",
			FUNC9(
				FUNC3(L_HORIZ)));
	FUNC10(object, "orientation",
			FUNC9(
				FUNC4(L_HORIZ)));
	FUNC10(object, "percent", NULL);
	FUNC10(object, "window_rect", FUNC1());
	FUNC10(object, "deco_rect", FUNC1());
	FUNC10(object, "geometry", FUNC1());
	FUNC10(object, "window", NULL);
	FUNC10(object, "urgent", FUNC6(false));
	FUNC10(object, "floating_nodes", FUNC5());
	FUNC10(object, "sticky", FUNC6(false));

	return object;
}