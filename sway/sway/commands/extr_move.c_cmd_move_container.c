
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sway_node {scalar_t__ type; int destroying; int sway_container; struct sway_output* sway_output; struct sway_workspace* sway_workspace; } ;
struct sway_workspace {struct sway_node node; scalar_t__ name; struct sway_output* output; TYPE_1__* tiling; } ;
struct sway_seat {scalar_t__ prev_workspace_name; } ;
struct sway_output {struct sway_node node; } ;
struct sway_container {scalar_t__ fullscreen_mode; struct sway_node node; scalar_t__ scratchpad; scalar_t__ is_sticky; int y; int x; struct sway_workspace* workspace; struct sway_container* parent; } ;
struct cmd_results {int dummy; } ;
struct TYPE_6__ {struct sway_seat* seat; struct sway_container* container; struct sway_workspace* workspace; struct sway_node* node; } ;
struct TYPE_8__ {scalar_t__ auto_back_and_forth; TYPE_2__ handler_context; } ;
struct TYPE_7__ {scalar_t__ fullscreen_global; } ;
struct TYPE_5__ {scalar_t__ length; } ;


 int CMD_FAILURE ;
 int CMD_INVALID ;
 int CMD_SUCCESS ;
 int EXPECTED_AT_LEAST ;
 scalar_t__ FULLSCREEN_GLOBAL ;




 int arrange_node (int ) ;
 int arrange_root () ;
 int arrange_workspace (struct sway_workspace*) ;
 struct cmd_results* checkarg (int,char*,int ,int) ;
 struct cmd_results* cmd_move_to_scratchpad () ;
 struct cmd_results* cmd_results_new (int ,char*,...) ;
 TYPE_4__* config ;
 struct sway_container* container_find_mark (char*) ;
 scalar_t__ container_is_floating_or_child (struct sway_container*) ;
 scalar_t__ container_is_scratchpad_hidden (int ) ;
 int container_move_to_container (struct sway_container*,int ) ;
 int container_move_to_workspace (struct sway_container*,struct sway_workspace*) ;
 int container_reap_empty (struct sway_container*) ;
 char* expected_syntax ;
 int free (char*) ;
 int isdigit (char) ;
 char* join_args (char**,int) ;
 struct sway_output* node_get_output (struct sway_node*) ;
 int node_get_parent (struct sway_node*) ;
 scalar_t__ node_has_ancestor (struct sway_node*,struct sway_node*) ;
 struct sway_workspace* output_get_active_workspace (struct sway_output*) ;
 struct sway_output* output_in_direction (char*,struct sway_output*,int ,int ) ;
 TYPE_3__* root ;
 int root_scratchpad_show (struct sway_container*) ;
 struct sway_node* seat_get_focus (struct sway_seat*) ;
 struct sway_node* seat_get_focus_inactive (struct sway_seat*,struct sway_node*) ;
 struct sway_container* seat_get_focus_inactive_tiling (struct sway_seat*,struct sway_workspace*) ;
 int seat_set_focus (struct sway_seat*,struct sway_node*) ;
 int seat_set_raw_focus (struct sway_seat*,struct sway_node*) ;
 scalar_t__ strcasecmp (char*,char*) ;
 scalar_t__ strcmp (scalar_t__,char*) ;
 char* strdup (scalar_t__) ;
 int sway_assert (struct sway_workspace*,char*) ;
 struct sway_workspace* workspace_by_name (char*) ;
 struct sway_workspace* workspace_by_number (char*) ;
 int workspace_consider_destroy (struct sway_workspace*) ;
 struct sway_workspace* workspace_create (int *,char*) ;
 struct sway_output* workspace_get_initial_output (char*) ;
 struct sway_container* workspace_wrap_children (struct sway_workspace*) ;

