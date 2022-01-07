
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sway_workspace {int dummy; } ;
struct sway_seat {int dummy; } ;
struct sway_output {TYPE_1__* workspaces; int node; } ;
struct sway_node {struct sway_workspace* sway_workspace; } ;
struct TYPE_2__ {struct sway_workspace** items; int length; } ;


 struct sway_seat* input_manager_current_seat () ;
 struct sway_node* seat_get_active_tiling_child (struct sway_seat*,int *) ;

struct sway_workspace *output_get_active_workspace(struct sway_output *output) {
 struct sway_seat *seat = input_manager_current_seat();
 struct sway_node *focus = seat_get_active_tiling_child(seat, &output->node);
 if (!focus) {
  if (!output->workspaces->length) {
   return ((void*)0);
  }
  return output->workspaces->items[0];
 }
 return focus->sway_workspace;
}
