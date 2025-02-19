
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sway_seat {int wlr_seat; struct seatop_move_floating_event* seatop_data; int * seatop_impl; struct sway_cursor* cursor; } ;
struct sway_cursor {TYPE_1__* cursor; } ;
struct sway_container {scalar_t__ y; scalar_t__ x; } ;
struct seatop_move_floating_event {scalar_t__ dy; scalar_t__ dx; struct sway_container* con; } ;
struct TYPE_2__ {scalar_t__ y; scalar_t__ x; } ;


 struct seatop_move_floating_event* calloc (int,int) ;
 int container_raise_floating (struct sway_container*) ;
 int cursor_set_image (struct sway_cursor*,char*,int *) ;
 int seatop_end (struct sway_seat*) ;
 int seatop_impl ;
 int wlr_seat_pointer_clear_focus (int ) ;

void seatop_begin_move_floating(struct sway_seat *seat,
  struct sway_container *con) {
 seatop_end(seat);

 struct sway_cursor *cursor = seat->cursor;
 struct seatop_move_floating_event *e =
  calloc(1, sizeof(struct seatop_move_floating_event));
 if (!e) {
  return;
 }
 e->con = con;
 e->dx = cursor->cursor->x - con->x;
 e->dy = cursor->cursor->y - con->y;

 seat->seatop_impl = &seatop_impl;
 seat->seatop_data = e;

 container_raise_floating(con);

 cursor_set_image(cursor, "grab", ((void*)0));
 wlr_seat_pointer_clear_focus(seat->wlr_seat);
}
