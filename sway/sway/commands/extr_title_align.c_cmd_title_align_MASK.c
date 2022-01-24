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
struct sway_output {int dummy; } ;
struct cmd_results {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  title_align; } ;
struct TYPE_5__ {TYPE_1__* outputs; } ;
struct TYPE_4__ {int length; struct sway_output** items; } ;

/* Variables and functions */
 int /*<<< orphan*/  ALIGN_CENTER ; 
 int /*<<< orphan*/  ALIGN_LEFT ; 
 int /*<<< orphan*/  ALIGN_RIGHT ; 
 int /*<<< orphan*/  CMD_INVALID ; 
 int /*<<< orphan*/  CMD_SUCCESS ; 
 int /*<<< orphan*/  EXPECTED_AT_LEAST ; 
 struct cmd_results* FUNC0 (int,char*,int /*<<< orphan*/ ,int) ; 
 struct cmd_results* FUNC1 (int /*<<< orphan*/ ,char*) ; 
 TYPE_3__* config ; 
 int /*<<< orphan*/  FUNC2 (struct sway_output*) ; 
 TYPE_2__* root ; 
 scalar_t__ FUNC3 (char*,char*) ; 

struct cmd_results *FUNC4(int argc, char **argv) {
	struct cmd_results *error = NULL;
	if ((error = FUNC0(argc, "title_align", EXPECTED_AT_LEAST, 1))) {
		return error;
	}

	if (FUNC3(argv[0], "left") == 0) {
		config->title_align = ALIGN_LEFT;
	} else if (FUNC3(argv[0], "center") == 0) {
		config->title_align = ALIGN_CENTER;
	} else if (FUNC3(argv[0], "right") == 0) {
		config->title_align = ALIGN_RIGHT;
	} else {
		return FUNC1(CMD_INVALID,
				"Expected 'title_align left|center|right'");
	}

	for (int i = 0; i < root->outputs->length; ++i) {
		struct sway_output *output = root->outputs->items[i];
		FUNC2(output);
	}

	return FUNC1(CMD_SUCCESS, NULL);
}