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
struct wlr_output {struct sway_output* data; } ;
struct sway_workspace {struct sway_output* output; } ;
struct sway_output {int /*<<< orphan*/  wlr_output; } ;
typedef  int /*<<< orphan*/  names ;
typedef  enum wlr_direction { ____Placeholder_wlr_direction } wlr_direction ;
struct TYPE_4__ {int /*<<< orphan*/  seat; } ;
struct TYPE_6__ {TYPE_1__ handler_context; } ;
struct TYPE_5__ {int /*<<< orphan*/  output_layout; } ;

/* Variables and functions */
 int /*<<< orphan*/  WLR_DIRECTION_DOWN ; 
 int /*<<< orphan*/  WLR_DIRECTION_LEFT ; 
 int /*<<< orphan*/  WLR_DIRECTION_RIGHT ; 
 int /*<<< orphan*/  WLR_DIRECTION_UP ; 
 TYPE_3__* config ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct sway_output* FUNC1 (char const*) ; 
 TYPE_2__* root ; 
 struct sway_workspace* FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (char const*,char const*) ; 
 struct wlr_output* FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int) ; 
 struct wlr_output* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static struct sway_output *FUNC6(const char *direction_string,
		struct sway_output *reference, int ref_lx, int ref_ly) {
	if (FUNC3(direction_string, "current") == 0) {
		struct sway_workspace *active_ws =
			FUNC2(config->handler_context.seat);
		if (!active_ws) {
			return NULL;
		}
		return active_ws->output;
	}

	struct {
		char *name;
		enum wlr_direction direction;
	} names[] = {
		{ "up", WLR_DIRECTION_UP },
		{ "down", WLR_DIRECTION_DOWN },
		{ "left", WLR_DIRECTION_LEFT },
		{ "right", WLR_DIRECTION_RIGHT },
	};

	enum wlr_direction direction = 0;

	for (size_t i = 0; i < sizeof(names) / sizeof(names[0]); ++i) {
		if (FUNC3(names[i].name, direction_string) == 0) {
			direction = names[i].direction;
			break;
		}
	}

	if (reference && direction) {
		struct wlr_output *target = FUNC4(
				root->output_layout, direction, reference->wlr_output,
				ref_lx, ref_ly);

		if (!target) {
			target = FUNC5(
					root->output_layout, FUNC0(direction),
					reference->wlr_output, ref_lx, ref_ly);
		}

		if (target) {
			return target->data;
		}
	}

	return FUNC1(direction_string);
}