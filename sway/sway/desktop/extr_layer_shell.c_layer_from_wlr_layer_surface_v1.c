
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wlr_layer_surface_v1 {struct sway_layer_surface* data; } ;
struct sway_layer_surface {int dummy; } ;



struct sway_layer_surface *layer_from_wlr_layer_surface_v1(
  struct wlr_layer_surface_v1 *layer_surface) {
 return layer_surface->data;
}
