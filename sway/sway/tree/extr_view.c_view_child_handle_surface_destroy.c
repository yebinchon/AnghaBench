
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl_listener {int dummy; } ;
struct sway_view_child {int dummy; } ;


 struct sway_view_child* child ;
 int surface_destroy ;
 int view_child_destroy (struct sway_view_child*) ;
 struct sway_view_child* wl_container_of (struct wl_listener*,int ,int ) ;

__attribute__((used)) static void view_child_handle_surface_destroy(struct wl_listener *listener,
  void *data) {
 struct sway_view_child *child =
  wl_container_of(listener, child, surface_destroy);
 view_child_destroy(child);
}
