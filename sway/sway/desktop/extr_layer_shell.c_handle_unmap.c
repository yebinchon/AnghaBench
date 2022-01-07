
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl_listener {int dummy; } ;
struct sway_layer_surface {int dummy; } ;


 struct sway_layer_surface* sway_layer ;
 int unmap (struct sway_layer_surface*) ;
 struct sway_layer_surface* wl_container_of (struct wl_listener*,int ,int (*) (struct sway_layer_surface*)) ;

__attribute__((used)) static void handle_unmap(struct wl_listener *listener, void *data) {
 struct sway_layer_surface *sway_layer = wl_container_of(
   listener, sway_layer, unmap);
 unmap(sway_layer);
}
