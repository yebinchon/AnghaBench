
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct wlr_xwayland_surface {int surface; int y; int x; } ;
struct wl_listener {int dummy; } ;
struct TYPE_5__ {int link; } ;
struct sway_xwayland_unmanaged {TYPE_1__ commit; int link; struct wlr_xwayland_surface* wlr_xwayland_surface; } ;
struct sway_seat {TYPE_3__* wlr_seat; } ;
struct sway_node {int dummy; } ;
struct TYPE_8__ {int node; } ;
struct TYPE_6__ {int focused_surface; } ;
struct TYPE_7__ {TYPE_2__ keyboard_state; } ;


 int desktop_damage_surface (int ,int ,int ,int) ;
 struct sway_seat* input_manager_current_seat () ;
 TYPE_4__* root ;
 struct sway_node* seat_get_focus_inactive (struct sway_seat*,int *) ;
 int seat_set_focus (struct sway_seat*,struct sway_node*) ;
 struct sway_xwayland_unmanaged* surface ;
 int unmap ;
 struct sway_xwayland_unmanaged* wl_container_of (struct wl_listener*,int ,int ) ;
 int wl_list_remove (int *) ;

__attribute__((used)) static void unmanaged_handle_unmap(struct wl_listener *listener, void *data) {
 struct sway_xwayland_unmanaged *surface =
  wl_container_of(listener, surface, unmap);
 struct wlr_xwayland_surface *xsurface = surface->wlr_xwayland_surface;
 desktop_damage_surface(xsurface->surface, xsurface->x, xsurface->y, 1);
 wl_list_remove(&surface->link);
 wl_list_remove(&surface->commit.link);

 struct sway_seat *seat = input_manager_current_seat();
 if (seat->wlr_seat->keyboard_state.focused_surface ==
   xsurface->surface) {

  struct sway_node *previous = seat_get_focus_inactive(seat, &root->node);
  if (previous) {

   seat_set_focus(seat, ((void*)0));
   seat_set_focus(seat, previous);
  }
 }
}
