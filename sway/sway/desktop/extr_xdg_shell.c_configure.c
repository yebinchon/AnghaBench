
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct sway_xdg_shell_view {int dummy; } ;
struct sway_view {int wlr_xdg_surface; } ;


 int wlr_xdg_toplevel_set_size (int ,int,int) ;
 struct sway_xdg_shell_view* xdg_shell_view_from_view (struct sway_view*) ;

__attribute__((used)) static uint32_t configure(struct sway_view *view, double lx, double ly,
  int width, int height) {
 struct sway_xdg_shell_view *xdg_shell_view =
  xdg_shell_view_from_view(view);
 if (xdg_shell_view == ((void*)0)) {
  return 0;
 }
 return wlr_xdg_toplevel_set_size(view->wlr_xdg_surface, width, height);
}
