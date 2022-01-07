
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wlr_xdg_popup {int dummy; } ;
struct wl_listener {int dummy; } ;
struct sway_layer_surface {int dummy; } ;


 int LAYER_PARENT_LAYER ;
 int create_popup (struct wlr_xdg_popup*,int ,struct sway_layer_surface*) ;
 int new_popup ;
 struct sway_layer_surface* sway_layer_surface ;
 struct sway_layer_surface* wl_container_of (struct wl_listener*,int ,int ) ;

__attribute__((used)) static void handle_new_popup(struct wl_listener *listener, void *data) {
 struct sway_layer_surface *sway_layer_surface =
  wl_container_of(listener, sway_layer_surface, new_popup);
 struct wlr_xdg_popup *wlr_popup = data;
 create_popup(wlr_popup, LAYER_PARENT_LAYER, sway_layer_surface);
}
