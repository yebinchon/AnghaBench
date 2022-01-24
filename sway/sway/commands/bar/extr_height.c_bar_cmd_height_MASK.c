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
struct TYPE_3__ {int height; int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_INVALID ; 
 int /*<<< orphan*/  CMD_SUCCESS ; 
 int /*<<< orphan*/  EXPECTED_EQUAL_TO ; 
 int /*<<< orphan*/  SWAY_DEBUG ; 
 int FUNC0 (char*) ; 
 struct cmd_results* FUNC1 (int,char*,int /*<<< orphan*/ ,int) ; 
 struct cmd_results* FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 TYPE_2__* config ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 

struct cmd_results *FUNC4(int argc, char **argv) {
	struct cmd_results *error = NULL;
	if ((error = FUNC1(argc, "height", EXPECTED_EQUAL_TO, 1))) {
		return error;
	}
	int height = FUNC0(argv[0]);
	if (height < 0) {
		return FUNC2(CMD_INVALID,
				"Invalid height value: %s", argv[0]);
	}
	config->current_bar->height = height;
	FUNC3(SWAY_DEBUG, "Setting bar height to %d on bar: %s",
			height, config->current_bar->id);
	return FUNC2(CMD_SUCCESS, NULL);
}