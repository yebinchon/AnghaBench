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
struct sway_container {float alpha; } ;
struct cmd_results {int dummy; } ;
struct TYPE_3__ {struct sway_container* container; } ;
struct TYPE_4__ {TYPE_1__ handler_context; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_FAILURE ; 
 int /*<<< orphan*/  CMD_INVALID ; 
 int /*<<< orphan*/  CMD_SUCCESS ; 
 int /*<<< orphan*/  EXPECTED_AT_LEAST ; 
 struct cmd_results* FUNC0 (int,char*,int /*<<< orphan*/ ,int) ; 
 struct cmd_results* FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 TYPE_2__* config ; 
 int /*<<< orphan*/  FUNC2 (struct sway_container*) ; 
 scalar_t__ FUNC3 (char*,char*) ; 
 float FUNC4 (char*,char**) ; 

struct cmd_results *FUNC5(int argc, char **argv) {
	struct cmd_results *error = NULL;
	if ((error = FUNC0(argc, "opacity", EXPECTED_AT_LEAST, 1))) {
		return error;
	}

	struct sway_container *con = config->handler_context.container;

	if (con == NULL) {
		return FUNC1(CMD_FAILURE, "No current container");
	}

	char *err;
	float val = FUNC4(argc == 1 ? argv[0] : argv[1], &err);
	if (*err) {
		return FUNC1(CMD_INVALID, "opacity float invalid");
	}

	if (!FUNC3(argv[0], "plus")) {
		val = con->alpha + val;
	} else if (!FUNC3(argv[0], "minus")) {
		val = con->alpha - val;
	} else if (argc > 1 && FUNC3(argv[0], "set")) {
		return FUNC1(CMD_INVALID,
				"Expected: set|plus|minus <0..1>: %s", argv[0]);
	}

	if (val < 0 || val > 1) {
		return FUNC1(CMD_FAILURE, "opacity value out of bounds");
	}

	con->alpha = val;
	FUNC2(con);
	return FUNC1(CMD_SUCCESS, NULL);
}