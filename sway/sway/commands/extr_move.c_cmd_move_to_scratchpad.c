
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sway_workspace {int layout; TYPE_1__* tiling; } ;
struct sway_node {scalar_t__ type; } ;
struct sway_container {scalar_t__ workspace; int scratchpad; struct sway_container* parent; } ;
struct cmd_results {int dummy; } ;
struct TYPE_5__ {struct sway_workspace* workspace; struct sway_container* container; struct sway_node* node; } ;
struct TYPE_6__ {TYPE_2__ handler_context; } ;
struct TYPE_4__ {scalar_t__ length; } ;


 int CMD_INVALID ;
 int CMD_SUCCESS ;
 int L_HORIZ ;
 scalar_t__ N_WORKSPACE ;
 struct cmd_results* cmd_results_new (int ,char*) ;
 TYPE_3__* config ;
 scalar_t__ container_is_floating_or_child (struct sway_container*) ;
 int root_scratchpad_add_container (struct sway_container*,int *) ;
 int root_scratchpad_hide (struct sway_container*) ;
 struct sway_container* workspace_wrap_children (struct sway_workspace*) ;

__attribute__((used)) static struct cmd_results *cmd_move_to_scratchpad(void) {
 struct sway_node *node = config->handler_context.node;
 struct sway_container *con = config->handler_context.container;
 struct sway_workspace *ws = config->handler_context.workspace;
 if (node->type == N_WORKSPACE && ws->tiling->length == 0) {
  return cmd_results_new(CMD_INVALID,
    "Can't move an empty workspace to the scratchpad");
 }
 if (node->type == N_WORKSPACE) {

  con = workspace_wrap_children(ws);
  ws->layout = L_HORIZ;
 }



 if (container_is_floating_or_child(con)) {
  while (con->parent) {
   con = con->parent;
  }
 }

 if (!con->scratchpad) {
  root_scratchpad_add_container(con, ((void*)0));
 } else if (con->workspace) {
  root_scratchpad_hide(con);
 }
 return cmd_results_new(CMD_SUCCESS, ((void*)0));
}
