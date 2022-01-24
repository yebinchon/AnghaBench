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
struct output_config {int subpixel; } ;
struct cmd_results {int dummy; } ;
typedef  enum wl_output_subpixel { ____Placeholder_wl_output_subpixel } wl_output_subpixel ;
struct TYPE_4__ {int argc; char** argv; } ;
struct TYPE_5__ {TYPE_1__ leftovers; struct output_config* output_config; } ;
struct TYPE_6__ {TYPE_2__ handler_context; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_FAILURE ; 
 int /*<<< orphan*/  CMD_INVALID ; 
 int WL_OUTPUT_SUBPIXEL_HORIZONTAL_BGR ; 
 int WL_OUTPUT_SUBPIXEL_HORIZONTAL_RGB ; 
 int WL_OUTPUT_SUBPIXEL_NONE ; 
 int WL_OUTPUT_SUBPIXEL_VERTICAL_BGR ; 
 int WL_OUTPUT_SUBPIXEL_VERTICAL_RGB ; 
 struct cmd_results* FUNC0 (int /*<<< orphan*/ ,char*) ; 
 TYPE_3__* config ; 
 scalar_t__ FUNC1 (char*,char*) ; 

struct cmd_results *FUNC2(int argc, char **argv) {
	if (!config->handler_context.output_config) {
		return FUNC0(CMD_FAILURE, "Missing output config");
	}
	if (!argc) {
		return FUNC0(CMD_INVALID, "Missing subpixel argument.");
	}
	enum wl_output_subpixel subpixel;

	if (FUNC1(*argv, "rgb") == 0) {
		subpixel = WL_OUTPUT_SUBPIXEL_HORIZONTAL_RGB;
	} else if (FUNC1(*argv, "bgr") == 0) {
		subpixel = WL_OUTPUT_SUBPIXEL_HORIZONTAL_BGR;
	} else if (FUNC1(*argv, "vrgb") == 0) {
		subpixel = WL_OUTPUT_SUBPIXEL_VERTICAL_RGB;
	} else if (FUNC1(*argv, "vbgr") == 0) {
		subpixel = WL_OUTPUT_SUBPIXEL_VERTICAL_BGR;
	} else if (FUNC1(*argv, "none") == 0) {
		subpixel = WL_OUTPUT_SUBPIXEL_NONE;
	} else {
		return FUNC0(CMD_INVALID, "Invalid output subpixel.");
	}

	struct output_config *oc = config->handler_context.output_config;
	config->handler_context.leftovers.argc = argc - 1;
	config->handler_context.leftovers.argv = argv + 1;

	oc->subpixel = subpixel;
	return NULL;
}