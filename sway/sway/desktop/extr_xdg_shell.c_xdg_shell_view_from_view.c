
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sway_xdg_shell_view {int dummy; } ;
struct sway_view {scalar_t__ type; } ;


 scalar_t__ SWAY_VIEW_XDG_SHELL ;
 int sway_assert (int,char*) ;

__attribute__((used)) static struct sway_xdg_shell_view *xdg_shell_view_from_view(
  struct sway_view *view) {
 if (!sway_assert(view->type == SWAY_VIEW_XDG_SHELL,
   "Expected xdg_shell view")) {
  return ((void*)0);
 }
 return (struct sway_xdg_shell_view *)view;
}
