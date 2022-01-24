#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct sway_container {int dummy; } ;
struct cmd_results {int dummy; } ;
struct TYPE_6__ {struct sway_container* container; } ;
struct TYPE_8__ {TYPE_2__ handler_context; } ;
struct TYPE_7__ {TYPE_1__* outputs; } ;
struct TYPE_5__ {int /*<<< orphan*/  length; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_INVALID ; 
 int /*<<< orphan*/  EXPECTED_AT_LEAST ; 
 struct cmd_results* FUNC0 (int,char*,int /*<<< orphan*/ ,int) ; 
 struct cmd_results* FUNC1 (int,char**,int) ; 
 struct cmd_results* FUNC2 (int,char**) ; 
 struct cmd_results* FUNC3 (int /*<<< orphan*/ ,char const*) ; 
 TYPE_4__* config ; 
 TYPE_3__* root ; 
 scalar_t__ FUNC4 (char*,char*) ; 

struct cmd_results *FUNC5(int argc, char **argv) {
	if (!root->outputs->length) {
		return FUNC3(CMD_INVALID,
				"Can't run this command while there's no outputs connected.");
	}
	struct sway_container *current = config->handler_context.container;
	if (!current) {
		return FUNC3(CMD_INVALID, "Cannot resize nothing");
	}

	struct cmd_results *error;
	if ((error = FUNC0(argc, "resize", EXPECTED_AT_LEAST, 2))) {
		return error;
	}

	if (FUNC4(argv[0], "set") == 0) {
		return FUNC2(argc - 1, &argv[1]);
	}
	if (FUNC4(argv[0], "grow") == 0) {
		return FUNC1(argc - 1, &argv[1], 1);
	}
	if (FUNC4(argv[0], "shrink") == 0) {
		return FUNC1(argc - 1, &argv[1], -1);
	}

	const char usage[] = "Expected 'resize <shrink|grow> "
		"<width|height|up|down|left|right> [<amount>] [px|ppt]'";

	return FUNC3(CMD_INVALID, usage);
}