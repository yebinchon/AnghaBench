
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wlr_surface_iterator_func_t ;
struct sway_view {int wlr_xdg_surface; } ;


 int wlr_xdg_surface_for_each_popup (int ,int ,void*) ;
 int * xdg_shell_view_from_view (struct sway_view*) ;

__attribute__((used)) static void for_each_popup(struct sway_view *view,
  wlr_surface_iterator_func_t iterator, void *user_data) {
 if (xdg_shell_view_from_view(view) == ((void*)0)) {
  return;
 }
 wlr_xdg_surface_for_each_popup(view->wlr_xdg_surface, iterator, user_data);
}
