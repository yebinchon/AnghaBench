#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_26__   TYPE_9__ ;
typedef  struct TYPE_25__   TYPE_8__ ;
typedef  struct TYPE_24__   TYPE_7__ ;
typedef  struct TYPE_23__   TYPE_6__ ;
typedef  struct TYPE_22__   TYPE_5__ ;
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;
typedef  struct TYPE_17__   TYPE_11__ ;
typedef  struct TYPE_16__   TYPE_10__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct sway_workspace {char const* name; } ;
struct sway_view {struct sway_container* container; } ;
struct sway_seat {int dummy; } ;
struct TYPE_23__ {scalar_t__ id; } ;
struct sway_container {struct sway_workspace* workspace; TYPE_6__ node; TYPE_4__* marks; struct sway_view* view; } ;
struct criteria {scalar_t__ con_id; scalar_t__ id; scalar_t__ window_type; char urgent; TYPE_10__* workspace; scalar_t__ tiling; scalar_t__ floating; TYPE_9__* window_role; TYPE_8__* instance; TYPE_7__* class; TYPE_5__* con_mark; TYPE_3__* app_id; TYPE_2__* shell; TYPE_1__* title; } ;
struct TYPE_17__ {int length; struct sway_view** items; } ;
typedef  TYPE_11__ list_t ;
struct TYPE_26__ {int match_type; int /*<<< orphan*/  regex; } ;
struct TYPE_25__ {int match_type; int /*<<< orphan*/  regex; } ;
struct TYPE_24__ {int match_type; int /*<<< orphan*/  regex; } ;
struct TYPE_22__ {int /*<<< orphan*/  regex; } ;
struct TYPE_21__ {int length; char const** items; } ;
struct TYPE_20__ {int match_type; int /*<<< orphan*/  regex; } ;
struct TYPE_19__ {int match_type; int /*<<< orphan*/  regex; } ;
struct TYPE_18__ {int match_type; int /*<<< orphan*/  regex; } ;
struct TYPE_16__ {int match_type; int /*<<< orphan*/  regex; } ;

/* Variables and functions */
 scalar_t__ ATOM_LAST ; 
