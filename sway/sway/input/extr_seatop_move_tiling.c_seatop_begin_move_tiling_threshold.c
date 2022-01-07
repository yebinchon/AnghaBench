
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sway_seat {int wlr_seat; struct seatop_move_tiling_event* seatop_data; int * seatop_impl; TYPE_1__* cursor; } ;
struct sway_container {int dummy; } ;
struct seatop_move_tiling_event {int ref_ly; int ref_lx; struct sway_container* con; } ;
struct TYPE_4__ {int y; int x; } ;
struct TYPE_3__ {TYPE_2__* cursor; } ;


 struct seatop_move_tiling_event* calloc (int,int) ;
 int container_raise_floating (struct sway_container*) ;
 int seatop_end (struct sway_seat*) ;
 int seatop_impl ;
 int wlr_seat_pointer_clear_focus (int ) ;

void seatop_begin_move_tiling_threshold(struct sway_seat *seat,
  struct sway_container *con) {
 seatop_end(seat);

 struct seatop_move_tiling_event *e =
  calloc(1, sizeof(struct seatop_move_tiling_event));
 if (!e) {
  return;
 }
 e->con = con;
 e->ref_lx = seat->cursor->cursor->x;
 e->ref_ly = seat->cursor->cursor->y;

 seat->seatop_impl = &seatop_impl;
 seat->seatop_data = e;

 container_raise_floating(con);
 wlr_seat_pointer_clear_focus(seat->wlr_seat);
}
