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
struct cmd_results {int dummy; } ;
struct bar_config {char* id; } ;
struct TYPE_4__ {struct bar_config* current_bar; TYPE_1__* bars; } ;
struct TYPE_3__ {int length; struct bar_config** items; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_FAILURE ; 
 int /*<<< orphan*/  CMD_INVALID ; 
 int /*<<< orphan*/  CMD_SUCCESS ; 
 int /*<<< orphan*/  EXPECTED_EQUAL_TO ; 
 int /*<<< orphan*/  SWAY_DEBUG ; 
 struct cmd_results* FUNC0 (int,char*,int /*<<< orphan*/ ,int) ; 
 struct cmd_results* FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 TYPE_2__* config ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (char const*,char const*) ; 
 char* FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,char const*,char const*) ; 

struct cmd_results *FUNC6(int argc, char **argv) {
	struct cmd_results *error = NULL;
	if ((error = FUNC0(argc, "id", EXPECTED_EQUAL_TO, 1))) {
		return error;
	}

	const char *name = argv[0];
	const char *oldname = config->current_bar->id;
	if (FUNC3(name, oldname) == 0) {
		return FUNC1(CMD_SUCCESS, NULL);  // NOP
	} else if (FUNC3(name, "id") == 0) {
		return FUNC1(CMD_INVALID, "id cannot be 'id'");
	}
	// check if id is used by a previously defined bar
	for (int i = 0; i < config->bars->length; ++i) {
		struct bar_config *find = config->bars->items[i];
		if (FUNC3(name, find->id) == 0 && config->current_bar != find) {
			return FUNC1(CMD_FAILURE,
					"Id '%s' already defined for another bar. Id unchanged (%s).",
					name, oldname);
		}
	}

	FUNC5(SWAY_DEBUG, "Renaming bar: '%s' to '%s'", oldname, name);

	// free old bar id
	FUNC2(config->current_bar->id);
	config->current_bar->id = FUNC4(name);
	return FUNC1(CMD_SUCCESS, NULL);
}