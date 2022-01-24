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
 int /*<<< orphan*/  CMD_FAILURE ; 
 int /*<<< orphan*/  CMD_INVALID ; 
 int /*<<< orphan*/  CMD_SUCCESS ; 
 int /*<<< orphan*/  EXPECTED_EQUAL_TO ; 
 scalar_t__ L_HORIZ ; 
 scalar_t__ L_VERT ; 
 struct cmd_results* FUNC0 (int,char*,int /*<<< orphan*/ ,int) ; 
 struct cmd_results* FUNC1 (int /*<<< orphan*/ ,char*) ; 
 TYPE_4__* config ; 
 scalar_t__ FUNC2 (struct sway_container*) ; 
 struct cmd_results* FUNC3 (scalar_t__) ; 
 TYPE_3__* root ; 
 scalar_t__ FUNC4 (char*,char*) ; 

struct cmd_results *FUNC5(int argc, char **argv) {
	struct cmd_results *error = NULL;
	if ((error = FUNC0(argc, "split", EXPECTED_EQUAL_TO, 1))) {
		return error;
	}
	if (!root->outputs->length) {
		return FUNC1(CMD_INVALID,
				"Can't run this command while there's no outputs connected.");
	}
	if (FUNC4(argv[0], "v") == 0 || FUNC4(argv[0], "vertical") == 0) {
		return FUNC3(L_VERT);
	} else if (FUNC4(argv[0], "h") == 0 ||
			FUNC4(argv[0], "horizontal") == 0) {
		return FUNC3(L_HORIZ);
	} else if (FUNC4(argv[0], "t") == 0 ||
			FUNC4(argv[0], "toggle") == 0) {
		struct sway_container *focused = config->handler_context.container;

		if (focused && FUNC2(focused) == L_VERT) {
			return FUNC3(L_HORIZ);
		} else {
			return FUNC3(L_VERT);
		}
	} else {
		return FUNC1(CMD_FAILURE,
			"Invalid split command (expected either horizontal or vertical).");
	}
	return FUNC1(CMD_SUCCESS, NULL);
}