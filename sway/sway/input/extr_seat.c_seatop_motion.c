
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct sway_seat {TYPE_1__* seatop_impl; } ;
struct TYPE_2__ {int (* motion ) (struct sway_seat*,int ,double,double) ;} ;


 int stub1 (struct sway_seat*,int ,double,double) ;

void seatop_motion(struct sway_seat *seat, uint32_t time_msec,
  double dx, double dy) {
 if (seat->seatop_impl->motion) {
  seat->seatop_impl->motion(seat, time_msec, dx, dy);
 }
}
