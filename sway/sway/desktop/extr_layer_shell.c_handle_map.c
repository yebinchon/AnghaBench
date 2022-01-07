
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct wl_listener {int dummy; } ;
struct sway_output {int dummy; } ;
struct TYPE_5__ {int y; int x; } ;
struct sway_layer_surface {TYPE_1__* layer_surface; TYPE_2__ geo; } ;
struct TYPE_6__ {struct sway_output* data; } ;
struct TYPE_4__ {TYPE_3__* output; int surface; } ;


 int cursor_rebase_all () ;
 int map ;
 int output_damage_surface (struct sway_output*,int ,int ,int ,int) ;
 struct sway_layer_surface* sway_layer ;
 struct sway_layer_surface* wl_container_of (struct wl_listener*,int ,int ) ;
 int wlr_surface_send_enter (int ,TYPE_3__*) ;

__attribute__((used)) static void handle_map(struct wl_listener *listener, void *data) {
 struct sway_layer_surface *sway_layer = wl_container_of(listener,
   sway_layer, map);
 struct sway_output *output = sway_layer->layer_surface->output->data;
 output_damage_surface(output, sway_layer->geo.x, sway_layer->geo.y,
  sway_layer->layer_surface->surface, 1);
 wlr_surface_send_enter(sway_layer->layer_surface->surface,
  sway_layer->layer_surface->output);
 cursor_rebase_all();
}
