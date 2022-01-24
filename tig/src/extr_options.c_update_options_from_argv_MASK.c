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

/* Variables and functions */
 scalar_t__ SUCCESS ; 
 int /*<<< orphan*/  commit_order_arg_map ; 
 int /*<<< orphan*/  ignore_space_arg_map ; 
 scalar_t__ FUNC0 (int*,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int*) ; 
 int opt_commit_order ; 
 int opt_diff_context ; 
 int opt_ignore_space ; 
 int /*<<< orphan*/  opt_notes_arg ; 
 int opt_show_notes ; 
 scalar_t__ FUNC2 (int*,char const*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char const*) ; 

void
FUNC7(const char *argv[])
{
	int next, flags_pos;

	for (next = flags_pos = 0; argv[next]; next++) {
		const char *flag = argv[next];
		int value = -1;

		if (FUNC0(&value, commit_order_arg_map, flag)) {
			opt_commit_order = value;
			FUNC1(&opt_commit_order);
			continue;
		}

		if (FUNC0(&value, ignore_space_arg_map, flag)) {
			opt_ignore_space = value;
			FUNC1(&opt_ignore_space);
			continue;
		}

		if (!FUNC4(flag, "--no-notes")) {
			opt_show_notes = false;
			FUNC1(&opt_show_notes);
			continue;
		}

		if (!FUNC3(flag, "--show-notes") ||
		    !FUNC3(flag, "--notes")) {
			opt_show_notes = true;
			FUNC5(opt_notes_arg, flag, FUNC6(flag));
			FUNC1(&opt_show_notes);
			continue;
		}

		if (!FUNC3(flag, "-U")
		    && FUNC2(&value, flag + 2, 0, 999999) == SUCCESS) {
			opt_diff_context = value;
			FUNC1(&opt_diff_context);
			continue;
		}

		argv[flags_pos++] = flag;
	}

	argv[flags_pos] = NULL;
}