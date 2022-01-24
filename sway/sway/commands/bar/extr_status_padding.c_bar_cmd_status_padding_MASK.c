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
struct TYPE_3__ {int status_padding; int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_INVALID ; 
 int /*<<< orphan*/  CMD_SUCCESS ; 
 int /*<<< orphan*/  EXPECTED_EQUAL_TO ; 
 int /*<<< orphan*/  SWAY_DEBUG ; 
 struct cmd_results* FUNC0 (int,char*,int /*<<< orphan*/ ,int) ; 
 struct cmd_results* FUNC1 (int /*<<< orphan*/ ,char*) ; 
 TYPE_2__* config ; 
 scalar_t__ FUNC2 (char*) ; 
 int FUNC3 (char*,char**,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 

struct cmd_results *FUNC5(int argc, char **argv) {
	struct cmd_results *error = NULL;
	if ((error = FUNC0(argc, "status_padding", EXPECTED_EQUAL_TO, 1))) {
		return error;
	}
	char *end;
	int padding = FUNC3(argv[0], &end, 10);
	if (FUNC2(end) || padding < 0) {
		return FUNC1(CMD_INVALID,
				"Padding must be a positive integer");
	}
	config->current_bar->status_padding = padding;
	FUNC4(SWAY_DEBUG, "Status padding on bar %s: %d",
			config->current_bar->id, config->current_bar->status_padding);
	return FUNC1(CMD_SUCCESS, NULL);
}