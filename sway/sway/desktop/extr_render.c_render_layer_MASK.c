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
struct wl_list {int dummy; } ;
struct sway_output {int dummy; } ;
struct render_data {float alpha; int /*<<< orphan*/ * damage; } ;
typedef  int /*<<< orphan*/  pixman_region32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sway_output*,struct wl_list*,int /*<<< orphan*/ ,struct render_data*) ; 
 int /*<<< orphan*/  render_surface_iterator ; 

__attribute__((used)) static void FUNC1(struct sway_output *output,
		pixman_region32_t *damage, struct wl_list *layer_surfaces) {
	struct render_data data = {
		.damage = damage,
		.alpha = 1.0f,
	};
	FUNC0(output, layer_surfaces,
		render_surface_iterator, &data);
}