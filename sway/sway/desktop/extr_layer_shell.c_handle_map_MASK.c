#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct wl_listener {int dummy; } ;
struct sway_output {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
struct sway_layer_surface {TYPE_1__* layer_surface; TYPE_2__ geo; } ;
struct TYPE_6__ {struct sway_output* data; } ;
struct TYPE_4__ {TYPE_3__* output; int /*<<< orphan*/  surface; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  map ; 
 int /*<<< orphan*/  FUNC1 (struct sway_output*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct sway_layer_surface* sway_layer ; 
 struct sway_layer_surface* FUNC2 (struct wl_listener*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_3__*) ; 

__attribute__((used)) static void FUNC4(struct wl_listener *listener, void *data) {
	struct sway_layer_surface *sway_layer = FUNC2(listener,
			sway_layer, map);
	struct sway_output *output = sway_layer->layer_surface->output->data;
	FUNC1(output, sway_layer->geo.x, sway_layer->geo.y,
		sway_layer->layer_surface->surface, true);
	FUNC3(sway_layer->layer_surface->surface,
		sway_layer->layer_surface->output);
	FUNC0();
}