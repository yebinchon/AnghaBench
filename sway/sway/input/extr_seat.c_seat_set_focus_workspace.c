
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sway_workspace {int node; } ;
struct sway_seat {int dummy; } ;


 int seat_set_focus (struct sway_seat*,int *) ;

void seat_set_focus_workspace(struct sway_seat *seat,
  struct sway_workspace *ws) {
 seat_set_focus(seat, ws ? &ws->node : ((void*)0));
}
