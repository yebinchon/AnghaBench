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
struct wlr_box {scalar_t__ height; scalar_t__ width; scalar_t__ y; scalar_t__ x; } ;
struct sway_view {TYPE_1__* container; scalar_t__ surface; scalar_t__ saved_buffer; } ;
struct sway_output {TYPE_2__* wlr_output; } ;
struct sway_container_state {scalar_t__ border; scalar_t__ border_thickness; scalar_t__ width; scalar_t__ content_height; scalar_t__ content_y; scalar_t__ x; scalar_t__ border_bottom; scalar_t__ content_width; scalar_t__ content_x; scalar_t__ border_right; scalar_t__ border_left; } ;
struct sway_container {int /*<<< orphan*/  alpha; struct sway_container_state current; struct sway_view* view; } ;
struct border_colors {int /*<<< orphan*/  child_border; int /*<<< orphan*/  indicator; } ;
typedef  int /*<<< orphan*/  pixman_region32_t ;
struct TYPE_7__ {int length; } ;
typedef  TYPE_3__ list_t ;
typedef  enum sway_container_layout { ____Placeholder_sway_container_layout } sway_container_layout ;
struct TYPE_6__ {float scale; } ;
struct TYPE_5__ {int /*<<< orphan*/  alpha; } ;

/* Variables and functions */
 scalar_t__ B_CSD ; 
 scalar_t__ B_NONE ; 
 int L_HORIZ ; 
 int L_VERT ; 
 int FUNC0 (struct sway_container*) ; 
 TYPE_3__* FUNC1 (struct sway_container*) ; 
 int /*<<< orphan*/  FUNC2 (float**,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (float*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sway_output*,int /*<<< orphan*/ *,struct wlr_box*,float*) ; 
 int /*<<< orphan*/  FUNC5 (struct sway_view*,struct sway_output*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sway_view*,struct sway_output*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct wlr_box*,float) ; 

__attribute__((used)) static void FUNC8(struct sway_output *output, pixman_region32_t *damage,
		struct sway_container *con, struct border_colors *colors) {
	struct sway_view *view = con->view;
	if (view->saved_buffer) {
		FUNC5(view, output, damage, view->container->alpha);
	} else if (view->surface) {
		FUNC6(view, output, damage, view->container->alpha);
	}

	if (con->current.border == B_NONE || con->current.border == B_CSD) {
		return;
	}

	struct wlr_box box;
	float output_scale = output->wlr_output->scale;
	float color[4];
	struct sway_container_state *state = &con->current;

	if (state->border_left) {
		FUNC2(&color, colors->child_border, sizeof(float) * 4);
		FUNC3(color, con->alpha);
		box.x = state->x;
		box.y = state->content_y;
		box.width = state->border_thickness;
		box.height = state->content_height;
		FUNC7(&box, output_scale);
		FUNC4(output, damage, &box, color);
	}

	list_t *siblings = FUNC1(con);
	enum sway_container_layout layout =
		FUNC0(con);

	if (state->border_right) {
		if (siblings->length == 1 && layout == L_HORIZ) {
			FUNC2(&color, colors->indicator, sizeof(float) * 4);
		} else {
			FUNC2(&color, colors->child_border, sizeof(float) * 4);
		}
		FUNC3(color, con->alpha);
		box.x = state->content_x + state->content_width;
		box.y = state->content_y;
		box.width = state->border_thickness;
		box.height = state->content_height;
		FUNC7(&box, output_scale);
		FUNC4(output, damage, &box, color);
	}

	if (state->border_bottom) {
		if (siblings->length == 1 && layout == L_VERT) {
			FUNC2(&color, colors->indicator, sizeof(float) * 4);
		} else {
			FUNC2(&color, colors->child_border, sizeof(float) * 4);
		}
		FUNC3(color, con->alpha);
		box.x = state->x;
		box.y = state->content_y + state->content_height;
		box.width = state->width;
		box.height = state->border_thickness;
		FUNC7(&box, output_scale);
		FUNC4(output, damage, &box, color);
	}
}