#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_5__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct cmd_results {int dummy; } ;
struct TYPE_7__ {int length; char** items; } ;
typedef  TYPE_2__ list_t ;
struct TYPE_8__ {TYPE_1__* current_bar; } ;
struct TYPE_6__ {int /*<<< orphan*/  modifier; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_INVALID ; 
 int /*<<< orphan*/  CMD_SUCCESS ; 
 int /*<<< orphan*/  EXPECTED_EQUAL_TO ; 
 int /*<<< orphan*/  SWAY_DEBUG ; 
 struct cmd_results* FUNC0 (int,char*,int /*<<< orphan*/ ,int) ; 
 struct cmd_results* FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 TYPE_5__* config ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 TYPE_2__* FUNC4 (char*,char*) ; 
 scalar_t__ FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,char*) ; 

struct cmd_results *FUNC7(int argc, char **argv) {
	struct cmd_results *error = NULL;
	if ((error = FUNC0(argc, "modifier", EXPECTED_EQUAL_TO, 1))) {
		return error;
	}

	uint32_t mod = 0;
	if (FUNC5(argv[0], "none") != 0) {
		list_t *split = FUNC4(argv[0], "+");
		for (int i = 0; i < split->length; ++i) {
			uint32_t tmp_mod;
			if ((tmp_mod = FUNC2(split->items[i])) > 0) {
				mod |= tmp_mod;
			} else if (FUNC5(split->items[i], "none") == 0) {
				error = FUNC1(CMD_INVALID,
						"none cannot be used along with other modifiers");
				FUNC3(split);
				return error;
			} else {
				error = FUNC1(CMD_INVALID,
					"Unknown modifier '%s'", (char *)split->items[i]);
				FUNC3(split);
				return error;
			}
		}
		FUNC3(split);
	}
	config->current_bar->modifier = mod;
	FUNC6(SWAY_DEBUG,
			"Show/Hide the bar when pressing '%s' in hide mode.", argv[0]);
	return FUNC1(CMD_SUCCESS, NULL);
}