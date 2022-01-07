
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wlr_xdg_surface {scalar_t__ role; scalar_t__ toplevel; } ;
struct sway_view {struct wlr_xdg_surface* wlr_xdg_surface; } ;


 scalar_t__ WLR_XDG_SURFACE_ROLE_TOPLEVEL ;
 int wlr_xdg_toplevel_send_close (struct wlr_xdg_surface*) ;
 int * xdg_shell_view_from_view (struct sway_view*) ;

__attribute__((used)) static void _close(struct sway_view *view) {
 if (xdg_shell_view_from_view(view) == ((void*)0)) {
  return;
 }
 struct wlr_xdg_surface *surface = view->wlr_xdg_surface;
 if (surface->role == WLR_XDG_SURFACE_ROLE_TOPLEVEL
   && surface->toplevel) {
  wlr_xdg_toplevel_send_close(surface);
 }
}
