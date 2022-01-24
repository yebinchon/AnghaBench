#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sway_view {TYPE_2__* container; } ;
struct sway_seat {int dummy; } ;
struct sway_container {struct sway_view* view; } ;
struct criteria {int floating; int tiling; char urgent; int /*<<< orphan*/  workspace; int /*<<< orphan*/  window_type; int /*<<< orphan*/  window_role; int /*<<< orphan*/  instance; void* id; int /*<<< orphan*/  class; int /*<<< orphan*/  con_mark; void* con_id; int /*<<< orphan*/  app_id; int /*<<< orphan*/  shell; int /*<<< orphan*/  title; } ;
typedef  enum criteria_token { ____Placeholder_criteria_token } criteria_token ;
struct TYPE_3__ {void* id; } ;
struct TYPE_4__ {TYPE_1__ node; } ;

/* Variables and functions */
#define  T_APP_ID 142 
#define  T_CLASS 141 
#define  T_CON_ID 140 
#define  T_CON_MARK 139 
#define  T_FLOATING 138 
#define  T_ID 137 
#define  T_INSTANCE 136 
#define  T_INVALID 135 
#define  T_SHELL 134 
#define  T_TILING 133 
#define  T_TITLE 132 
#define  T_URGENT 131 
#define  T_WINDOW_ROLE 130 
#define  T_WINDOW_TYPE 129 
#define  T_WORKSPACE 128 
 scalar_t__ error ; 
 struct sway_seat* FUNC0 () ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 struct sway_container* FUNC4 (struct sway_seat*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int,char const*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 scalar_t__ FUNC7 (char*) ; 
 int FUNC8 (char const*) ; 
 void* FUNC9 (char*,char**,int) ; 
 int FUNC10 (char*) ; 

__attribute__((used)) static bool FUNC11(struct criteria *criteria, char *name, char *value) {
	enum criteria_token token = FUNC10(name);
	if (token == T_INVALID) {
		const char *fmt = "Token '%s' is not recognized";
		int len = FUNC8(fmt) + FUNC8(name) - 1;
		error = FUNC1(len);
		FUNC5(error, len, fmt, name);
		return false;
	}

	// Require value, unless token is floating or tiled
	if (!value && token != T_FLOATING && token != T_TILING) {
		const char *fmt = "Token '%s' requires a value";
		int len = FUNC8(fmt) + FUNC8(name) - 1;
		error = FUNC1(len);
		FUNC5(error, len, fmt, name);
		return false;
	}

	char *endptr = NULL;
	switch (token) {
	case T_TITLE:
		FUNC3(&criteria->title, value);
		break;
	case T_SHELL:
		FUNC3(&criteria->shell, value);
		break;
	case T_APP_ID:
		FUNC3(&criteria->app_id, value);
		break;
	case T_CON_ID:
		if (FUNC6(value, "__focused__") == 0) {
			struct sway_seat *seat = FUNC0();
			struct sway_container *focus = FUNC4(seat);
			struct sway_view *view = focus ? focus->view : NULL;
			criteria->con_id = view ? view->container->node.id : 0;
		} else {
			criteria->con_id = FUNC9(value, &endptr, 10);
			if (*endptr != 0) {
				error = FUNC7("The value for 'con_id' should be '__focused__' or numeric");
			}
		}
		break;
	case T_CON_MARK:
		FUNC3(&criteria->con_mark, value);
		break;
#if HAVE_XWAYLAND
	case T_CLASS:
		pattern_create(&criteria->class, value);
		break;
	case T_ID:
		criteria->id = strtoul(value, &endptr, 10);
		if (*endptr != 0) {
			error = strdup("The value for 'id' should be numeric");
		}
		break;
	case T_INSTANCE:
		pattern_create(&criteria->instance, value);
		break;
	case T_WINDOW_ROLE:
		pattern_create(&criteria->window_role, value);
		break;
	case T_WINDOW_TYPE:
		criteria->window_type = parse_window_type(value);
		break;
#endif
	case T_FLOATING:
		criteria->floating = true;
		break;
	case T_TILING:
		criteria->tiling = true;
		break;
	case T_URGENT:
		if (FUNC6(value, "latest") == 0 ||
				FUNC6(value, "newest") == 0 ||
				FUNC6(value, "last") == 0 ||
				FUNC6(value, "recent") == 0) {
			criteria->urgent = 'l';
		} else if (FUNC6(value, "oldest") == 0 ||
				FUNC6(value, "first") == 0) {
			criteria->urgent = 'o';
		} else {
			error =
				FUNC7("The value for 'urgent' must be 'first', 'last', "
						"'latest', 'newest', 'oldest' or 'recent'");
		}
		break;
	case T_WORKSPACE:
		FUNC3(&criteria->workspace, value);
		break;
	case T_INVALID:
		break;
	}

	if (error) {
		return false;
	}

	return true;
}