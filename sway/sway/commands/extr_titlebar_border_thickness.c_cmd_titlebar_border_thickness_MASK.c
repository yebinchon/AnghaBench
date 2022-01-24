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
struct sway_workspace {int dummy; } ;
struct sway_output {int dummy; } ;
struct cmd_results {int dummy; } ;
struct TYPE_6__ {int titlebar_v_padding; int titlebar_border_thickness; } ;
struct TYPE_5__ {TYPE_1__* outputs; } ;
struct TYPE_4__ {int length; struct sway_output** items; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_FAILURE ; 
 int /*<<< orphan*/  CMD_SUCCESS ; 
 int /*<<< orphan*/  EXPECTED_EQUAL_TO ; 
 int /*<<< orphan*/  FUNC0 (struct sway_workspace*) ; 
 struct cmd_results* FUNC1 (int,char*,int /*<<< orphan*/ ,int) ; 
 struct cmd_results* FUNC2 (int /*<<< orphan*/ ,char*) ; 
 TYPE_3__* config ; 
 int /*<<< orphan*/  FUNC3 (struct sway_output*) ; 
 struct sway_workspace* FUNC4 (struct sway_output*) ; 
 TYPE_2__* root ; 
 int FUNC5 (char*,char**,int) ; 
 int /*<<< orphan*/  FUNC6 (struct sway_workspace*,char*) ; 

struct cmd_results *FUNC7(int argc, char **argv) {
	struct cmd_results *error = NULL;
	if ((error = FUNC1(argc, "titlebar_border_thickness", EXPECTED_EQUAL_TO, 1))) {
		return error;
	}

	char *inv;
	int value = FUNC5(argv[0], &inv, 10);
	if (*inv != '\0' || value < 0 || value > config->titlebar_v_padding) {
		return FUNC2(CMD_FAILURE, "Invalid size specified");
	}

	config->titlebar_border_thickness = value;

	for (int i = 0; i < root->outputs->length; ++i) {
		struct sway_output *output = root->outputs->items[i];
		struct sway_workspace *ws = FUNC4(output);
		if (!FUNC6(ws, "Expected output to have a workspace")) {
			return FUNC2(CMD_FAILURE,
					"Expected output to have a workspace");
		}
		FUNC0(ws);
		FUNC3(output);
	}

	return FUNC2(CMD_SUCCESS, NULL);
}