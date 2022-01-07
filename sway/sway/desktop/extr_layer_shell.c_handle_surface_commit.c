
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wlr_output {struct sway_output* data; } ;
struct TYPE_2__ {size_t layer; } ;
struct wlr_layer_surface_v1 {int surface; TYPE_1__ current; struct wlr_output* output; } ;
struct wlr_box {int y; int x; } ;
struct wl_listener {int dummy; } ;
struct sway_output {int * layers; } ;
struct sway_layer_surface {size_t layer; struct wlr_box geo; int link; struct wlr_layer_surface_v1* layer_surface; } ;


 int arrange_layers (struct sway_output*) ;
 struct sway_layer_surface* layer ;
 scalar_t__ memcmp (struct wlr_box*,struct wlr_box*,int) ;
 int output_damage_surface (struct sway_output*,int ,int ,int ,int) ;
 int surface_commit ;
 int transaction_commit_dirty () ;
 struct sway_layer_surface* wl_container_of (struct wl_listener*,int ,int ) ;
 int wl_list_insert (int *,int *) ;
 int wl_list_remove (int *) ;

__attribute__((used)) static void handle_surface_commit(struct wl_listener *listener, void *data) {
 struct sway_layer_surface *layer =
  wl_container_of(listener, layer, surface_commit);
 struct wlr_layer_surface_v1 *layer_surface = layer->layer_surface;
 struct wlr_output *wlr_output = layer_surface->output;
 if (wlr_output == ((void*)0)) {
  return;
 }

 struct sway_output *output = wlr_output->data;
 struct wlr_box old_geo = layer->geo;
 arrange_layers(output);

 bool geo_changed =
  memcmp(&old_geo, &layer->geo, sizeof(struct wlr_box)) != 0;
 bool layer_changed = layer->layer != layer_surface->current.layer;
 if (layer_changed) {
  wl_list_remove(&layer->link);
  wl_list_insert(&output->layers[layer_surface->current.layer],
   &layer->link);
  layer->layer = layer_surface->current.layer;
 }
 if (geo_changed || layer_changed) {
  output_damage_surface(output, old_geo.x, old_geo.y,
   layer_surface->surface, 1);
  output_damage_surface(output, layer->geo.x, layer->geo.y,
   layer_surface->surface, 1);
 } else {
  output_damage_surface(output, layer->geo.x, layer->geo.y,
   layer_surface->surface, 0);
 }

 transaction_commit_dirty();
}
