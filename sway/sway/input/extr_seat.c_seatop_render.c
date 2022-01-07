
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sway_seat {TYPE_1__* seatop_impl; } ;
struct sway_output {int dummy; } ;
typedef int pixman_region32_t ;
struct TYPE_2__ {int (* render ) (struct sway_seat*,struct sway_output*,int *) ;} ;


 int stub1 (struct sway_seat*,struct sway_output*,int *) ;

void seatop_render(struct sway_seat *seat, struct sway_output *output,
  pixman_region32_t *damage) {
 if (seat->seatop_impl->render) {
  seat->seatop_impl->render(seat, output, damage);
 }
}
