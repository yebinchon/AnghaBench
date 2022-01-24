#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_6__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct wlr_box {int dummy; } ;
struct sway_seat {TYPE_2__* cursor; } ;
struct sway_output {int dummy; } ;
struct sway_node {scalar_t__ type; int /*<<< orphan*/  sway_workspace; int /*<<< orphan*/  sway_container; } ;
struct TYPE_9__ {scalar_t__ mouse_warping; } ;
struct TYPE_8__ {int /*<<< orphan*/  hide_source; scalar_t__ hidden; TYPE_1__* cursor; } ;
struct TYPE_7__ {int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;

/* Variables and functions */
 scalar_t__ N_CONTAINER ; 
 scalar_t__ WARP_NO ; 
 scalar_t__ WARP_OUTPUT ; 
 TYPE_6__* config ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 struct sway_output* FUNC4 (struct sway_node*) ; 
 int /*<<< orphan*/  FUNC5 (struct sway_output*,struct wlr_box*) ; 
 struct sway_node* FUNC6 (struct sway_seat*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct wlr_box*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC9(struct sway_seat *seat) {
	struct sway_node *focus = FUNC6(seat);
	if (config->mouse_warping == WARP_NO || !focus) {
		return;
	}
	if (config->mouse_warping == WARP_OUTPUT) {
		struct sway_output *output = FUNC4(focus);
		if (output) {
			struct wlr_box box;
			FUNC5(output, &box);
			if (FUNC8(&box,
						seat->cursor->cursor->x, seat->cursor->cursor->y)) {
				return;
			}
		}
	}

	if (focus->type == N_CONTAINER) {
		FUNC2(seat->cursor, focus->sway_container);
	} else {
		FUNC3(seat->cursor, focus->sway_workspace);
	}
	if (seat->cursor->hidden){
		FUNC1(seat->cursor);
		FUNC7(seat->cursor->hide_source, FUNC0(seat->cursor));
	}
}