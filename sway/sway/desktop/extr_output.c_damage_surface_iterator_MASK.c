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
struct TYPE_3__ {scalar_t__ scale; } ;
struct wlr_surface {TYPE_1__ current; int /*<<< orphan*/  buffer_damage; } ;
struct wlr_box {int x; int width; int y; int height; } ;
struct sway_output {TYPE_2__* wlr_output; int /*<<< orphan*/  damage; } ;
typedef  int /*<<< orphan*/  pixman_region32_t ;
struct TYPE_4__ {int /*<<< orphan*/  scale; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct wlr_box*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct wlr_box*,struct wlr_box*,float) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct wlr_box*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,float,int,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct wlr_surface*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC14(struct sway_output *output,
		struct wlr_surface *surface, struct wlr_box *_box, float rotation,
		void *_data) {
	bool *data = _data;
	bool whole = *data;

	struct wlr_box box = *_box;
	FUNC5(&box, output->wlr_output->scale);

	int center_x = box.x + box.width/2;
	int center_y = box.y + box.height/2;

	if (FUNC3(&surface->buffer_damage)) {
		pixman_region32_t damage;
		FUNC2(&damage);
		FUNC13(surface, &damage);
		FUNC12(&damage, &damage, output->wlr_output->scale);
		if (FUNC0(output->wlr_output->scale) > surface->current.scale) {
			// When scaling up a surface, it'll become blurry so we need to
			// expand the damage region
			FUNC10(&damage, &damage,
				FUNC0(output->wlr_output->scale) - surface->current.scale);
		}
		FUNC4(&damage, box.x, box.y);
		FUNC11(&damage, &damage, rotation,
			center_x, center_y);
		FUNC7(output->damage, &damage);
		FUNC1(&damage);
	}

	if (whole) {
		FUNC6(&box, &box, rotation);
		FUNC8(output->damage, &box);
	}

	FUNC9(output->wlr_output);
}