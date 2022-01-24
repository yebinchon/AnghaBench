#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct wl_listener {int dummy; } ;
struct wl_client {int dummy; } ;
struct sway_seat {struct wl_client* exclusive_client; } ;
struct TYPE_4__ {int /*<<< orphan*/  link; } ;
struct sway_layer_surface {TYPE_2__* layer_surface; int /*<<< orphan*/  link; TYPE_1__ output_destroy; } ;
struct TYPE_5__ {int /*<<< orphan*/ * output; int /*<<< orphan*/  resource; } ;

/* Variables and functions */
 struct sway_layer_surface* FUNC0 (struct wl_client*,int /*<<< orphan*/ *) ; 
 struct sway_seat* FUNC1 () ; 
 int /*<<< orphan*/  output_destroy ; 
 int /*<<< orphan*/  FUNC2 (struct sway_seat*,TYPE_2__*) ; 
 struct sway_layer_surface* sway_layer ; 
 struct sway_layer_surface* FUNC3 (struct wl_listener*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct wl_client* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC8(struct wl_listener *listener, void *data) {
	struct sway_layer_surface *sway_layer =
		FUNC3(listener, sway_layer, output_destroy);
	// Determine if this layer is being used by an exclusive client. If it is,
	// try and find another layer owned by this client to pass focus to.
	struct sway_seat *seat = FUNC1();
	struct wl_client *client =
		FUNC6(sway_layer->layer_surface->resource);
	bool set_focus = seat->exclusive_client == client;

	FUNC5(&sway_layer->output_destroy.link);
	FUNC5(&sway_layer->link);
	FUNC4(&sway_layer->link);

	if (set_focus) {
		struct sway_layer_surface *layer =
			FUNC0(client, sway_layer->layer_surface->output);
		if (layer) {
			FUNC2(seat, layer->layer_surface);
		}
	}

	sway_layer->layer_surface->output = NULL;
	FUNC7(sway_layer->layer_surface);
}