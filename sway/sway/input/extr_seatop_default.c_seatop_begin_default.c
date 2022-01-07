
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sway_seat {struct seatop_default_event* seatop_data; int * seatop_impl; } ;
struct seatop_default_event {int dummy; } ;


 struct seatop_default_event* calloc (int,int) ;
 int seatop_end (struct sway_seat*) ;
 int seatop_impl ;
 int seatop_rebase (struct sway_seat*,int ) ;
 int sway_assert (struct seatop_default_event*,char*) ;

void seatop_begin_default(struct sway_seat *seat) {
 seatop_end(seat);

 struct seatop_default_event *e =
  calloc(1, sizeof(struct seatop_default_event));
 sway_assert(e, "Unable to allocate seatop_default_event");
 seat->seatop_impl = &seatop_impl;
 seat->seatop_data = e;

 seatop_rebase(seat, 0);
}
