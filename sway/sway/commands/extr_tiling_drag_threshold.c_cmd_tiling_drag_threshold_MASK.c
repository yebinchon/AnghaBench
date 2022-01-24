#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct cmd_results {int dummy; } ;
struct TYPE_2__ {int tiling_drag_threshold; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_INVALID ; 
 int /*<<< orphan*/  CMD_SUCCESS ; 
 int /*<<< orphan*/  EXPECTED_EQUAL_TO ; 
 struct cmd_results* FUNC0 (int,char*,int /*<<< orphan*/ ,int) ; 
 struct cmd_results* FUNC1 (int /*<<< orphan*/ ,char*) ; 
 TYPE_1__* config ; 
 int FUNC2 (char*,char**,int) ; 

struct cmd_results *FUNC3(int argc, char **argv) {
	struct cmd_results *error = NULL;
	if ((error = FUNC0(argc, "tiling_drag_threshold", EXPECTED_EQUAL_TO, 1))) {
		return error;
	}

	char *inv;
	int value = FUNC2(argv[0], &inv, 10);
	if (*inv != '\0' || value < 0) {
		return FUNC1(CMD_INVALID, "Invalid threshold specified");
	}

	config->tiling_drag_threshold = value;

	return FUNC1(CMD_SUCCESS, NULL);
}