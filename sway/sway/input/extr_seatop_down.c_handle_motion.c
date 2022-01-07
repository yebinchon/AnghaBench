
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct sway_seat {int wlr_seat; TYPE_3__* cursor; struct seatop_down_event* seatop_data; } ;
struct sway_container {TYPE_1__* view; } ;
struct seatop_down_event {double ref_lx; double ref_ly; double ref_con_lx; double ref_con_ly; struct sway_container* con; } ;
struct TYPE_6__ {TYPE_2__* cursor; } ;
struct TYPE_5__ {double x; double y; } ;
struct TYPE_4__ {int surface; } ;


 scalar_t__ seat_is_input_allowed (struct sway_seat*,int ) ;
 int wlr_seat_pointer_notify_motion (int ,int ,double,double) ;

__attribute__((used)) static void handle_motion(struct sway_seat *seat, uint32_t time_msec,
  double dx, double dy) {
 struct seatop_down_event *e = seat->seatop_data;
 struct sway_container *con = e->con;
 if (seat_is_input_allowed(seat, con->view->surface)) {
  double moved_x = seat->cursor->cursor->x - e->ref_lx;
  double moved_y = seat->cursor->cursor->y - e->ref_ly;
  double sx = e->ref_con_lx + moved_x;
  double sy = e->ref_con_ly + moved_y;
  wlr_seat_pointer_notify_motion(seat->wlr_seat, time_msec, sx, sy);
 }
}
