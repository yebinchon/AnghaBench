
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint64_t ;
typedef scalar_t__ uint32_t ;
struct wlr_surface {int dummy; } ;
struct wlr_input_device {int dummy; } ;
struct sway_cursor {TYPE_4__* seat; TYPE_2__* cursor; int confine; TYPE_1__* active_constraint; } ;
struct TYPE_9__ {int wlr_seat; } ;
struct TYPE_8__ {int relative_pointer_manager; } ;
struct TYPE_7__ {int y; int x; } ;
struct TYPE_6__ {struct wlr_surface* surface; } ;


 int cursor_handle_activity (struct sway_cursor*) ;
 int node_at_coords (TYPE_4__*,int ,int ,struct wlr_surface**,double*,double*) ;
 int seatop_motion (TYPE_4__*,scalar_t__,double,double) ;
 TYPE_3__ server ;
 int wlr_cursor_move (TYPE_2__*,struct wlr_input_device*,double,double) ;
 int wlr_region_confine (int *,double,double,double,double,double*,double*) ;
 int wlr_relative_pointer_manager_v1_send_relative_motion (int ,int ,int,double,double,double,double) ;

__attribute__((used)) static void cursor_motion(struct sway_cursor *cursor, uint32_t time_msec,
  struct wlr_input_device *device, double dx, double dy,
  double dx_unaccel, double dy_unaccel) {
 cursor_handle_activity(cursor);

 wlr_relative_pointer_manager_v1_send_relative_motion(
  server.relative_pointer_manager,
  cursor->seat->wlr_seat, (uint64_t)time_msec * 1000,
  dx, dy, dx_unaccel, dy_unaccel);

 struct wlr_surface *surface = ((void*)0);
 double sx, sy;
 if (cursor->active_constraint) {
  node_at_coords(cursor->seat,
   cursor->cursor->x, cursor->cursor->y, &surface, &sx, &sy);

  if (cursor->active_constraint->surface != surface) {
   return;
  }

  double sx_confined, sy_confined;
  if (!wlr_region_confine(&cursor->confine, sx, sy, sx + dx, sy + dy,
    &sx_confined, &sy_confined)) {
   return;
  }

  dx = sx_confined - sx;
  dy = sy_confined - sy;
 }

 wlr_cursor_move(cursor->cursor, device, dx, dy);

 seatop_motion(cursor->seat, time_msec, dx, dy);
}
