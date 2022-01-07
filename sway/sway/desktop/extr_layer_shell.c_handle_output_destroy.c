
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct wl_listener {int dummy; } ;
struct wl_client {int dummy; } ;
struct sway_seat {struct wl_client* exclusive_client; } ;
struct TYPE_4__ {int link; } ;
struct sway_layer_surface {TYPE_2__* layer_surface; int link; TYPE_1__ output_destroy; } ;
struct TYPE_5__ {int * output; int resource; } ;


 struct sway_layer_surface* find_any_layer_by_client (struct wl_client*,int *) ;
 struct sway_seat* input_manager_get_default_seat () ;
 int output_destroy ;
 int seat_set_focus_layer (struct sway_seat*,TYPE_2__*) ;
 struct sway_layer_surface* sway_layer ;
 struct sway_layer_surface* wl_container_of (struct wl_listener*,int ,int ) ;
 int wl_list_init (int *) ;
 int wl_list_remove (int *) ;
 struct wl_client* wl_resource_get_client (int ) ;
 int wlr_layer_surface_v1_close (TYPE_2__*) ;

__attribute__((used)) static void handle_output_destroy(struct wl_listener *listener, void *data) {
 struct sway_layer_surface *sway_layer =
  wl_container_of(listener, sway_layer, output_destroy);


 struct sway_seat *seat = input_manager_get_default_seat();
 struct wl_client *client =
  wl_resource_get_client(sway_layer->layer_surface->resource);
 bool set_focus = seat->exclusive_client == client;

 wl_list_remove(&sway_layer->output_destroy.link);
 wl_list_remove(&sway_layer->link);
 wl_list_init(&sway_layer->link);

 if (set_focus) {
  struct sway_layer_surface *layer =
   find_any_layer_by_client(client, sway_layer->layer_surface->output);
  if (layer) {
   seat_set_focus_layer(seat, layer->layer_surface);
  }
 }

 sway_layer->layer_surface->output = ((void*)0);
 wlr_layer_surface_v1_close(sway_layer->layer_surface);
}
