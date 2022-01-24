#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_9__ ;
typedef  struct TYPE_17__   TYPE_8__ ;
typedef  struct TYPE_16__   TYPE_7__ ;
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  left; int /*<<< orphan*/  bottom; int /*<<< orphan*/  right; int /*<<< orphan*/  top; } ;
struct wlr_layer_surface_v1_state {size_t layer; TYPE_1__ margin; int /*<<< orphan*/  desired_height; int /*<<< orphan*/  desired_width; } ;
struct TYPE_14__ {int /*<<< orphan*/  new_popup; int /*<<< orphan*/  unmap; int /*<<< orphan*/  map; int /*<<< orphan*/  destroy; } ;
struct wlr_layer_surface_v1 {struct wlr_layer_surface_v1_state current; struct wlr_layer_surface_v1_state client_pending; TYPE_6__* output; struct sway_layer_surface* data; TYPE_5__ events; TYPE_4__* surface; int /*<<< orphan*/  namespace; } ;
struct wl_listener {int dummy; } ;
struct sway_workspace {struct sway_output* output; } ;
struct sway_seat {int dummy; } ;
struct TYPE_16__ {int /*<<< orphan*/  destroy; } ;
struct sway_output {int /*<<< orphan*/ * layers; TYPE_7__ events; TYPE_6__* wlr_output; } ;
struct TYPE_17__ {int /*<<< orphan*/  notify; } ;
struct sway_layer_surface {int /*<<< orphan*/  link; TYPE_8__ output_destroy; struct wlr_layer_surface_v1* layer_surface; TYPE_8__ new_popup; TYPE_8__ unmap; TYPE_8__ map; TYPE_8__ destroy; TYPE_8__ surface_commit; } ;
struct TYPE_18__ {TYPE_2__* outputs; struct sway_output* noop_output; } ;
struct TYPE_15__ {struct sway_output* data; } ;
struct TYPE_12__ {int /*<<< orphan*/  commit; } ;
struct TYPE_13__ {TYPE_3__ events; } ;
struct TYPE_11__ {struct sway_output** items; int /*<<< orphan*/  length; } ;

/* Variables and functions */
 int /*<<< orphan*/  SWAY_DEBUG ; 
 int /*<<< orphan*/  SWAY_ERROR ; 
 int /*<<< orphan*/  FUNC0 (struct sway_output*) ; 
 struct sway_layer_surface* FUNC1 (int,int) ; 
 int /*<<< orphan*/  handle_destroy ; 
 int /*<<< orphan*/  handle_map ; 
 int /*<<< orphan*/  handle_new_popup ; 
 int /*<<< orphan*/  handle_output_destroy ; 
 int /*<<< orphan*/  handle_surface_commit ; 
 int /*<<< orphan*/  handle_unmap ; 
 struct sway_seat* FUNC2 () ; 
 TYPE_9__* root ; 
 struct sway_workspace* FUNC3 (struct sway_seat*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC7 (struct wlr_layer_surface_v1*) ; 

void FUNC8(struct wl_listener *listener, void *data) {
	struct wlr_layer_surface_v1 *layer_surface = data;
	FUNC4(SWAY_DEBUG, "new layer surface: namespace %s layer %d anchor %d "
			"size %dx%d margin %d,%d,%d,%d",
		layer_surface->namespace,
		layer_surface->client_pending.layer,
		layer_surface->client_pending.layer,
		layer_surface->client_pending.desired_width,
		layer_surface->client_pending.desired_height,
		layer_surface->client_pending.margin.top,
		layer_surface->client_pending.margin.right,
		layer_surface->client_pending.margin.bottom,
		layer_surface->client_pending.margin.left);

	if (!layer_surface->output) {
		// Assign last active output
		struct sway_output *output = NULL;
		struct sway_seat *seat = FUNC2();
		if (seat) {
			struct sway_workspace *ws = FUNC3(seat);
			if (ws != NULL) {
				output = ws->output;
			}
		}
		if (!output || output == root->noop_output) {
			if (!root->outputs->length) {
				FUNC4(SWAY_ERROR,
						"no output to auto-assign layer surface '%s' to",
						layer_surface->namespace);
				FUNC7(layer_surface);
				return;
			}
			output = root->outputs->items[0];
		}
		layer_surface->output = output->wlr_output;
	}

	struct sway_layer_surface *sway_layer =
		FUNC1(1, sizeof(struct sway_layer_surface));
	if (!sway_layer) {
		return;
	}

	sway_layer->surface_commit.notify = handle_surface_commit;
	FUNC6(&layer_surface->surface->events.commit,
		&sway_layer->surface_commit);

	sway_layer->destroy.notify = handle_destroy;
	FUNC6(&layer_surface->events.destroy, &sway_layer->destroy);
	sway_layer->map.notify = handle_map;
	FUNC6(&layer_surface->events.map, &sway_layer->map);
	sway_layer->unmap.notify = handle_unmap;
	FUNC6(&layer_surface->events.unmap, &sway_layer->unmap);
	sway_layer->new_popup.notify = handle_new_popup;
	FUNC6(&layer_surface->events.new_popup, &sway_layer->new_popup);

	sway_layer->layer_surface = layer_surface;
	layer_surface->data = sway_layer;

	struct sway_output *output = layer_surface->output->data;
	sway_layer->output_destroy.notify = handle_output_destroy;
	FUNC6(&output->events.destroy, &sway_layer->output_destroy);

	FUNC5(&output->layers[layer_surface->client_pending.layer],
			&sway_layer->link);

	// Temporarily set the layer's current state to client_pending
	// So that we can easily arrange it
	struct wlr_layer_surface_v1_state old_state = layer_surface->current;
	layer_surface->current = layer_surface->client_pending;
	FUNC0(output);
	layer_surface->current = old_state;
}