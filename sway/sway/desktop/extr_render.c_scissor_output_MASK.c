#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct wlr_renderer {int dummy; } ;
struct wlr_output {int /*<<< orphan*/  transform; int /*<<< orphan*/  backend; } ;
struct wlr_box {scalar_t__ height; scalar_t__ width; scalar_t__ y; scalar_t__ x; } ;
struct TYPE_3__ {scalar_t__ y1; scalar_t__ y2; scalar_t__ x1; scalar_t__ x2; } ;
typedef  TYPE_1__ pixman_box32_t ;
typedef  enum wl_output_transform { ____Placeholder_wl_output_transform } wl_output_transform ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct wlr_renderer*) ; 
 struct wlr_renderer* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct wlr_box*,struct wlr_box*,int,int,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct wlr_output*,int*,int*) ; 
 int /*<<< orphan*/  FUNC5 (struct wlr_renderer*,struct wlr_box*) ; 

__attribute__((used)) static void FUNC6(struct wlr_output *wlr_output,
		pixman_box32_t *rect) {
	struct wlr_renderer *renderer = FUNC1(wlr_output->backend);
	FUNC0(renderer);

	struct wlr_box box = {
		.x = rect->x1,
		.y = rect->y1,
		.width = rect->x2 - rect->x1,
		.height = rect->y2 - rect->y1,
	};

	int ow, oh;
	FUNC4(wlr_output, &ow, &oh);

	enum wl_output_transform transform =
		FUNC3(wlr_output->transform);
	FUNC2(&box, &box, transform, ow, oh);

	FUNC5(renderer, &box);
}