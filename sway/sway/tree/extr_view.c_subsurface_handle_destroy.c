
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl_listener {int dummy; } ;
struct sway_view_child {int dummy; } ;
struct sway_subsurface {struct sway_view_child child; } ;


 int destroy ;
 struct sway_subsurface* subsurface ;
 int view_child_destroy (struct sway_view_child*) ;
 struct sway_subsurface* wl_container_of (struct wl_listener*,int ,int ) ;

__attribute__((used)) static void subsurface_handle_destroy(struct wl_listener *listener,
  void *data) {
 struct sway_subsurface *subsurface =
  wl_container_of(listener, subsurface, destroy);
 struct sway_view_child *child = &subsurface->child;
 view_child_destroy(child);
}
