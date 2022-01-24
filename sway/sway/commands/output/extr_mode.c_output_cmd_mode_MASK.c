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
struct output_config {int custom_mode; void* height; int /*<<< orphan*/  refresh_rate; void* width; } ;
struct cmd_results {int dummy; } ;
struct TYPE_4__ {int argc; char** argv; } ;
struct TYPE_5__ {TYPE_1__ leftovers; struct output_config* output_config; } ;
struct TYPE_6__ {TYPE_2__ handler_context; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_FAILURE ; 
 int /*<<< orphan*/  CMD_INVALID ; 
 struct cmd_results* FUNC0 (int /*<<< orphan*/ ,char*) ; 
 TYPE_3__* config ; 
 scalar_t__ FUNC1 (char*,char*) ; 
 scalar_t__ FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char**) ; 
 void* FUNC4 (char*,char**,int) ; 

struct cmd_results *FUNC5(int argc, char **argv) {
	if (!config->handler_context.output_config) {
		return FUNC0(CMD_FAILURE, "Missing output config");
	}
	if (!argc) {
		return FUNC0(CMD_INVALID, "Missing mode argument.");
	}

	struct output_config *output = config->handler_context.output_config;

	if (FUNC2(argv[0], "--custom") == 0) {
		argv++;
		argc--;
		output->custom_mode = 1;
	} else {
		output->custom_mode = 0;
	}

	char *end;
	output->width = FUNC4(*argv, &end, 10);
	if (*end) {
		// Format is 1234x4321
		if (*end != 'x') {
			return FUNC0(CMD_INVALID, "Invalid mode width.");
		}
		++end;
		output->height = FUNC4(end, &end, 10);
		if (*end) {
			if (*end != '@') {
				return FUNC0(CMD_INVALID, "Invalid mode height.");
			}
			++end;
			output->refresh_rate = FUNC3(end, &end);
			if (FUNC1("Hz", end) != 0) {
				return FUNC0(CMD_INVALID,
					"Invalid mode refresh rate.");
			}
		}
	} else {
		// Format is 1234 4321
		argc--; argv++;
		if (!argc) {
			return FUNC0(CMD_INVALID,
				"Missing mode argument (height).");
		}
		output->height = FUNC4(*argv, &end, 10);
		if (*end) {
			return FUNC0(CMD_INVALID, "Invalid mode height.");
		}
	}

	config->handler_context.leftovers.argc = argc - 1;
	config->handler_context.leftovers.argv = argv + 1;
	return NULL;
}