__attribute__((used)) static struct cmd_results *cmd_move_container(bool no_auto_back_and_forth,
  int argc, char **argv) {
 struct cmd_results *error = ((void*)0);
 if ((error = checkarg(argc, "move container/window",
    EXPECTED_AT_LEAST, 2))) {
  return error;
 }

 struct sway_node *node = config->handler_context.node;
 struct sway_workspace *workspace = config->handler_context.workspace;
 struct sway_container *container = config->handler_context.container;
 if (node->type == 128) {
  if (workspace->tiling->length == 0) {
   return cmd_results_new(CMD_FAILURE,
     "Can't move an empty workspace");
  }
  container = workspace_wrap_children(workspace);
 }

 if (container->fullscreen_mode == FULLSCREEN_GLOBAL) {
  return cmd_results_new(CMD_FAILURE,
    "Can't move fullscreen global container");
 }

 struct sway_seat *seat = config->handler_context.seat;
 struct sway_container *old_parent = container->parent;
 struct sway_workspace *old_ws = container->workspace;
 struct sway_output *old_output = old_ws ? old_ws->output : ((void*)0);
 struct sway_node *destination = ((void*)0);


 if (strcasecmp(argv[0], "workspace") == 0) {

  struct sway_workspace *ws = ((void*)0);
  char *ws_name = ((void*)0);
  if (strcasecmp(argv[1], "next") == 0 ||
    strcasecmp(argv[1], "prev") == 0 ||
    strcasecmp(argv[1], "next_on_output") == 0 ||
    strcasecmp(argv[1], "prev_on_output") == 0 ||
    strcasecmp(argv[1], "current") == 0) {
   ws = workspace_by_name(argv[1]);
  } else if (strcasecmp(argv[1], "back_and_forth") == 0) {
   if (!(ws = workspace_by_name(argv[1]))) {
    if (seat->prev_workspace_name) {
     ws_name = strdup(seat->prev_workspace_name);
    } else {
     return cmd_results_new(CMD_FAILURE,
       "No workspace was previously active.");
    }
   }
  } else {
   if (strcasecmp(argv[1], "number") == 0) {

    if (argc < 3) {
     return cmd_results_new(CMD_INVALID, expected_syntax);
    }
    if (!isdigit(argv[2][0])) {
     return cmd_results_new(CMD_INVALID,
       "Invalid workspace number '%s'", argv[2]);
    }
    ws_name = join_args(argv + 2, argc - 2);
    ws = workspace_by_number(ws_name);
   } else {
    ws_name = join_args(argv + 1, argc - 1);
    ws = workspace_by_name(ws_name);
   }

   if (!no_auto_back_and_forth && config->auto_back_and_forth &&
     seat->prev_workspace_name) {

    if (old_ws && old_ws->name &&
      strcmp(old_ws->name, ws_name) == 0) {

     free(ws_name);
     ws_name = strdup(seat->prev_workspace_name);
     ws = workspace_by_name(ws_name);
    }
   }
  }
  if (!ws) {



   if (container->is_sticky && container_is_floating_or_child(container)) {
    struct sway_output *new_output =
     workspace_get_initial_output(ws_name);
    if (old_output == new_output) {
     free(ws_name);
     return cmd_results_new(CMD_FAILURE,
       "Can't move sticky container to another workspace "
       "on the same output");
    }
   }
   ws = workspace_create(((void*)0), ws_name);
  }
  free(ws_name);
  struct sway_container *dst = seat_get_focus_inactive_tiling(seat, ws);
  destination = dst ? &dst->node : &ws->node;
 } else if (strcasecmp(argv[0], "output") == 0) {
  struct sway_output *new_output = output_in_direction(argv[1],
    old_output, container->x, container->y);
  if (!new_output) {
   return cmd_results_new(CMD_FAILURE,
    "Can't find output with name/direction '%s'", argv[1]);
  }
  destination = seat_get_focus_inactive(seat, &new_output->node);
 } else if (strcasecmp(argv[0], "mark") == 0) {
  struct sway_container *dest_con = container_find_mark(argv[1]);
  if (dest_con == ((void*)0)) {
   return cmd_results_new(CMD_FAILURE,
     "Mark '%s' not found", argv[1]);
  }
  destination = &dest_con->node;
 } else {
  return cmd_results_new(CMD_INVALID, expected_syntax);
 }

 if (destination->type == 131 &&
   container_is_scratchpad_hidden(destination->sway_container)) {
  return cmd_move_to_scratchpad();
 }

 if (container->is_sticky && container_is_floating_or_child(container) &&
   old_output && node_has_ancestor(destination, &old_output->node)) {
  return cmd_results_new(CMD_FAILURE, "Can't move sticky "
    "container to another workspace on the same output");
 }

 struct sway_output *new_output = node_get_output(destination);
 struct sway_workspace *new_output_last_ws = old_output == new_output ?
  ((void*)0) : output_get_active_workspace(new_output);


 struct sway_node *focus = seat_get_focus(seat);


 if (container->scratchpad) {
  root_scratchpad_show(container);
 }
 switch (destination->type) {
 case 128:
  container_move_to_workspace(container, destination->sway_workspace);
  break;
 case 130: {
   struct sway_output *output = destination->sway_output;
   struct sway_workspace *ws = output_get_active_workspace(output);
   if (!sway_assert(ws, "Expected output to have a workspace")) {
    return cmd_results_new(CMD_FAILURE,
      "Expected output to have a workspace");
   }
   container_move_to_workspace(container, ws);
  }
  break;
 case 131:
  container_move_to_container(container, destination->sway_container);
  break;
 case 129:
  break;
 }


 struct sway_workspace *new_workspace =
  output_get_active_workspace(new_output);
 if (!sway_assert(new_workspace, "Expected output to have a workspace")) {
  return cmd_results_new(CMD_FAILURE,
    "Expected output to have a workspace");
 }
 if (new_output_last_ws && new_output_last_ws != new_workspace) {
  struct sway_node *new_output_last_focus =
   seat_get_focus_inactive(seat, &new_output_last_ws->node);
  seat_set_raw_focus(seat, new_output_last_focus);
 }


 if (focus == &container->node) {
  focus = ((void*)0);
  if (old_parent) {
   focus = seat_get_focus_inactive(seat, &old_parent->node);
  }
  if (!focus && old_ws) {
   focus = seat_get_focus_inactive(seat, &old_ws->node);
  }
 }
 seat_set_focus(seat, focus);


 if (old_parent) {
  container_reap_empty(old_parent);
 } else if (old_ws) {
  workspace_consider_destroy(old_ws);
 }


 if (root->fullscreen_global) {
  arrange_root();
 } else {
  if (old_ws && !old_ws->node.destroying) {
   arrange_workspace(old_ws);
  }
  arrange_node(node_get_parent(destination));
 }

 return cmd_results_new(CMD_SUCCESS, ((void*)0));
}
