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
struct TYPE_6__ {scalar_t__ show_marks; } ;
struct TYPE_5__ {TYPE_1__* outputs; } ;
struct TYPE_4__ {int length; struct sway_output** items; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_SUCCESS ; 
 int /*<<< orphan*/  EXPECTED_AT_LEAST ; 
 struct cmd_results* FUNC0 (int,char*,int /*<<< orphan*/ ,int) ; 
 struct cmd_results* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_3__* config ; 
 int /*<<< orphan*/  FUNC2 (struct sway_output*) ; 
 scalar_t__ FUNC3 (char*,scalar_t__) ; 
 int /*<<< orphan*/  rebuild_marks_iterator ; 
 TYPE_2__* root ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

struct cmd_results *FUNC5(int argc, char **argv) {
	struct cmd_results *error = NULL;
	if ((error = FUNC0(argc, "show_marks", EXPECTED_AT_LEAST, 1))) {
		return error;
	}

	config->show_marks = FUNC3(argv[0], config->show_marks);

	if (config->show_marks) {
		FUNC4(rebuild_marks_iterator, NULL);
	}

	for (int i = 0; i < root->outputs->length; ++i) {
		struct sway_output *output = root->outputs->items[i];
		FUNC2(output);
	}

	return FUNC1(CMD_SUCCESS, NULL);
}