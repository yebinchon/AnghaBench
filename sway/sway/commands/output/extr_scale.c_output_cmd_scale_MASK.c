#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct cmd_results {int dummy; } ;
struct TYPE_5__ {int argc; char** argv; } ;
struct TYPE_7__ {TYPE_1__ leftovers; TYPE_2__* output_config; } ;
struct TYPE_8__ {TYPE_3__ handler_context; } ;
struct TYPE_6__ {int /*<<< orphan*/  scale; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_FAILURE ; 
 int /*<<< orphan*/  CMD_INVALID ; 
 struct cmd_results* FUNC0 (int /*<<< orphan*/ ,char*) ; 
 TYPE_4__* config ; 
 int /*<<< orphan*/  FUNC1 (char*,char**) ; 

struct cmd_results *FUNC2(int argc, char **argv) {
	if (!config->handler_context.output_config) {
		return FUNC0(CMD_FAILURE, "Missing output config");
	}
	if (!argc) {
		return FUNC0(CMD_INVALID, "Missing scale argument.");
	}

	char *end;
	config->handler_context.output_config->scale = FUNC1(*argv, &end);
	if (*end) {
		return FUNC0(CMD_INVALID, "Invalid scale.");
	}

	config->handler_context.leftovers.argc = argc - 1;
	config->handler_context.leftovers.argv = argv + 1;
	return NULL;
}