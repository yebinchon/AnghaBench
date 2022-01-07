
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sway_view {TYPE_1__* wlr_xwayland_surface; } ;
typedef enum sway_view_prop { ____Placeholder_sway_view_prop } sway_view_prop ;
struct TYPE_2__ {char const* title; char const* class; char const* instance; char const* role; } ;






 int * xwayland_view_from_view (struct sway_view*) ;

__attribute__((used)) static const char *get_string_prop(struct sway_view *view, enum sway_view_prop prop) {
 if (xwayland_view_from_view(view) == ((void*)0)) {
  return ((void*)0);
 }
 switch (prop) {
 case 129:
  return view->wlr_xwayland_surface->title;
 case 131:
  return view->wlr_xwayland_surface->class;
 case 130:
  return view->wlr_xwayland_surface->instance;
 case 128:
  return view->wlr_xwayland_surface->role;
 default:
  return ((void*)0);
 }
}
