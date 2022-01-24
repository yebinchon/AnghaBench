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
struct wlr_output {int dummy; } ;
struct sway_workspace {TYPE_2__* output; } ;
struct sway_seat {int dummy; } ;
struct sway_output {int /*<<< orphan*/  node; } ;
struct cmd_results {int dummy; } ;
typedef  enum wlr_direction { ____Placeholder_wlr_direction } wlr_direction ;
struct TYPE_4__ {int lx; int width; int ly; int height; int /*<<< orphan*/  wlr_output; } ;
struct TYPE_3__ {int /*<<< orphan*/  output_layout; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_FAILURE ; 
 int /*<<< orphan*/  CMD_INVALID ; 
 int /*<<< orphan*/  CMD_SUCCESS ; 
 struct cmd_results* FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char**,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 struct sway_output* FUNC4 (char*) ; 
 struct sway_output* FUNC5 (struct wlr_output*) ; 
 struct sway_output* FUNC6 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,int*) ; 
 TYPE_1__* root ; 
 int /*<<< orphan*/  FUNC8 (struct sway_seat*) ; 
 int /*<<< orphan*/  FUNC9 (struct sway_seat*,int /*<<< orphan*/ *) ; 
 struct sway_workspace* FUNC10 (struct sway_seat*) ; 
 int /*<<< orphan*/  FUNC11 (struct sway_seat*,int /*<<< orphan*/ ) ; 
 struct wlr_output* FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static struct cmd_results *FUNC13(struct sway_seat *seat,
		int argc, char **argv) {
	if (!argc) {
		return FUNC0(CMD_INVALID,
			"Expected 'focus output <direction|name>'");
	}
	char *identifier = FUNC2(argv, argc);
	struct sway_output *output = FUNC4(identifier);

	if (!output) {
		enum wlr_direction direction;
		if (!FUNC7(identifier, &direction)) {
			FUNC1(identifier);
			return FUNC0(CMD_INVALID,
				"There is no output with that name");
		}
		struct sway_workspace *ws = FUNC10(seat);
		if (!ws) {
			FUNC1(identifier);
			return FUNC0(CMD_FAILURE,
				"No focused workspace to base directions off of");
		}
		output = FUNC6(ws->output, direction);

		if (!output) {
			int center_lx = ws->output->lx + ws->output->width / 2;
			int center_ly = ws->output->ly + ws->output->height / 2;
			struct wlr_output *target = FUNC12(
					root->output_layout, FUNC3(direction),
					ws->output->wlr_output, center_lx, center_ly);
			if (target) {
				output = FUNC5(target);
			}
		}
	}

	FUNC1(identifier);
	if (output) {
		FUNC11(seat, FUNC9(seat, &output->node));
		FUNC8(seat);
	}

	return FUNC0(CMD_SUCCESS, NULL);
}