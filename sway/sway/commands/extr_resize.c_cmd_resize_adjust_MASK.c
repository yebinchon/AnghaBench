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
typedef  scalar_t__ uint32_t ;
struct sway_container {int dummy; } ;
struct resize_amount {scalar_t__ unit; int amount; } ;
struct cmd_results {int dummy; } ;
struct TYPE_3__ {struct sway_container* container; } ;
struct TYPE_4__ {TYPE_1__ handler_context; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_INVALID ; 
 scalar_t__ RESIZE_UNIT_DEFAULT ; 
 scalar_t__ RESIZE_UNIT_INVALID ; 
 scalar_t__ RESIZE_UNIT_PPT ; 
 scalar_t__ RESIZE_UNIT_PX ; 
 scalar_t__ WLR_EDGE_NONE ; 
 struct cmd_results* FUNC0 (int /*<<< orphan*/ ,char const*) ; 
 TYPE_2__* config ; 
 scalar_t__ FUNC1 (struct sway_container*) ; 
 int FUNC2 (int,char**,struct resize_amount*) ; 
 scalar_t__ FUNC3 (char*) ; 
 struct cmd_results* FUNC4 (scalar_t__,struct resize_amount*) ; 
 struct cmd_results* FUNC5 (scalar_t__,struct resize_amount*) ; 
 scalar_t__ FUNC6 (char*,char*) ; 

__attribute__((used)) static struct cmd_results *FUNC7(int argc, char **argv,
		int multiplier) {
	const char usage[] = "Expected 'resize grow|shrink <direction> "
		"[<amount> px|ppt [or <amount> px|ppt]]'";
	uint32_t axis = FUNC3(*argv);
	if (axis == WLR_EDGE_NONE) {
		return FUNC0(CMD_INVALID, usage);
	}
	--argc; ++argv;

	// First amount
	struct resize_amount first_amount;
	if (argc) {
		int num_consumed_args = FUNC2(argc, argv, &first_amount);
		argc -= num_consumed_args;
		argv += num_consumed_args;
		if (first_amount.unit == RESIZE_UNIT_INVALID) {
			return FUNC0(CMD_INVALID, usage);
		}
	} else {
		first_amount.amount = 10;
		first_amount.unit = RESIZE_UNIT_DEFAULT;
	}

	// "or"
	if (argc) {
		if (FUNC6(*argv, "or") != 0) {
			return FUNC0(CMD_INVALID, usage);
		}
		--argc; ++argv;
	}

	// Second amount
	struct resize_amount second_amount;
	if (argc) {
		int num_consumed_args = FUNC2(argc, argv, &second_amount);
		if (argc > num_consumed_args) {
			return FUNC0(CMD_INVALID, usage);
		}
		if (second_amount.unit == RESIZE_UNIT_INVALID) {
			return FUNC0(CMD_INVALID, usage);
		}
	} else {
		second_amount.amount = 0;
		second_amount.unit = RESIZE_UNIT_INVALID;
	}

	first_amount.amount *= multiplier;
	second_amount.amount *= multiplier;

	struct sway_container *con = config->handler_context.container;
	if (FUNC1(con)) {
		// Floating containers can only resize in px. Choose an amount which
		// uses px, with fallback to an amount that specified no unit.
		if (first_amount.unit == RESIZE_UNIT_PX) {
			return FUNC4(axis, &first_amount);
		} else if (second_amount.unit == RESIZE_UNIT_PX) {
			return FUNC4(axis, &second_amount);
		} else if (first_amount.unit == RESIZE_UNIT_DEFAULT) {
			return FUNC4(axis, &first_amount);
		} else if (second_amount.unit == RESIZE_UNIT_DEFAULT) {
			return FUNC4(axis, &second_amount);
		} else {
			return FUNC0(CMD_INVALID,
					"Floating containers cannot use ppt measurements");
		}
	}

	// For tiling, prefer ppt -> default -> px
	if (first_amount.unit == RESIZE_UNIT_PPT) {
		return FUNC5(axis, &first_amount);
	} else if (second_amount.unit == RESIZE_UNIT_PPT) {
		return FUNC5(axis, &second_amount);
	} else if (first_amount.unit == RESIZE_UNIT_DEFAULT) {
		return FUNC5(axis, &first_amount);
	} else if (second_amount.unit == RESIZE_UNIT_DEFAULT) {
		return FUNC5(axis, &second_amount);
	} else {
		return FUNC5(axis, &first_amount);
	}
}