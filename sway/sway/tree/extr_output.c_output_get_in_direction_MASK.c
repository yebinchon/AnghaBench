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
struct wlr_output {int dummy; } ;
struct wlr_box {int x; int width; int y; int height; } ;
struct sway_output {int /*<<< orphan*/  wlr_output; } ;
typedef  enum wlr_direction { ____Placeholder_wlr_direction } wlr_direction ;
struct TYPE_2__ {int /*<<< orphan*/  output_layout; } ;

/* Variables and functions */
 struct sway_output* FUNC0 (struct wlr_output*) ; 
 TYPE_1__* root ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int) ; 
 struct wlr_output* FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int) ; 
 struct wlr_box* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

struct sway_output *FUNC4(struct sway_output *reference,
		enum wlr_direction direction) {
	if (!FUNC1(direction, "got invalid direction: %d", direction)) {
		return NULL;
	}
	struct wlr_box *output_box =
		FUNC3(root->output_layout, reference->wlr_output);
	int lx = output_box->x + output_box->width / 2;
	int ly = output_box->y + output_box->height / 2;
	struct wlr_output *wlr_adjacent = FUNC2(
			root->output_layout, direction, reference->wlr_output, lx, ly);
	if (!wlr_adjacent) {
		return NULL;
	}
	return FUNC0(wlr_adjacent);
}