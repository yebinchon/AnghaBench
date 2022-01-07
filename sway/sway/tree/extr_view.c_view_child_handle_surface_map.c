
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl_listener {int dummy; } ;
struct sway_view_child {int mapped; } ;


 struct sway_view_child* child ;
 int surface_map ;
 int view_child_damage (struct sway_view_child*,int) ;
 struct sway_view_child* wl_container_of (struct wl_listener*,int ,int ) ;

__attribute__((used)) static void view_child_handle_surface_map(struct wl_listener *listener,
  void *data) {
 struct sway_view_child *child =
  wl_container_of(listener, child, surface_map);
 child->mapped = 1;
 view_child_damage(child, 1);
}
