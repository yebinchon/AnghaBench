
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_9__ ;
typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int left; int bottom; int right; int top; } ;
struct wlr_layer_surface_v1_state {size_t layer; TYPE_1__ margin; int desired_height; int desired_width; } ;
struct TYPE_14__ {int new_popup; int unmap; int map; int destroy; } ;
struct wlr_layer_surface_v1 {struct wlr_layer_surface_v1_state current; struct wlr_layer_surface_v1_state client_pending; TYPE_6__* output; struct sway_layer_surface* data; TYPE_5__ events; TYPE_4__* surface; int namespace; } ;
struct wl_listener {int dummy; } ;
struct sway_workspace {struct sway_output* output; } ;
struct sway_seat {int dummy; } ;
struct TYPE_16__ {int destroy; } ;
struct sway_output {int * layers; TYPE_7__ events; TYPE_6__* wlr_output; } ;
struct TYPE_17__ {int notify; } ;
struct sway_layer_surface {int link; TYPE_8__ output_destroy; struct wlr_layer_surface_v1* layer_surface; TYPE_8__ new_popup; TYPE_8__ unmap; TYPE_8__ map; TYPE_8__ destroy; TYPE_8__ surface_commit; } ;
struct TYPE_18__ {TYPE_2__* outputs; struct sway_output* noop_output; } ;
struct TYPE_15__ {struct sway_output* data; } ;
struct TYPE_12__ {int commit; } ;
struct TYPE_13__ {TYPE_3__ events; } ;
struct TYPE_11__ {struct sway_output** items; int length; } ;


 int SWAY_DEBUG ;
 int SWAY_ERROR ;
 int arrange_layers (struct sway_output*) ;
 struct sway_layer_surface* calloc (int,int) ;
 int handle_destroy ;
 int handle_map ;
 int handle_new_popup ;
 int handle_output_destroy ;
 int handle_surface_commit ;
 int handle_unmap ;
 struct sway_seat* input_manager_get_default_seat () ;
 TYPE_9__* root ;
 struct sway_workspace* seat_get_focused_workspace (struct sway_seat*) ;
 int sway_log (int ,char*,int ,...) ;
 int wl_list_insert (int *,int *) ;
 int wl_signal_add (int *,TYPE_8__*) ;
 int wlr_layer_surface_v1_close (struct wlr_layer_surface_v1*) ;

void handle_layer_shell_surface(struct wl_listener *listener, void *data) {
 struct wlr_layer_surface_v1 *layer_surface = data;
 sway_log(SWAY_DEBUG, "new layer surface: namespace %s layer %d anchor %d "
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

  struct sway_output *output = ((void*)0);
  struct sway_seat *seat = input_manager_get_default_seat();
  if (seat) {
   struct sway_workspace *ws = seat_get_focused_workspace(seat);
   if (ws != ((void*)0)) {
    output = ws->output;
   }
  }
  if (!output || output == root->noop_output) {
   if (!root->outputs->length) {
    sway_log(SWAY_ERROR,
      "no output to auto-assign layer surface '%s' to",
      layer_surface->namespace);
    wlr_layer_surface_v1_close(layer_surface);
    return;
   }
   output = root->outputs->items[0];
  }
  layer_surface->output = output->wlr_output;
 }

 struct sway_layer_surface *sway_layer =
  calloc(1, sizeof(struct sway_layer_surface));
 if (!sway_layer) {
  return;
 }

 sway_layer->surface_commit.notify = handle_surface_commit;
 wl_signal_add(&layer_surface->surface->events.commit,
  &sway_layer->surface_commit);

 sway_layer->destroy.notify = handle_destroy;
 wl_signal_add(&layer_surface->events.destroy, &sway_layer->destroy);
 sway_layer->map.notify = handle_map;
 wl_signal_add(&layer_surface->events.map, &sway_layer->map);
 sway_layer->unmap.notify = handle_unmap;
 wl_signal_add(&layer_surface->events.unmap, &sway_layer->unmap);
 sway_layer->new_popup.notify = handle_new_popup;
 wl_signal_add(&layer_surface->events.new_popup, &sway_layer->new_popup);

 sway_layer->layer_surface = layer_surface;
 layer_surface->data = sway_layer;

 struct sway_output *output = layer_surface->output->data;
 sway_layer->output_destroy.notify = handle_output_destroy;
 wl_signal_add(&output->events.destroy, &sway_layer->output_destroy);

 wl_list_insert(&output->layers[layer_surface->client_pending.layer],
   &sway_layer->link);



 struct wlr_layer_surface_v1_state old_state = layer_surface->current;
 layer_surface->current = layer_surface->client_pending;
 arrange_layers(output);
 layer_surface->current = old_state;
}
