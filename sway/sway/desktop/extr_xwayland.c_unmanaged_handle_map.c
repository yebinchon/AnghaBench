
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct wlr_xwayland_surface {TYPE_6__* surface; int y; int x; } ;
struct wlr_xwayland {int dummy; } ;
struct wl_listener {int dummy; } ;
struct TYPE_12__ {int notify; } ;
struct sway_xwayland_unmanaged {int ly; int lx; TYPE_4__ commit; int link; struct wlr_xwayland_surface* wlr_xwayland_surface; } ;
struct sway_seat {int wlr_seat; } ;
struct TYPE_9__ {int prev; } ;
struct TYPE_15__ {TYPE_1__ xwayland_unmanaged; } ;
struct TYPE_10__ {int commit; } ;
struct TYPE_14__ {TYPE_2__ events; } ;
struct TYPE_11__ {struct wlr_xwayland* wlr_xwayland; } ;
struct TYPE_13__ {TYPE_3__ xwayland; } ;


 int desktop_damage_surface (TYPE_6__*,int ,int ,int) ;
 struct sway_seat* input_manager_current_seat () ;
 int map ;
 TYPE_7__* root ;
 int seat_set_focus_surface (struct sway_seat*,TYPE_6__*,int) ;
 TYPE_5__ server ;
 struct sway_xwayland_unmanaged* surface ;
 int unmanaged_handle_commit ;
 struct sway_xwayland_unmanaged* wl_container_of (struct wl_listener*,int ,int ) ;
 int wl_list_insert (int ,int *) ;
 int wl_signal_add (int *,TYPE_4__*) ;
 scalar_t__ wlr_xwayland_or_surface_wants_focus (struct wlr_xwayland_surface*) ;
 int wlr_xwayland_set_seat (struct wlr_xwayland*,int ) ;

__attribute__((used)) static void unmanaged_handle_map(struct wl_listener *listener, void *data) {
 struct sway_xwayland_unmanaged *surface =
  wl_container_of(listener, surface, map);
 struct wlr_xwayland_surface *xsurface = surface->wlr_xwayland_surface;

 wl_list_insert(root->xwayland_unmanaged.prev, &surface->link);

 wl_signal_add(&xsurface->surface->events.commit, &surface->commit);
 surface->commit.notify = unmanaged_handle_commit;

 surface->lx = xsurface->x;
 surface->ly = xsurface->y;
 desktop_damage_surface(xsurface->surface, surface->lx, surface->ly, 1);

 if (wlr_xwayland_or_surface_wants_focus(xsurface)) {
  struct sway_seat *seat = input_manager_current_seat();
  struct wlr_xwayland *xwayland = server.xwayland.wlr_xwayland;
  wlr_xwayland_set_seat(xwayland, seat->wlr_seat);
  seat_set_focus_surface(seat, xsurface->surface, 0);
 }
}
