#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct wlr_box {int /*<<< orphan*/  height; int /*<<< orphan*/  width; int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
struct sway_output {TYPE_1__* wlr_output; } ;
struct sway_container_state {int /*<<< orphan*/  border_thickness; int /*<<< orphan*/  width; int /*<<< orphan*/  y; int /*<<< orphan*/  x; int /*<<< orphan*/  border_top; } ;
struct sway_container {int /*<<< orphan*/  alpha; struct sway_container_state current; } ;
struct border_colors {int /*<<< orphan*/  child_border; } ;
typedef  int /*<<< orphan*/  pixman_region32_t ;
struct TYPE_2__ {float scale; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (float**,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (float*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sway_output*,int /*<<< orphan*/ *,struct wlr_box*,float*) ; 
 int /*<<< orphan*/  FUNC3 (struct wlr_box*,float) ; 

__attribute__((used)) static void FUNC4(struct sway_output *output,
		pixman_region32_t *output_damage, struct sway_container *con,
		struct border_colors *colors) {
	struct sway_container_state *state = &con->current;
	if (!state->border_top) {
		return;
	}
	struct wlr_box box;
	float color[4];
	float output_scale = output->wlr_output->scale;

	// Child border - top edge
	FUNC0(&color, colors->child_border, sizeof(float) * 4);
	FUNC1(color, con->alpha);
	box.x = state->x;
	box.y = state->y;
	box.width = state->width;
	box.height = state->border_thickness;
	FUNC3(&box, output_scale);
	FUNC2(output, output_damage, &box, color);
}