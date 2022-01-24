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
struct sway_container {int dummy; } ;
struct cmd_results {int dummy; } ;
struct TYPE_3__ {struct sway_container* container; scalar_t__ using_criteria; } ;
struct TYPE_4__ {TYPE_1__ handler_context; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_SUCCESS ; 
 struct cmd_results* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_2__* config ; 
 int /*<<< orphan*/  FUNC1 (struct sway_container*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (struct sway_container*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct sway_container*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 char* FUNC6 (char**,int) ; 
 int /*<<< orphan*/  remove_all_marks_iterator ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

struct cmd_results *FUNC8(int argc, char **argv) {
	// Determine the container
	struct sway_container *con = NULL;
	if (config->handler_context.using_criteria) {
		con = config->handler_context.container;
	}

	// Determine the mark
	char *mark = NULL;
	if (argc > 0) {
		mark = FUNC6(argv, argc);
	}

	if (con && mark) {
		// Remove the mark from the given container
		if (FUNC3(con, mark)) {
			FUNC2(mark);
		}
	} else if (con && !mark) {
		// Clear all marks from the given container
		FUNC1(con);
		FUNC4(con);
	} else if (!con && mark) {
		// Remove mark from whichever container has it
		FUNC2(mark);
	} else {
		// Remove all marks from all containers
		FUNC7(remove_all_marks_iterator, NULL);
	}
	FUNC5(mark);

	return FUNC0(CMD_SUCCESS, NULL);
}