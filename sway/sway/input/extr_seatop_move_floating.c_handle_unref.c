
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sway_seat {struct seatop_move_floating_event* seatop_data; } ;
struct sway_container {int dummy; } ;
struct seatop_move_floating_event {struct sway_container* con; } ;


 int seatop_begin_default (struct sway_seat*) ;

__attribute__((used)) static void handle_unref(struct sway_seat *seat, struct sway_container *con) {
 struct seatop_move_floating_event *e = seat->seatop_data;
 if (e->con == con) {
  seatop_begin_default(seat);
 }
}
