
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wlr_xdg_popup {int dummy; } ;
struct wl_listener {int dummy; } ;
struct sway_xdg_shell_view {int view; } ;


 int new_popup ;
 int popup_create (struct wlr_xdg_popup*,int *) ;
 struct sway_xdg_shell_view* wl_container_of (struct wl_listener*,int ,int ) ;
 struct sway_xdg_shell_view* xdg_shell_view ;

__attribute__((used)) static void handle_new_popup(struct wl_listener *listener, void *data) {
 struct sway_xdg_shell_view *xdg_shell_view =
  wl_container_of(listener, xdg_shell_view, new_popup);
 struct wlr_xdg_popup *wlr_popup = data;
 popup_create(wlr_popup, &xdg_shell_view->view);
}
