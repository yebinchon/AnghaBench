
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wlr_event_pointer_axis {int dummy; } ;
struct sway_seat {TYPE_1__* seatop_impl; } ;
struct TYPE_2__ {int (* axis ) (struct sway_seat*,struct wlr_event_pointer_axis*) ;} ;


 int stub1 (struct sway_seat*,struct wlr_event_pointer_axis*) ;

void seatop_axis(struct sway_seat *seat, struct wlr_event_pointer_axis *event) {
 if (seat->seatop_impl->axis) {
  seat->seatop_impl->axis(seat, event);
 }
}
