
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct sway_view {TYPE_2__* wlr_xwayland_surface; } ;
typedef enum sway_view_prop { ____Placeholder_sway_view_prop } sway_view_prop ;
struct TYPE_4__ {int * window_type; TYPE_1__* parent; int window_id; } ;
struct TYPE_3__ {int window_id; } ;





 int * xwayland_view_from_view (struct sway_view*) ;

__attribute__((used)) static uint32_t get_int_prop(struct sway_view *view, enum sway_view_prop prop) {
 if (xwayland_view_from_view(view) == ((void*)0)) {
  return 0;
 }
 switch (prop) {
 case 128:
  return view->wlr_xwayland_surface->window_id;
 case 129:
  if (view->wlr_xwayland_surface->parent) {
   return view->wlr_xwayland_surface->parent->window_id;
  }
  return 0;
 case 130:
  return *view->wlr_xwayland_surface->window_type;
 default:
  return 0;
 }
}
