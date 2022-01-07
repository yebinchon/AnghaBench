
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct wlr_output {int dummy; } ;
struct wl_listener {int dummy; } ;
struct sway_layer_surface {TYPE_1__* layer_surface; } ;
struct sway_layer_popup {TYPE_3__* wlr_popup; } ;
struct TYPE_6__ {TYPE_2__* base; } ;
struct TYPE_5__ {int surface; } ;
struct TYPE_4__ {struct wlr_output* output; } ;


 int map ;
 struct sway_layer_popup* popup ;
 int popup_damage (struct sway_layer_popup*,int) ;
 struct sway_layer_surface* popup_get_layer (struct sway_layer_popup*) ;
 struct sway_layer_popup* wl_container_of (struct wl_listener*,int ,int ) ;
 int wlr_surface_send_enter (int ,struct wlr_output*) ;

__attribute__((used)) static void popup_handle_map(struct wl_listener *listener, void *data) {
 struct sway_layer_popup *popup = wl_container_of(listener, popup, map);
 struct sway_layer_surface *layer = popup_get_layer(popup);
 struct wlr_output *wlr_output = layer->layer_surface->output;
 wlr_surface_send_enter(popup->wlr_popup->base->surface, wlr_output);
 popup_damage(popup, 1);
}
