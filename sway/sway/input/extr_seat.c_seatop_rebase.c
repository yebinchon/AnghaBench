
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct sway_seat {TYPE_1__* seatop_impl; } ;
struct TYPE_2__ {int (* rebase ) (struct sway_seat*,int ) ;} ;


 int stub1 (struct sway_seat*,int ) ;

void seatop_rebase(struct sway_seat *seat, uint32_t time_msec) {
 if (seat->seatop_impl->rebase) {
  seat->seatop_impl->rebase(seat, time_msec);
 }
}
