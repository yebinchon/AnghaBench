#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct input_config_mapped_from_region {int dummy; } ;
struct input_config {TYPE_2__* mapped_from_region; } ;
struct cmd_results {int dummy; } ;
struct TYPE_5__ {struct input_config* input_config; } ;
struct TYPE_7__ {TYPE_1__ handler_context; } ;
struct TYPE_6__ {scalar_t__ x1; scalar_t__ y1; scalar_t__ x2; scalar_t__ y2; int mm; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_FAILURE ; 
 int /*<<< orphan*/  CMD_SUCCESS ; 
 int /*<<< orphan*/  EXPECTED_EQUAL_TO ; 
 TYPE_2__* FUNC0 (int,int) ; 
 struct cmd_results* FUNC1 (int,char*,int /*<<< orphan*/ ,int) ; 
 struct cmd_results* FUNC2 (int /*<<< orphan*/ ,char*) ; 
 TYPE_3__* config ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (char*,scalar_t__*,scalar_t__*,int*) ; 

struct cmd_results *FUNC5(int argc, char **argv) {
	struct cmd_results *error = NULL;
	if ((error = FUNC1(argc, "map_from_region", EXPECTED_EQUAL_TO, 2))) {
		return error;
	}
	struct input_config *ic = config->handler_context.input_config;
	if (!ic) {
		return FUNC2(CMD_FAILURE, "No input device defined");
	}

	ic->mapped_from_region =
		FUNC0(1, sizeof(struct input_config_mapped_from_region));

	bool mm1, mm2;
	if (!FUNC4(argv[0], &ic->mapped_from_region->x1,
			&ic->mapped_from_region->y1, &mm1)) {
		FUNC3(ic->mapped_from_region);
		ic->mapped_from_region = NULL;
		return FUNC2(CMD_FAILURE, "Invalid top-left coordinates");
	}
	if (!FUNC4(argv[1], &ic->mapped_from_region->x2,
			&ic->mapped_from_region->y2, &mm2)) {
		FUNC3(ic->mapped_from_region);
		ic->mapped_from_region = NULL;
		return FUNC2(CMD_FAILURE, "Invalid bottom-right coordinates");
	}
	if (ic->mapped_from_region->x1 > ic->mapped_from_region->x2 ||
			ic->mapped_from_region->y1 > ic->mapped_from_region->y2) {
		FUNC3(ic->mapped_from_region);
		ic->mapped_from_region = NULL;
		return FUNC2(CMD_FAILURE, "Invalid rectangle");
	}
	if (mm1 != mm2) {
		FUNC3(ic->mapped_from_region);
		ic->mapped_from_region = NULL;
		return FUNC2(CMD_FAILURE,
			"Both coordinates must be in the same unit");
	}
	ic->mapped_from_region->mm = mm1;

	return FUNC2(CMD_SUCCESS, NULL);
}