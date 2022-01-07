
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sway_seat {int dummy; } ;
struct sway_container {int node; } ;


 int seat_set_focus (struct sway_seat*,int *) ;

void seat_set_focus_container(struct sway_seat *seat,
  struct sway_container *con) {
 seat_set_focus(seat, con ? &con->node : ((void*)0));
}
