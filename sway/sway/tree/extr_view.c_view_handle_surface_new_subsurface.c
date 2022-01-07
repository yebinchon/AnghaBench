
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wlr_subsurface {int dummy; } ;
struct wl_listener {int dummy; } ;
struct sway_view {int dummy; } ;


 int surface_new_subsurface ;
 struct sway_view* view ;
 int view_subsurface_create (struct sway_view*,struct wlr_subsurface*) ;
 struct sway_view* wl_container_of (struct wl_listener*,int ,int ) ;

__attribute__((used)) static void view_handle_surface_new_subsurface(struct wl_listener *listener,
  void *data) {
 struct sway_view *view =
  wl_container_of(listener, view, surface_new_subsurface);
 struct wlr_subsurface *subsurface = data;
 view_subsurface_create(view, subsurface);
}
