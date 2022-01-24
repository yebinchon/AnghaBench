#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct wlr_surface {int dummy; } ;
struct wlr_box {int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
struct sway_output {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sway_output*,struct wlr_surface*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  (*) (struct sway_output*,struct wlr_surface*,struct wlr_box*,float,void*),void*) ; 
 int /*<<< orphan*/  FUNC1 (struct sway_output*,struct wlr_surface*,struct wlr_box*,float,void*) ; 

__attribute__((used)) static void FUNC2(struct sway_output *output,
		struct wlr_surface *surface, struct wlr_box *box, float rotation,
		void *data) {
	// Render this popup's surface
	FUNC1(output, surface, box, rotation, data);

	// Render this popup's child toplevels
	FUNC0(output, surface, box->x, box->y,
			render_surface_iterator, data);
}