
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sway_xdg_shell_view {int dummy; } ;
struct sway_view {int dummy; } ;


 int free (struct sway_xdg_shell_view*) ;
 struct sway_xdg_shell_view* xdg_shell_view_from_view (struct sway_view*) ;

__attribute__((used)) static void destroy(struct sway_view *view) {
 struct sway_xdg_shell_view *xdg_shell_view =
  xdg_shell_view_from_view(view);
 if (xdg_shell_view == ((void*)0)) {
  return;
 }
 free(xdg_shell_view);
}
