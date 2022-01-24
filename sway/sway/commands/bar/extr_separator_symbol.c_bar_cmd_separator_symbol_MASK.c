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
struct TYPE_4__ {TYPE_1__* current_bar; } ;
struct TYPE_3__ {int /*<<< orphan*/  id; int /*<<< orphan*/  separator_symbol; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_SUCCESS ; 
 int /*<<< orphan*/  EXPECTED_EQUAL_TO ; 
 int /*<<< orphan*/  SWAY_DEBUG ; 
 struct cmd_results* FUNC0 (int,char*,int /*<<< orphan*/ ,int) ; 
 struct cmd_results* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_2__* config ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

struct cmd_results *FUNC5(int argc, char **argv) {
	struct cmd_results *error = NULL;
	if ((error = FUNC0(argc, "separator_symbol", EXPECTED_EQUAL_TO, 1))) {
		return error;
	}
	FUNC2(config->current_bar->separator_symbol);
	config->current_bar->separator_symbol = FUNC3(argv[0]);
	FUNC4(SWAY_DEBUG, "Settings separator_symbol '%s' for bar: %s",
			config->current_bar->separator_symbol, config->current_bar->id);
	return FUNC1(CMD_SUCCESS, NULL);
}