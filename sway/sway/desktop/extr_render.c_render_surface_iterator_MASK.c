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
struct wlr_texture {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  transform; } ;
struct wlr_surface {TYPE_1__ current; } ;
struct wlr_output {int /*<<< orphan*/  transform_matrix; int /*<<< orphan*/  scale; } ;
struct wlr_box {int dummy; } ;
struct sway_output {struct wlr_output* wlr_output; } ;
struct render_data {float alpha; int /*<<< orphan*/ * damage; } ;
typedef  int /*<<< orphan*/  pixman_region32_t ;
typedef  enum wl_output_transform { ____Placeholder_wl_output_transform } wl_output_transform ;
struct TYPE_4__ {int /*<<< orphan*/  presentation; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct wlr_output*,int /*<<< orphan*/ *,struct wlr_texture*,struct wlr_box*,float*,float) ; 
 int /*<<< orphan*/  FUNC1 (struct wlr_box*,int /*<<< orphan*/ ) ; 
 TYPE_2__ server ; 
 int /*<<< orphan*/  FUNC2 (float*,struct wlr_box*,int,float,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct wlr_surface*) ; 
 struct wlr_texture* FUNC5 (struct wlr_surface*) ; 

__attribute__((used)) static void FUNC6(struct sway_output *output,
		struct wlr_surface *surface, struct wlr_box *_box, float rotation,
		void *_data) {
	struct render_data *data = _data;
	struct wlr_output *wlr_output = output->wlr_output;
	pixman_region32_t *output_damage = data->damage;
	float alpha = data->alpha;

	struct wlr_texture *texture = FUNC5(surface);
	if (!texture) {
		return;
	}

	struct wlr_box box = *_box;
	FUNC1(&box, wlr_output->scale);

	float matrix[9];
	enum wl_output_transform transform =
		FUNC3(surface->current.transform);
	FUNC2(matrix, &box, transform, rotation,
		wlr_output->transform_matrix);

	FUNC0(wlr_output, output_damage, texture, &box, matrix, alpha);

	FUNC4(server.presentation, surface);
}