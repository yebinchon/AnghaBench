
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sway_seat {int dummy; } ;
struct sway_node {int dummy; } ;
struct sway_container {int node; scalar_t__ fullscreen_mode; } ;
struct cmd_results {int dummy; } ;
struct TYPE_3__ {struct sway_container* container; struct sway_seat* seat; } ;
struct TYPE_4__ {TYPE_1__ handler_context; } ;


 int CMD_SUCCESS ;
 struct cmd_results* cmd_results_new (int ,int *) ;
 TYPE_2__* config ;
 struct sway_node* node_get_parent (int *) ;
 int seat_consider_warp_to_focus (struct sway_seat*) ;
 int seat_set_focus (struct sway_seat*,struct sway_node*) ;

__attribute__((used)) static struct cmd_results *focus_parent(void) {
 struct sway_seat *seat = config->handler_context.seat;
 struct sway_container *con = config->handler_context.container;
 if (!con || con->fullscreen_mode) {
  return cmd_results_new(CMD_SUCCESS, ((void*)0));
 }
 struct sway_node *parent = node_get_parent(&con->node);
 if (parent) {
  seat_set_focus(seat, parent);
  seat_consider_warp_to_focus(seat);
 }
 return cmd_results_new(CMD_SUCCESS, ((void*)0));
}
