
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sway_workspace {int output; } ;
struct sway_seat {int dummy; } ;
struct sway_output {int dummy; } ;
struct sway_node {scalar_t__ type; struct sway_container* sway_container; } ;
struct sway_container {int dummy; } ;
struct cmd_results {int dummy; } ;
typedef enum wlr_direction { ____Placeholder_wlr_direction } wlr_direction ;
struct TYPE_6__ {struct sway_seat* seat; struct sway_workspace* workspace; struct sway_container* container; struct sway_node* node; } ;
struct TYPE_8__ {TYPE_2__ handler_context; int active; scalar_t__ reading; } ;
struct TYPE_7__ {TYPE_1__* outputs; } ;
struct TYPE_5__ {int length; } ;


 int CMD_DEFER ;
 int CMD_FAILURE ;
 int CMD_INVALID ;
 int CMD_SUCCESS ;
 scalar_t__ N_CONTAINER ;
 scalar_t__ N_WORKSPACE ;
 struct cmd_results* cmd_results_new (int ,char*) ;
 TYPE_4__* config ;
 scalar_t__ container_is_floating (struct sway_container*) ;
 scalar_t__ container_is_floating_or_child (struct sway_container*) ;
 scalar_t__ container_is_scratchpad_hidden (struct sway_container*) ;
 int container_raise_floating (struct sway_container*) ;
 struct cmd_results* focus_child () ;
 struct cmd_results* focus_mode (struct sway_workspace*,struct sway_seat*,int) ;
 struct cmd_results* focus_output (struct sway_seat*,int,char**) ;
 struct cmd_results* focus_parent () ;
 int get_direction_from_next_prev (struct sway_container*,struct sway_seat*,char*,int*) ;
 struct sway_node* get_node_in_output_direction (struct sway_output*,int) ;
 struct sway_node* node_get_in_direction_floating (struct sway_container*,struct sway_seat*,int) ;
 struct sway_node* node_get_in_direction_tiling (struct sway_container*,struct sway_seat*,int,int) ;
 struct sway_output* output_get_in_direction (int ,int) ;
 int parse_direction (char*,int*) ;
 TYPE_3__* root ;
 int root_scratchpad_show (struct sway_container*) ;
 int seat_consider_warp_to_focus (struct sway_seat*) ;
 int seat_set_focus (struct sway_seat*,struct sway_node*) ;
 int seat_set_focus_container (struct sway_seat*,struct sway_container*) ;
 scalar_t__ strcasecmp (char*,char*) ;
 scalar_t__ strcmp (char*,char*) ;
 int sway_assert (struct sway_container*,char*) ;

struct cmd_results *cmd_focus(int argc, char **argv) {
 if (config->reading || !config->active) {
  return cmd_results_new(CMD_DEFER, ((void*)0));
 }
 if (!root->outputs->length) {
  return cmd_results_new(CMD_INVALID,
    "Can't run this command while there's no outputs connected.");
 }
 struct sway_node *node = config->handler_context.node;
 struct sway_container *container = config->handler_context.container;
 struct sway_workspace *workspace = config->handler_context.workspace;
 struct sway_seat *seat = config->handler_context.seat;
 if (node->type < N_WORKSPACE) {
  return cmd_results_new(CMD_FAILURE,
   "Command 'focus' cannot be used above the workspace level");
 }

 if (argc == 0 && container) {
  if (container_is_scratchpad_hidden(container)) {
   root_scratchpad_show(container);
  }
  seat_set_focus_container(seat, container);
  seat_consider_warp_to_focus(seat);
  container_raise_floating(container);
  return cmd_results_new(CMD_SUCCESS, ((void*)0));
 }

 if (strcmp(argv[0], "floating") == 0) {
  return focus_mode(workspace, seat, 1);
 } else if (strcmp(argv[0], "tiling") == 0) {
  return focus_mode(workspace, seat, 0);
 } else if (strcmp(argv[0], "mode_toggle") == 0) {
  bool floating = container && container_is_floating_or_child(container);
  return focus_mode(workspace, seat, !floating);
 }

 if (strcmp(argv[0], "output") == 0) {
  argc--; argv++;
  return focus_output(seat, argc, argv);
 }

 if (strcasecmp(argv[0], "parent") == 0) {
  return focus_parent();
 }
 if (strcasecmp(argv[0], "child") == 0) {
  return focus_child();
 }

 enum wlr_direction direction = 0;
 bool descend = 1;
 if (!parse_direction(argv[0], &direction)) {
  if (!get_direction_from_next_prev(container, seat, argv[0], &direction)) {
   return cmd_results_new(CMD_INVALID,
    "Expected 'focus <direction|next|prev|parent|child|mode_toggle|floating|tiling>' "
    "or 'focus output <direction|name>'");
  } else if (argc == 2 && strcasecmp(argv[1], "sibling") == 0) {
   descend = 0;
  }
 }

 if (!direction) {
  return cmd_results_new(CMD_SUCCESS, ((void*)0));
 }

 if (node->type == N_WORKSPACE) {

  struct sway_output *new_output =
   output_get_in_direction(workspace->output, direction);
  if (!new_output) {
   return cmd_results_new(CMD_SUCCESS, ((void*)0));
  }

  struct sway_node *node =
   get_node_in_output_direction(new_output, direction);
  seat_set_focus(seat, node);
  seat_consider_warp_to_focus(seat);
  return cmd_results_new(CMD_SUCCESS, ((void*)0));
 }

 if (!sway_assert(container, "Expected container to be non null")) {
  return cmd_results_new(CMD_FAILURE, "");
 }
 struct sway_node *next_focus = ((void*)0);
 if (container_is_floating(container)) {
  next_focus = node_get_in_direction_floating(container, seat, direction);
 } else {
  next_focus = node_get_in_direction_tiling(container, seat, direction, descend);
 }
 if (next_focus) {
  seat_set_focus(seat, next_focus);
  seat_consider_warp_to_focus(seat);

  if (next_focus->type == N_CONTAINER) {
   container_raise_floating(next_focus->sway_container);
  }
 }

 return cmd_results_new(CMD_SUCCESS, ((void*)0));
}
