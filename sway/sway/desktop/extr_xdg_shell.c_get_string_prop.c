
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sway_view {TYPE_2__* wlr_xdg_surface; } ;
typedef enum sway_view_prop { ____Placeholder_sway_view_prop } sway_view_prop ;
struct TYPE_4__ {TYPE_1__* toplevel; } ;
struct TYPE_3__ {char const* title; char const* app_id; } ;




 int * xdg_shell_view_from_view (struct sway_view*) ;

__attribute__((used)) static const char *get_string_prop(struct sway_view *view,
  enum sway_view_prop prop) {
 if (xdg_shell_view_from_view(view) == ((void*)0)) {
  return ((void*)0);
 }
 switch (prop) {
 case 128:
  return view->wlr_xdg_surface->toplevel->title;
 case 129:
  return view->wlr_xdg_surface->toplevel->app_id;
 default:
  return ((void*)0);
 }
}
