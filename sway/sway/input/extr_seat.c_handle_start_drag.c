
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int destroy; int map; int unmap; } ;
struct wlr_drag_icon {TYPE_3__ events; TYPE_2__* surface; struct sway_drag_icon* data; } ;
struct wlr_drag {struct wlr_drag_icon* icon; } ;
struct wl_listener {int dummy; } ;
struct sway_seat {int dummy; } ;
struct TYPE_9__ {int notify; } ;
struct sway_drag_icon {int link; TYPE_4__ destroy; TYPE_4__ map; TYPE_4__ unmap; TYPE_4__ surface_commit; struct wlr_drag_icon* wlr_drag_icon; struct sway_seat* seat; } ;
struct TYPE_10__ {int drag_icons; } ;
struct TYPE_6__ {int commit; } ;
struct TYPE_7__ {TYPE_1__ events; } ;


 int SWAY_ERROR ;
 struct sway_drag_icon* calloc (int,int) ;
 int drag_icon_handle_destroy ;
 int drag_icon_handle_map ;
 int drag_icon_handle_surface_commit ;
 int drag_icon_handle_unmap ;
 int drag_icon_update_position (struct sway_drag_icon*) ;
 TYPE_5__* root ;
 struct sway_seat* seat ;
 int seatop_begin_default (struct sway_seat*) ;
 int start_drag ;
 int sway_log (int ,char*) ;
 struct sway_seat* wl_container_of (struct wl_listener*,int ,int ) ;
 int wl_list_insert (int *,int *) ;
 int wl_signal_add (int *,TYPE_4__*) ;

__attribute__((used)) static void handle_start_drag(struct wl_listener *listener, void *data) {
 struct sway_seat *seat = wl_container_of(listener, seat, start_drag);
 struct wlr_drag *wlr_drag = data;
 struct wlr_drag_icon *wlr_drag_icon = wlr_drag->icon;
 if (wlr_drag_icon == ((void*)0)) {
  return;
 }

 struct sway_drag_icon *icon = calloc(1, sizeof(struct sway_drag_icon));
 if (icon == ((void*)0)) {
  sway_log(SWAY_ERROR, "Allocation failed");
  return;
 }
 icon->seat = seat;
 icon->wlr_drag_icon = wlr_drag_icon;
 wlr_drag_icon->data = icon;

 icon->surface_commit.notify = drag_icon_handle_surface_commit;
 wl_signal_add(&wlr_drag_icon->surface->events.commit, &icon->surface_commit);
 icon->unmap.notify = drag_icon_handle_unmap;
 wl_signal_add(&wlr_drag_icon->events.unmap, &icon->unmap);
 icon->map.notify = drag_icon_handle_map;
 wl_signal_add(&wlr_drag_icon->events.map, &icon->map);
 icon->destroy.notify = drag_icon_handle_destroy;
 wl_signal_add(&wlr_drag_icon->events.destroy, &icon->destroy);

 wl_list_insert(&root->drag_icons, &icon->link);

 drag_icon_update_position(icon);
 seatop_begin_default(seat);
}
