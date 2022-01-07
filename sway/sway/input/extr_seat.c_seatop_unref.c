
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sway_seat {TYPE_1__* seatop_impl; } ;
struct sway_container {int dummy; } ;
struct TYPE_2__ {int (* unref ) (struct sway_seat*,struct sway_container*) ;} ;


 int stub1 (struct sway_seat*,struct sway_container*) ;

void seatop_unref(struct sway_seat *seat, struct sway_container *con) {
 if (seat->seatop_impl->unref) {
  seat->seatop_impl->unref(seat, con);
 }
}
