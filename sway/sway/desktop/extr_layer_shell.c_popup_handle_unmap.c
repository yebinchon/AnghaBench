
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl_listener {int dummy; } ;
struct sway_layer_popup {int dummy; } ;


 struct sway_layer_popup* popup ;
 int popup_damage (struct sway_layer_popup*,int) ;
 int unmap ;
 struct sway_layer_popup* wl_container_of (struct wl_listener*,int ,int ) ;

__attribute__((used)) static void popup_handle_unmap(struct wl_listener *listener, void *data) {
 struct sway_layer_popup *popup = wl_container_of(listener, popup, unmap);
 popup_damage(popup, 1);
}