#define  PATTERN_FOCUSED 129 
#define  PATTERN_PCRE 128 
 int /*<<< orphan*/  cmp_urgent ; 
 scalar_t__ FUNC0 (struct sway_container*) ; 
 TYPE_11__* FUNC1 () ; 
 int /*<<< orphan*/  find_urgent_iterator ; 
 struct sway_seat* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (TYPE_11__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_11__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_11__*) ; 
 struct sway_container* FUNC7 (struct sway_seat*) ; 
 int /*<<< orphan*/  FUNC8 (char const*,char*) ; 
 char* FUNC9 (struct sway_view*) ; 
 char* FUNC10 (struct sway_view*) ; 
 char* FUNC11 (struct sway_view*) ; 
 char* FUNC12 (struct sway_view*) ; 
 char* FUNC13 (struct sway_view*) ; 
 char* FUNC14 (struct sway_view*) ; 
 scalar_t__ FUNC15 (struct sway_view*) ; 
 int /*<<< orphan*/  FUNC16 (struct sway_view*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC17 (struct sway_view*) ; 

__attribute__((used)) static bool FUNC18(struct criteria *criteria,
		struct sway_view *view) {
	struct sway_seat *seat = FUNC2();
	struct sway_container *focus = FUNC7(seat);
	struct sway_view *focused = focus ? focus->view : NULL;

	if (criteria->title) {
		const char *title = FUNC13(view);
		if (!title) {
			return false;
		}

		switch (criteria->title->match_type) {
		case PATTERN_FOCUSED:
			if (focused && FUNC8(title, FUNC13(focused))) {
				return false;
			}
			break;
		case PATTERN_PCRE:
			if (FUNC5(title, criteria->title->regex) != 0) {
				return false;
			}
			break;
		}
	}

	if (criteria->shell) {
		const char *shell = FUNC12(view);
		if (!shell) {
			return false;
		}

		switch (criteria->shell->match_type) {
		case PATTERN_FOCUSED:
			if (focused && FUNC8(shell, FUNC12(focused))) {
				return false;
			}
			break;
		case PATTERN_PCRE:
			if (FUNC5(shell, criteria->shell->regex) != 0) {
				return false;
			}
			break;
		}
	}

	if (criteria->app_id) {
		const char *app_id = FUNC9(view);
		if (!app_id) {
			return false;
		}

		switch (criteria->app_id->match_type) {
		case PATTERN_FOCUSED:
			if (focused && FUNC8(app_id, FUNC9(focused))) {
				return false;
			}
			break;
		case PATTERN_PCRE:
			if (FUNC5(app_id, criteria->app_id->regex) != 0) {
				return false;
			}
			break;
		}
	}

	if (criteria->con_mark) {
		bool exists = false;
		struct sway_container *con = view->container;
		for (int i = 0; i < con->marks->length; ++i) {
			if (FUNC5(con->marks->items[i], criteria->con_mark->regex) == 0) {
				exists = true;
				break;
			}
		}
		if (!exists) {
			return false;
		}
	}

	if (criteria->con_id) { // Internal ID
		if (!view->container || view->container->node.id != criteria->con_id) {
			return false;
		}
	}

#if HAVE_XWAYLAND
	if (criteria->id) { // X11 window ID
		uint32_t x11_window_id = view_get_x11_window_id(view);
		if (!x11_window_id || x11_window_id != criteria->id) {
			return false;
		}
	}

	if (criteria->class) {
		const char *class = view_get_class(view);
		if (!class) {
			return false;
		}

		switch (criteria->class->match_type) {
		case PATTERN_FOCUSED:
			if (focused && strcmp(class, view_get_class(focused))) {
				return false;
			}
			break;
		case PATTERN_PCRE:
			if (regex_cmp(class, criteria->class->regex) != 0) {
				return false;
			}
			break;
		}
	}

	if (criteria->instance) {
		const char *instance = view_get_instance(view);
		if (!instance) {
			return false;
		}

		switch (criteria->instance->match_type) {
		case PATTERN_FOCUSED:
			if (focused && strcmp(instance, view_get_instance(focused))) {
				return false;
			}
			break;
		case PATTERN_PCRE:
			if (regex_cmp(instance, criteria->instance->regex) != 0) {
				return false;
			}
			break;
		}
	}

	if (criteria->window_role) {
		const char *window_role = view_get_window_role(view);
		if (!window_role) {
			return false;
		}

		switch (criteria->window_role->match_type) {
		case PATTERN_FOCUSED:
			if (focused && strcmp(window_role, view_get_window_role(focused))) {
				return false;
			}
			break;
		case PATTERN_PCRE:
			if (regex_cmp(window_role, criteria->window_role->regex) != 0) {
				return false;
			}
			break;
		}
	}

	if (criteria->window_type != ATOM_LAST) {
		if (!view_has_window_type(view, criteria->window_type)) {
			return false;
		}
	}
#endif

	if (criteria->floating) {
		if (!FUNC0(view->container)) {
			return false;
		}
	}

	if (criteria->tiling) {
		if (FUNC0(view->container)) {
			return false;
		}
	}

	if (criteria->urgent) {
		if (!FUNC17(view)) {
			return false;
		}
		list_t *urgent_views = FUNC1();
		FUNC6(find_urgent_iterator, urgent_views);
		FUNC4(urgent_views, cmp_urgent);
		struct sway_view *target;
		if (criteria->urgent == 'o') { // oldest
			target = urgent_views->items[0];
		} else { // latest
			target = urgent_views->items[urgent_views->length - 1];
		}
		FUNC3(urgent_views);
		if (view != target) {
			return false;
		}
	}

	if (criteria->workspace) {
		struct sway_workspace *ws = view->container->workspace;
		if (!ws) {
			return false;
		}

		switch (criteria->workspace->match_type) {
		case PATTERN_FOCUSED:
			if (focused &&
					FUNC8(ws->name, focused->container->workspace->name)) {
				return false;
			}
			break;
		case PATTERN_PCRE:
			if (FUNC5(ws->name, criteria->workspace->regex) != 0) {
				return false;
			}
			break;
		}
	}

	return true;
}