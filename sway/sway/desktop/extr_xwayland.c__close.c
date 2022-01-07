
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sway_view {int wlr_xwayland_surface; } ;


 int wlr_xwayland_surface_close (int ) ;
 int * xwayland_view_from_view (struct sway_view*) ;

__attribute__((used)) static void _close(struct sway_view *view) {
 if (xwayland_view_from_view(view) == ((void*)0)) {
  return;
 }
 wlr_xwayland_surface_close(view->wlr_xwayland_surface);
}
