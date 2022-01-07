
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sway_seat {TYPE_1__* seatop_impl; } ;
struct TYPE_2__ {int allow_set_cursor; } ;



bool seatop_allows_set_cursor(struct sway_seat *seat) {
 return seat->seatop_impl->allow_set_cursor;
}
