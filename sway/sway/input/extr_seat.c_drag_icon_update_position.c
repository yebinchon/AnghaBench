
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wlr_touch_point {int dummy; } ;
struct wlr_drag_icon {TYPE_2__* drag; } ;
struct wlr_cursor {int y; int x; } ;
struct sway_seat {int touch_y; int touch_x; int wlr_seat; TYPE_1__* cursor; } ;
struct sway_drag_icon {int y; int x; struct sway_seat* seat; struct wlr_drag_icon* wlr_drag_icon; } ;
struct TYPE_4__ {int grab_type; int touch_id; } ;
struct TYPE_3__ {struct wlr_cursor* cursor; } ;





 int drag_icon_damage_whole (struct sway_drag_icon*) ;
 struct wlr_touch_point* wlr_seat_touch_get_point (int ,int ) ;

void drag_icon_update_position(struct sway_drag_icon *icon) {
 drag_icon_damage_whole(icon);

 struct wlr_drag_icon *wlr_icon = icon->wlr_drag_icon;
 struct sway_seat *seat = icon->seat;
 struct wlr_cursor *cursor = seat->cursor->cursor;
 switch (wlr_icon->drag->grab_type) {
 case 130:
  return;
 case 129:
  icon->x = cursor->x;
  icon->y = cursor->y;
  break;
 case 128:;
  struct wlr_touch_point *point =
   wlr_seat_touch_get_point(seat->wlr_seat, wlr_icon->drag->touch_id);
  if (point == ((void*)0)) {
   return;
  }
  icon->x = seat->touch_x;
  icon->y = seat->touch_y;
 }

 drag_icon_damage_whole(icon);
}
