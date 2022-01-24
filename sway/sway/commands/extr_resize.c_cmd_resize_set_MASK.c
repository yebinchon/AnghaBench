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
struct sway_container {scalar_t__ width; scalar_t__ height; } ;
struct resize_amount {scalar_t__ unit; scalar_t__ amount; int /*<<< orphan*/  member_0; } ;
struct cmd_results {int dummy; } ;
struct TYPE_3__ {struct sway_container* container; } ;
struct TYPE_4__ {TYPE_1__ handler_context; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_INVALID ; 
 int /*<<< orphan*/  EXPECTED_AT_LEAST ; 
 scalar_t__ RESIZE_UNIT_INVALID ; 
 struct cmd_results* FUNC0 (int,char*,int /*<<< orphan*/ ,int) ; 
 struct cmd_results* FUNC1 (int /*<<< orphan*/ ,char const*) ; 
 TYPE_2__* config ; 
 scalar_t__ FUNC2 (struct sway_container*) ; 
 int FUNC3 (int,char**,struct resize_amount*) ; 
 struct cmd_results* FUNC4 (struct sway_container*,struct resize_amount*,struct resize_amount*) ; 
 struct cmd_results* FUNC5 (struct sway_container*,struct resize_amount*,struct resize_amount*) ; 
 scalar_t__ FUNC6 (char*,char*) ; 

__attribute__((used)) static struct cmd_results *FUNC7(int argc, char **argv) {
	struct cmd_results *error;
	if ((error = FUNC0(argc, "resize", EXPECTED_AT_LEAST, 1))) {
		return error;
	}
	const char usage[] = "Expected 'resize set [width] <width> [px|ppt]' or "
		"'resize set height <height> [px|ppt]' or "
		"'resize set [width] <width> [px|ppt] [height] <height> [px|ppt]'";

	// Width
	struct resize_amount width = {0};
	if (argc >= 2 && !FUNC6(argv[0], "width") && FUNC6(argv[1], "height")) {
		argc--; argv++;
	}
	if (FUNC6(argv[0], "height")) {
		int num_consumed_args = FUNC3(argc, argv, &width);
		argc -= num_consumed_args;
		argv += num_consumed_args;
		if (width.unit == RESIZE_UNIT_INVALID) {
			return FUNC1(CMD_INVALID, usage);
		}
	}

	// Height
	struct resize_amount height = {0};
	if (argc) {
		if (argc >= 2 && !FUNC6(argv[0], "height")) {
			argc--; argv++;
		}
		int num_consumed_args = FUNC3(argc, argv, &height);
		if (argc > num_consumed_args) {
			return FUNC1(CMD_INVALID, usage);
		}
		if (width.unit == RESIZE_UNIT_INVALID) {
			return FUNC1(CMD_INVALID, usage);
		}
	}

	// If 0, don't resize that dimension
	struct sway_container *con = config->handler_context.container;
	if (width.amount <= 0) {
		width.amount = con->width;
	}
	if (height.amount <= 0) {
		height.amount = con->height;
	}

	if (FUNC2(con)) {
		return FUNC4(con, &width, &height);
	}
	return FUNC5(con, &width, &height);
}