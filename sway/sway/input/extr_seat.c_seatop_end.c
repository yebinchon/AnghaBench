
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sway_seat {TYPE_1__* seatop_impl; int * seatop_data; } ;
struct TYPE_2__ {int (* end ) (struct sway_seat*) ;} ;


 int free (int *) ;
 int stub1 (struct sway_seat*) ;

void seatop_end(struct sway_seat *seat) {
 if (seat->seatop_impl && seat->seatop_impl->end) {
  seat->seatop_impl->end(seat);
 }
 free(seat->seatop_data);
 seat->seatop_data = ((void*)0);
 seat->seatop_impl = ((void*)0);
}
