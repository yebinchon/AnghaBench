
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sway_seat {int cursor; struct seatop_move_tiling_event* seatop_data; } ;
struct sway_container {int dummy; } ;
struct seatop_move_tiling_event {int threshold_reached; } ;


 int cursor_set_image (int ,char*,int *) ;
 int seatop_begin_move_tiling_threshold (struct sway_seat*,struct sway_container*) ;

void seatop_begin_move_tiling(struct sway_seat *seat,
  struct sway_container *con) {
 seatop_begin_move_tiling_threshold(seat, con);
 struct seatop_move_tiling_event *e = seat->seatop_data;
 if (e) {
  e->threshold_reached = 1;
  cursor_set_image(seat->cursor, "grab", ((void*)0));
 }
}
