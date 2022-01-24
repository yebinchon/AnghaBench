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
struct wlr_box {int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
struct sway_output {int /*<<< orphan*/  damage; TYPE_1__* wlr_output; scalar_t__ ly; scalar_t__ lx; } ;
struct TYPE_2__ {int /*<<< orphan*/  scale; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct wlr_box*,struct wlr_box*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct wlr_box*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct wlr_box*) ; 

void FUNC3(struct sway_output *output, struct wlr_box *_box) {
	struct wlr_box box;
	FUNC0(&box, _box, sizeof(struct wlr_box));
	box.x -= output->lx;
	box.y -= output->ly;
	FUNC1(&box, output->wlr_output->scale);
	FUNC2(output->damage, &box);
}