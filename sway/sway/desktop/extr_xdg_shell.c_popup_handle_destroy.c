
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl_listener {int dummy; } ;
struct sway_xdg_popup {int child; } ;


 int destroy ;
 struct sway_xdg_popup* popup ;
 int view_child_destroy (int *) ;
 struct sway_xdg_popup* wl_container_of (struct wl_listener*,int ,int ) ;

__attribute__((used)) static void popup_handle_destroy(struct wl_listener *listener, void *data) {
 struct sway_xdg_popup *popup = wl_container_of(listener, popup, destroy);
 view_child_destroy(&popup->child);
}
