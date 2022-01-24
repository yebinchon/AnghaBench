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
struct TYPE_3__ {scalar_t__ layer; } ;
struct wlr_layer_surface_v1 {TYPE_1__ current; int /*<<< orphan*/  surface; int /*<<< orphan*/  mapped; } ;
struct sway_seat {struct wlr_layer_surface_v1* focused_layer; } ;
struct sway_node {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  node; } ;

/* Variables and functions */
 scalar_t__ ZWLR_LAYER_SHELL_V1_LAYER_TOP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_2__* root ; 
 struct sway_node* FUNC1 (struct sway_seat*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct sway_seat*,struct sway_node*) ; 
 int /*<<< orphan*/  FUNC3 (struct sway_seat*,int /*<<< orphan*/ ,int) ; 

void FUNC4(struct sway_seat *seat,
		struct wlr_layer_surface_v1 *layer) {
	if (!layer && seat->focused_layer) {
		seat->focused_layer = NULL;
		struct sway_node *previous = FUNC1(seat, &root->node);
		if (previous) {
			// Hack to get seat to re-focus the return value of get_focus
			FUNC2(seat, NULL);
			FUNC2(seat, previous);
		}
		return;
	} else if (!layer || seat->focused_layer == layer) {
		return;
	}
	FUNC0(layer->mapped);
	FUNC3(seat, layer->surface, true);
	if (layer->current.layer >= ZWLR_LAYER_SHELL_V1_LAYER_TOP) {
		seat->focused_layer = layer;
	}
}