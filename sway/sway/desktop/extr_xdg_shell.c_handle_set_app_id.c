
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl_listener {int dummy; } ;
struct sway_view {int dummy; } ;
struct sway_xdg_shell_view {struct sway_view view; } ;


 int set_app_id ;
 int view_execute_criteria (struct sway_view*) ;
 struct sway_xdg_shell_view* wl_container_of (struct wl_listener*,int ,int ) ;
 struct sway_xdg_shell_view* xdg_shell_view ;

__attribute__((used)) static void handle_set_app_id(struct wl_listener *listener, void *data) {
 struct sway_xdg_shell_view *xdg_shell_view =
  wl_container_of(listener, xdg_shell_view, set_app_id);
 struct sway_view *view = &xdg_shell_view->view;
 view_execute_criteria(view);
}
