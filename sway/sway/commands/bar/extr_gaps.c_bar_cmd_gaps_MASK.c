#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct cmd_results {int dummy; } ;
struct TYPE_6__ {TYPE_2__* current_bar; int /*<<< orphan*/  reading; } ;
struct TYPE_4__ {int top; int right; int bottom; int left; } ;
struct TYPE_5__ {int /*<<< orphan*/  id; TYPE_1__ gaps; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_INVALID ; 
 int /*<<< orphan*/  CMD_SUCCESS ; 
 int /*<<< orphan*/  EXPECTED_AT_LEAST ; 
 int /*<<< orphan*/  EXPECTED_AT_MOST ; 
 int /*<<< orphan*/  SWAY_DEBUG ; 
 struct cmd_results* FUNC0 (int,char*,int /*<<< orphan*/ ,int) ; 
 struct cmd_results* FUNC1 (int /*<<< orphan*/ ,char*) ; 
 TYPE_3__* config ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 scalar_t__ FUNC3 (char*,char*) ; 
 scalar_t__ FUNC4 (char*) ; 
 int FUNC5 (char*,char**,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int,int,int,int,int /*<<< orphan*/ ) ; 

struct cmd_results *FUNC7(int argc, char **argv) {
	struct cmd_results *error = NULL;
	if ((error = FUNC0(argc, "gaps", EXPECTED_AT_LEAST, 1))) {
		return error;
	}
	if ((error = FUNC0(argc, "gaps", EXPECTED_AT_MOST, 4))) {
		return error;
	}

	int top = 0, right = 0, bottom = 0, left = 0;

	for (int i = 0; i < argc; i++) {
		char *end;
		int amount = FUNC5(argv[i], &end, 10);
		if (FUNC4(end) && FUNC3(end, "px") != 0) {
			return FUNC1(CMD_INVALID,
					"Expected 'bar [<bar-id>] gaps <all> | <horizonal> "
					"<vertical> | <top> <right> <bottom> <left>'");
		}

		if (i == 0) {
			top = amount;
		}
		if (i == 0 || i == 1) {
			right = amount;
		}
		if (i == 0 || i == 2) {
			bottom = amount;
		}
		if (i == 0 || i == 1 || i == 3) {
			left = amount;
		}
	}

	config->current_bar->gaps.top = top;
	config->current_bar->gaps.right = right;
	config->current_bar->gaps.bottom = bottom;
	config->current_bar->gaps.left = left;

	FUNC6(SWAY_DEBUG, "Setting bar gaps to %d %d %d %d on bar: %s",
			config->current_bar->gaps.top, config->current_bar->gaps.right,
			config->current_bar->gaps.bottom, config->current_bar->gaps.left,
			config->current_bar->id);

	if (!config->reading) {
		FUNC2(config->current_bar);
	}

	return FUNC1(CMD_SUCCESS, NULL);
}