
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wlr_subsurface {int dummy; } ;
struct wl_listener {int dummy; } ;
struct sway_view_child {int dummy; } ;


 struct sway_view_child* child ;
 int surface_new_subsurface ;
 int view_child_subsurface_create (struct sway_view_child*,struct wlr_subsurface*) ;
 struct sway_view_child* wl_container_of (struct wl_listener*,int ,int ) ;

__attribute__((used)) static void view_child_handle_surface_new_subsurface(
  struct wl_listener *listener, void *data) {
 struct sway_view_child *child =
  wl_container_of(listener, child, surface_new_subsurface);
 struct wlr_subsurface *subsurface = data;
 view_child_subsurface_create(child, subsurface);
}
