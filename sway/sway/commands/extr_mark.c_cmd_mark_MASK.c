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
struct sway_container {scalar_t__ view; } ;
struct cmd_results {int dummy; } ;
struct TYPE_3__ {struct sway_container* container; } ;
struct TYPE_4__ {TYPE_1__ handler_context; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_INVALID ; 
 int /*<<< orphan*/  CMD_SUCCESS ; 
 int /*<<< orphan*/  EXPECTED_AT_LEAST ; 
 struct cmd_results* FUNC0 (int,char*,int /*<<< orphan*/ ,int) ; 
 struct cmd_results* FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 TYPE_2__* config ; 
 int /*<<< orphan*/  FUNC2 (struct sway_container*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct sway_container*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int FUNC5 (struct sway_container*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct sway_container*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 char* FUNC8 (char**,int) ; 
 scalar_t__ FUNC9 (char*,char*) ; 
 scalar_t__ FUNC10 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__) ; 

struct cmd_results *FUNC12(int argc, char **argv) {
	struct cmd_results *error = NULL;
	if ((error = FUNC0(argc, "mark", EXPECTED_AT_LEAST, 1))) {
		return error;
	}
	struct sway_container *container = config->handler_context.container;
	if (!container) {
		return FUNC1(CMD_INVALID, "Only containers can have marks");
	}

	bool add = false, toggle = false;
	while (argc > 0 && FUNC10(*argv, "--", 2) == 0) {
		if (FUNC9(*argv, "--add") == 0) {
			add = true;
		} else if (FUNC9(*argv, "--replace") == 0) {
			add = false;
		} else if (FUNC9(*argv, "--toggle") == 0) {
			toggle = true;
		} else {
			return FUNC1(CMD_INVALID,
					"Unrecognized argument '%s'", *argv);
		}
		++argv;
		--argc;
	}

	if (!argc) {
		return FUNC1(CMD_INVALID,
				"Expected '[--add|--replace] [--toggle] <identifier>'");
	}

	char *mark = FUNC8(argv, argc);
	bool had_mark = FUNC5(container, mark);

	if (!add) {
		// Replacing
		FUNC3(container);
	}

	FUNC4(mark);

	if (!toggle || !had_mark) {
		FUNC2(container, mark);
	}

	FUNC7(mark);
	FUNC6(container);
	if (container->view) {
		FUNC11(container->view);
	}

	return FUNC1(CMD_SUCCESS, NULL);
}