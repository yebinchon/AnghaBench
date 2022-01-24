#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_6__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct cmd_results {int dummy; } ;
struct TYPE_8__ {int length; char** items; } ;
typedef  TYPE_2__ list_t ;
struct TYPE_9__ {TYPE_1__* current_bar; } ;
struct TYPE_7__ {int /*<<< orphan*/  id; TYPE_2__* outputs; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_SUCCESS ; 
 int /*<<< orphan*/  EXPECTED_EQUAL_TO ; 
 int /*<<< orphan*/  SWAY_DEBUG ; 
 struct cmd_results* FUNC0 (int,char*,int /*<<< orphan*/ ,int) ; 
 struct cmd_results* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_6__* config ; 
 TYPE_2__* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int) ; 
 scalar_t__ FUNC6 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC7 (char const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char const*) ; 

struct cmd_results *FUNC9(int argc, char **argv) {
	struct cmd_results *error = NULL;
	if ((error = FUNC0(argc, "output", EXPECTED_EQUAL_TO, 1))) {
		return error;
	}

	const char *output = argv[0];
	list_t *outputs = config->current_bar->outputs;
	if (!outputs) {
		outputs = FUNC2();
		config->current_bar->outputs = outputs;
	}

	bool add_output = true;
	if (FUNC6("*", output) == 0) {
		// remove all previous defined outputs and replace with '*'
		while (outputs->length) {
			FUNC3(outputs->items[0]);
			FUNC5(outputs, 0);
		}
	} else {
		// only add output if not already defined, if the list has '*', remove
		// it, in favor of a manual list
		for (int i = 0; i < outputs->length; ++i) {
			const char *find = outputs->items[i];
			if (FUNC6("*", find) == 0) {
				FUNC3(outputs->items[i]);
				FUNC5(outputs, i);
			} else if (FUNC6(output, find) == 0) {
				add_output = false;
				break;
			}
		}
	}

	if (add_output) {
		FUNC4(outputs, FUNC7(output));
		FUNC8(SWAY_DEBUG, "Adding bar: '%s' to output '%s'",
				config->current_bar->id, output);
	}
	return FUNC1(CMD_SUCCESS, NULL);
}