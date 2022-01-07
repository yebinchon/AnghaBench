
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wlr_xdg_surface {int dummy; } ;
struct sway_view {struct wlr_xdg_surface* wlr_xdg_surface; } ;


 int wlr_xdg_toplevel_set_fullscreen (struct wlr_xdg_surface*,int) ;
 int * xdg_shell_view_from_view (struct sway_view*) ;

__attribute__((used)) static void set_fullscreen(struct sway_view *view, bool fullscreen) {
 if (xdg_shell_view_from_view(view) == ((void*)0)) {
  return;
 }
 struct wlr_xdg_surface *surface = view->wlr_xdg_surface;
 wlr_xdg_toplevel_set_fullscreen(surface, fullscreen);
}
