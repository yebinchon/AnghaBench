#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct wlr_box {int /*<<< orphan*/  member_3; int /*<<< orphan*/  member_2; int /*<<< orphan*/  member_1; scalar_t__ member_0; } ;
struct TYPE_10__ {int /*<<< orphan*/  border_thickness; int /*<<< orphan*/  border; } ;
struct sway_container {char const* title; TYPE_3__* view; int /*<<< orphan*/  content_height; int /*<<< orphan*/  content_width; TYPE_1__ current; scalar_t__ x; scalar_t__ content_x; TYPE_2__* marks; } ;
struct TYPE_11__ {int length; char const** items; } ;
typedef  TYPE_2__ list_t ;
typedef  int /*<<< orphan*/  json_object ;
struct TYPE_12__ {scalar_t__ type; int /*<<< orphan*/  natural_height; int /*<<< orphan*/  natural_width; scalar_t__ pid; } ;

/* Variables and functions */
 int /*<<< orphan*/  B_PIXEL ; 
 scalar_t__ SWAY_VIEW_XWAYLAND ; 
 int /*<<< orphan*/ * FUNC0 (struct wlr_box*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/ * FUNC3 (int) ; 
 int /*<<< orphan*/ * FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 int /*<<< orphan*/ * FUNC6 (char const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 char* FUNC8 (TYPE_3__*) ; 
 char* FUNC9 (TYPE_3__*) ; 
 char* FUNC10 (TYPE_3__*) ; 
 char* FUNC11 (TYPE_3__*) ; 
 scalar_t__ FUNC12 (TYPE_3__*) ; 
 scalar_t__ FUNC13 (TYPE_3__*) ; 
 int FUNC14 (TYPE_3__*) ; 

__attribute__((used)) static void FUNC15(struct sway_container *c, json_object *object) {
	FUNC7(object, "pid", FUNC4(c->view->pid));

	const char *app_id = FUNC8(c->view);
	FUNC7(object, "app_id",
			app_id ? FUNC6(app_id) : NULL);

	bool visible = FUNC14(c->view);
	FUNC7(object, "visible", FUNC3(visible));

	json_object *marks = FUNC2();
	list_t *con_marks = c->marks;
	for (int i = 0; i < con_marks->length; ++i) {
		FUNC1(marks, FUNC6(con_marks->items[i]));
	}

	FUNC7(object, "marks", marks);

	struct wlr_box window_box = {
		c->content_x - c->x,
		(c->current.border == B_PIXEL) ? c->current.border_thickness : 0,
		c->content_width,
		c->content_height
	};

	FUNC7(object, "window_rect", FUNC0(&window_box));

	struct wlr_box geometry = {0, 0, c->view->natural_width, c->view->natural_height};
	FUNC7(object, "geometry", FUNC0(&geometry));

#if HAVE_XWAYLAND
	if (c->view->type == SWAY_VIEW_XWAYLAND) {
		json_object_object_add(object, "window",
				json_object_new_int(view_get_x11_window_id(c->view)));

		json_object *window_props = json_object_new_object();

		const char *class = view_get_class(c->view);
		if (class) {
			json_object_object_add(window_props, "class", json_object_new_string(class));
		}
		const char *instance = view_get_instance(c->view);
		if (instance) {
			json_object_object_add(window_props, "instance", json_object_new_string(instance));
		}
		if (c->title) {
			json_object_object_add(window_props, "title", json_object_new_string(c->title));
		}

		// the transient_for key is always present in i3's output
		uint32_t parent_id = view_get_x11_parent_id(c->view);
		json_object_object_add(window_props, "transient_for",
				parent_id ? json_object_new_int(parent_id) : NULL);

		const char *role = view_get_window_role(c->view);
		if (role) {
			json_object_object_add(window_props, "window_role", json_object_new_string(role));
		}

		json_object_object_add(object, "window_properties", window_props);
	}
#endif
}