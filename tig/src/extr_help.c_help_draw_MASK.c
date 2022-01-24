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
struct view {struct help_state* private; } ;
struct run_request {scalar_t__* argv; } ;
struct request_info {scalar_t__ request; int /*<<< orphan*/  help; int /*<<< orphan*/  name; } ;
struct line {scalar_t__ type; struct help* data; } ;
struct keymap {int /*<<< orphan*/  name; scalar_t__ hidden; } ;
struct help_state {scalar_t__ name_width; scalar_t__ keys_width; } ;
struct TYPE_2__ {struct request_info* req_info; int /*<<< orphan*/  text; } ;
struct help {scalar_t__ request; TYPE_1__ data; struct keymap* keymap; } ;

/* Variables and functions */
 int /*<<< orphan*/  ALIGN_LEFT ; 
 int /*<<< orphan*/  ALIGN_RIGHT ; 
 scalar_t__ LINE_DEFAULT ; 
 scalar_t__ LINE_HELP_ACTION ; 
 scalar_t__ LINE_HELP_GROUP ; 
 scalar_t__ LINE_SECTION ; 
 scalar_t__ REQ_RUN_REQUESTS ; 
 scalar_t__ FUNC0 (struct view*,scalar_t__,char const*,scalar_t__,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (struct view*,scalar_t__,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct view*,scalar_t__,int /*<<< orphan*/ ) ; 
 char const* FUNC3 (int /*<<< orphan*/ ) ; 
 char* FUNC4 (struct run_request*) ; 
 char* FUNC5 (struct keymap const*,scalar_t__,int) ; 
 struct run_request* FUNC6 (scalar_t__) ; 

__attribute__((used)) static bool
FUNC7(struct view *view, struct line *line, unsigned int lineno)
{
	struct help *help = line->data;
	const struct keymap *keymap = help->keymap;
	struct help_state *state = view->private;

	if (line->type == LINE_SECTION) {
		FUNC1(view, line->type, "[%c] %s bindings",
			       keymap->hidden ? '+' : '-', keymap->name);

	} else if (line->type == LINE_HELP_GROUP || !keymap) {
		FUNC2(view, line->type, help->data.text);

	} else if (help->request > REQ_RUN_REQUESTS) {
		struct run_request *req = FUNC6(help->request);
		const char *key = FUNC5(keymap, help->request, true);
		const char *sep = FUNC4(req);
		int i;

		if (FUNC0(view, LINE_DEFAULT, key, state->keys_width + 2, ALIGN_RIGHT, false))
			return true;

		for (i = 0; req->argv[i]; i++) {
			if (FUNC1(view, LINE_HELP_ACTION, "%s%s", sep, req->argv[i]))
				return true;
			sep = " ";
		}

	} else {
		const struct request_info *req_info = help->data.req_info;
		const char *key = FUNC5(keymap, req_info->request, true);

		if (FUNC0(view, LINE_DEFAULT, key, state->keys_width + 2, ALIGN_RIGHT, false))
			return true;

		if (FUNC0(view, LINE_HELP_ACTION, FUNC3(req_info->name), state->name_width, ALIGN_LEFT, false))
			return true;

		FUNC2(view, LINE_DEFAULT, req_info->help);
	}

	return true;
}