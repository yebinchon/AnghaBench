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
struct TYPE_4__ {int configured; int /*<<< orphan*/  matrix; } ;
struct input_config {TYPE_1__ calibration_matrix; } ;
struct cmd_results {int dummy; } ;
struct TYPE_5__ {struct input_config* input_config; } ;
struct TYPE_6__ {TYPE_2__ handler_context; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_FAILURE ; 
 int /*<<< orphan*/  CMD_SUCCESS ; 
 int /*<<< orphan*/  EXPECTED_EQUAL_TO ; 
 struct cmd_results* FUNC0 (int,char*,int /*<<< orphan*/ ,int) ; 
 struct cmd_results* FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 TYPE_3__* config ; 
 scalar_t__ FUNC2 (float) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,float*,int) ; 
 float FUNC4 (char*) ; 

struct cmd_results *FUNC5(int argc, char **argv) {
	struct cmd_results *error = NULL;
	if ((error = FUNC0(argc, "calibration_matrix", EXPECTED_EQUAL_TO, 6))) {
		return error;
	}
	struct input_config *ic = config->handler_context.input_config;
	if (!ic) {
		return FUNC1(CMD_FAILURE, "No input device defined.");
	}

	float parsed[6];
	for (int i = 0; i < argc; ++i) {
		char *item = argv[i];
		float x = FUNC4(item);
		if (FUNC2(x)) {
			return FUNC1(CMD_FAILURE, "calibration_matrix: unable to parse float: %s", item);
		}
		parsed[i] = x;
	}

	ic->calibration_matrix.configured = true;
	FUNC3(ic->calibration_matrix.matrix, parsed, sizeof(ic->calibration_matrix.matrix));

	return FUNC1(CMD_SUCCESS, NULL);
}